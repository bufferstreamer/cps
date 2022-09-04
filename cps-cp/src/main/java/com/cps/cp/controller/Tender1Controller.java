package com.cps.cp.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Date;
import java.util.List;

import com.cps.audit.domain.AuditDocuments;
import com.cps.audit.service.IAuditDocumentsService;
import com.cps.common.utils.DateUtils;
import com.cps.common.utils.ShiroUtils;
import com.cps.cp.domain.QualificationReview;
import com.cps.cp.service.IQualificationReviewService;
import com.cps.common.utils.StringUtils;
import com.cps.common.utils.file.FileUtils;
import com.cps.common.utils.uuid.IdUtils;
import jdk.nashorn.internal.objects.Global;
import org.apache.poi.xwpf.usermodel.*;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.cps.common.annotation.Log;
import com.cps.common.enums.BusinessType;
import com.cps.cp.domain.Tender;
import com.cps.cp.service.ITenderService;
import com.cps.common.core.controller.BaseController;
import com.cps.common.core.domain.AjaxResult;
import com.cps.common.utils.poi.ExcelUtil;
import com.cps.common.core.page.TableDataInfo;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 招标Controller
 * 
 * @author wxf
 * @date 2022-08-16
 */
@Controller
@RequestMapping("/cp/tender1")
public class Tender1Controller extends BaseController
{
    private static final Logger logger = LoggerFactory.getLogger(Tender1Controller.class);
    private String prefix = "cp/tender1";

    @Autowired
    private ITenderService tenderService;

    @Autowired
    private IQualificationReviewService qualificationReviewService;

    @RequiresPermissions("cp:tender1:view")
    @GetMapping()
    public String tender1(ModelMap map)
    {
        boolean canQualificationReview=CanQualificationReview();
        map.put("canQualificationReview",canQualificationReview);
        if (canQualificationReview){
            List<Tender> list = tenderService.selectTender1List(null);
            System.out.println(list.size());
            boolean[] canPurchaseArr=new boolean[list.size()];
            for (int i=0;i<list.size();i++){
                String tenderId = list.get(i).getTenderId();
                QualificationReview review = qualificationReviewService.selectQualificationReviewByTenderIdAndSupplyId(tenderId, ShiroUtils.getUserId().toString());
                canPurchaseArr[i]=(review!=null&&review.getAuditStatus().equals("1"));
            }

            map.put("canPurchaseArr",canPurchaseArr);
        }
        return prefix + "/tender1";
    }

    /**
     * 查询招标列表
     */
    @RequiresPermissions("cp:tender1:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Tender tender)
    {
        startPage();
        List<Tender> list = tenderService.selectTender1List(tender);
        return getDataTable(list);
    }

    /**
     * 导出招标列表
     */
    @RequiresPermissions("cp:tender1:export")
    @Log(title = "招标", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Tender tender)
    {
        List<Tender> list = tenderService.selectTender1List(tender);
        ExcelUtil<Tender> util = new ExcelUtil<Tender>(Tender.class);
        return util.exportExcel(list, "招标数据");
//        for(Tender tender1 :list){
//            tender.getTenderDocument().replace("http://localhost:8081/cps/profile","D:/cps/uploadPath");
//            logger.info(tender1.getTenderDocument());
//        }
    }

    /**
     * 新增招标
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存招标
     */
    @RequiresPermissions("cp:tender1:add")
    @Log(title = "招标", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(Tender tender) throws IOException {
        tender.setBidNumber(1);
        tender.setTenderId(IdUtils.fastSimpleUUID().substring(0,22));
        tender.setCreateDatetime(DateUtils.dateTime(DateUtils.YYYY_MM_DD_HH_MM_SS,DateUtils.dateTimeNow(DateUtils.YYYY_MM_DD_HH_MM_SS)));
//        String readFilePath = "G:\\Code\\Test\\zhaobiao.docx";
        logger.info(tender.getTenderDocument());
        String readFilePath = tender.getTenderDocument().replace("http://localhost/cps/profile","D:/cps/uploadPath");;
        File file = new File(readFilePath);
        FileInputStream fileInputStream = new FileInputStream(readFilePath);

        XWPFDocument doc = new XWPFDocument(fileInputStream);

//        List<XWPFTable> tables = doc.getTables();
        List<XWPFParagraph> paras = doc.getParagraphs();
        XWPFParagraph firstParas = paras.get(0);
        tender.setProjectName(firstParas.getParagraphText());
        for (XWPFParagraph graph:paras) {
            String t = graph.getParagraphText();
            if(t.startsWith("联系人：")){
                tender.setContact(t.replace("联系人：","").trim());
            }
            if(t.startsWith("联系电话：")){
                tender.setPhoneOfContact(t.replace("联系电话：","").trim());
            }
            if(t.startsWith("资质审核截止时间：")){
                tender.setDealineForQualificationReview(DateUtils.dateTime(DateUtils.YYYY_MM_DD,t.replace("资质审核截止时间：","").trim()));
            }
            if(t.startsWith("竞标开始时间：")){
                tender.setBidStartTime(DateUtils.dateTime(DateUtils.YYYY_MM_DD,t.replace("竞标开始时间：","").trim()));
            }
            if(t.startsWith("竞标结束时间：")){
                tender.setBidEndTime(DateUtils.dateTime(DateUtils.YYYY_MM_DD,t.replace("竞标结束时间：","").trim()));
            }
            if(t.startsWith("公布时间：")){
                tender.setPublishTime(DateUtils.dateTime(DateUtils.YYYY_MM_DD,t.replace("公布时间：","").trim()));
            }

        }
//        for(XWPFTable table : tables){
//
//            List<XWPFTableRow> rows = table.getRows();
//            for(int i =1;i<=2;i++){
//                XWPFTableRow row = rows.get(i);
//                List<XWPFTableCell> cells = row.getTableCells();
//                if(i==1){
//                    tender.setContact(cells.get(1).getText());
//                }
//                if(i==2){
//                    tender.setPhoneOfContact(cells.get(1).getText());
//                }
////                for(XWPFTableCell cell :cells){
////                    String text =cell.getText();
////                    System.out.println(text);
////                }
////                if(i==4){
////                    tender.setDealineForQualificationReview(DateUtils.dateTime(DateUtils.YYYY_MM_DD,cells.get(1).getText()));
////                }
////                if(i==5){
////                    tender.setBidStartTime(DateUtils.dateTime(DateUtils.YYYY_MM_DD,cells.get(1).getText()));
////                }
////                if(i==6){
////                    tender.setBidEndTime(DateUtils.dateTime(DateUtils.YYYY_MM_DD,cells.get(1).getText()));
////                }
////                if(i==7){
////                    tender.setPublishTime(DateUtils.dateTime(DateUtils.YYYY_MM_DD,cells.get(1).getText()));
////                }
//            }
//        }
        fileInputStream.close();
        return toAjax(tenderService.insertTender(tender));
    }

    /**
     * 修改招标
     */
    @RequiresPermissions("cp:tender1:edit")
    @GetMapping("/edit/{tenderId}")
    public String edit(@PathVariable("tenderId") String tenderId, ModelMap mmap)
    {
        Tender tender = tenderService.selectTenderByTenderId(tenderId);
        mmap.put("tender", tender);
        return prefix + "/edit";
    }

    /**
     * 修改保存招标
     */
    @RequiresPermissions("cp:tender1:edit")
    @Log(title = "招标", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(Tender tender)
    {
        return toAjax(tenderService.updateTender(tender));
    }


    /**
     * 删除招标
     */
    @RequiresPermissions("cp:tender1:remove")
    @Log(title = "招标", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(tenderService.deleteTenderByTenderIds(ids));
    }

    // 查询详细方法
    @RequestMapping("/detail/{tenderId}")
    public String detail(@PathVariable("tenderId") String tenderId, ModelMap mmap)
    {
        mmap.put("tender", tenderService.selectTenderByTenderId(tenderId));
        return prefix + "/detail";
    }

    @RequestMapping("/qualificationReview/{tenderId}")
    public String qualificationReview(@PathVariable("tenderId") String tenderId, ModelMap mmap)
    {
        QualificationReview review = qualificationReviewService.selectQualificationReviewByTenderIdAndSupplyId(tenderId, ShiroUtils.getUserId().toString());

        if (review==null){
            mmap.put("tenderId", tenderId);
            return "cp/qualificationReview/add";
        }
        else {
            mmap.put("qualificationReview", review);
            return "cp/qualificationReview/update";
        }
    }

    @Autowired
    private IAuditDocumentsService mAuditDocumentsService;

    private boolean CanQualificationReview() {
        List<AuditDocuments> tempList = mAuditDocumentsService.selectAuditDocumentsByUserId(ShiroUtils.getUserId());
        if (tempList == null) {
            return false;
        }
        if (tempList.size() < 2) {
            return false;
        }

        for (AuditDocuments temp : tempList
        ) {
            if (temp.getAuditStatus().equals("1"))
                return false;
        }

        return true;
    }

}
