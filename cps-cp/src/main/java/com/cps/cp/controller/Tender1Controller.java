package com.cps.cp.controller;

import java.util.List;

import com.cps.audit.domain.AuditDocuments;
import com.cps.audit.service.IAuditDocumentsService;
import com.cps.common.utils.DateUtils;
import com.cps.common.utils.ShiroUtils;
import com.cps.cp.domain.QualificationReview;
import com.cps.cp.service.IQualificationReviewService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
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
    public AjaxResult addSave(Tender tender)
    {
        tender.setTenderId("7835749267894163340175");
        tender.setCreateDatetime(DateUtils.dateTime(DateUtils.YYYY_MM_DD_HH_MM_SS,DateUtils.dateTimeNow(DateUtils.YYYY_MM_DD_HH_MM_SS)));
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
