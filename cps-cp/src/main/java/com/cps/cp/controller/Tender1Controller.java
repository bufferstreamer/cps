package com.cps.cp.controller;

import com.cps.audit.domain.AuditDocuments;
import com.cps.audit.domain.BusinessLicenseInfo;
import com.cps.audit.domain.SupplierLicenseInfo;
import com.cps.audit.service.IAuditDocumentsService;
import com.cps.audit.service.IBusinessLicenseInfoService;
import com.cps.audit.service.ISupplierLicenseInfoService;
import com.cps.bid.domain.CentralizedPurchaseRecord;
import com.cps.bid.service.ICentralizedPurchaseRecordService;
import com.cps.common.annotation.Log;
import com.cps.common.constant.Constants;
import com.cps.common.core.controller.BaseController;
import com.cps.common.core.domain.AjaxResult;
import com.cps.common.core.domain.entity.SysUser;
import com.cps.common.core.page.TableDataInfo;
import com.cps.common.enums.BusinessType;
import com.cps.common.utils.DateUtils;
import com.cps.common.utils.ShiroUtils;
import com.cps.common.utils.poi.ExcelUtil;
import com.cps.common.utils.uuid.Seq;
import com.cps.cp.domain.QualificationReview;
import com.cps.cp.domain.QualificationReviewView;
import com.cps.cp.domain.Tender;
import com.cps.cp.service.IQualificationReviewService;
import com.cps.cp.service.ITenderService;
import com.cps.credit.domain.UserCredit;
import com.cps.credit.service.IUserCreditService;
import com.cps.product.domain.ProductIndexInfo;
import com.cps.product.service.IProductIndexInfoService;
import com.cps.system.service.ISysRoleService;
import com.cps.system.service.ISysUserService;
import org.apache.poi.xwpf.usermodel.XWPFDocument;
import org.apache.poi.xwpf.usermodel.XWPFParagraph;
import org.apache.poi.xwpf.usermodel.XWPFTable;
import org.apache.poi.xwpf.usermodel.XWPFTableRow;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

/**
 * 招标Controller
 *
 * @author wxf
 * @date 2022-08-16
 */
@Controller
@RequestMapping("/cp/tender1")
public class Tender1Controller extends BaseController {
    private static final Logger logger = LoggerFactory.getLogger(Tender1Controller.class);
    private String prefix = "cp/tender1";

    @Autowired
    private ITenderService tenderService;

    @Autowired
    private IQualificationReviewService qualificationReviewService;

    @Autowired
    private IProductIndexInfoService productIndexInfoService;
    @Autowired
    private IAuditDocumentsService mAuditDocumentsService;
    @Autowired
    private ICentralizedPurchaseRecordService centralizedPurchaseRecordService;

    @Autowired
    private IUserCreditService userCreditService;

    @Resource
    private ISysUserService sysUserService;

    @Value("${cps.profile}")
    private String profile;

    @RequiresPermissions("cp:tender1:view")
    @GetMapping()
    public String tender1(ModelMap map) {
        //返回信用评分数据
        if(userCreditService.selectUserCreditByUserId(ShiroUtils.getUserId())!=null){
            UserCredit userCredit = userCreditService.selectUserCreditByUserId(ShiroUtils.getUserId());
            map.put("userCreditScore",userCredit.getCreditScore());
        }else{
            map.put("userCreditScore",Constants.CREDIT_SCORE_FULL);
        }
        map.put("CREDIT_SCORE_MAIN", Constants.CREDIT_SCORE_MAIN);
        //返回用户身份信息
        map.put("isNotSupplier",!sysUserService.isSupplier(ShiroUtils.getUserId()));

        return prefix + "/tender1";
    }

    /**
     * 查询招标列表
     */
    @RequiresPermissions("cp:tender1:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Tender tender) {
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
    public AjaxResult export(Tender tender) {
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
    public String add() {
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
        // 获取当前的用户信息
        SysUser currentUser = ShiroUtils.getSysUser();
        tender.setBidNumber(1);
//        tender.setTenderId(IdUtils.fastSimpleUUID().substring(0, 22));
        tender.setGxsId(currentUser.getUserId());
        tender.setTenderId("zb"+ Seq.getId());
        tender.setCreateDatetime(DateUtils.dateTime(DateUtils.YYYY_MM_DD_HH_MM_SS, DateUtils.dateTimeNow(DateUtils.YYYY_MM_DD_HH_MM_SS)));
//        String readFilePath = "G:\\Code\\Test\\zhaobiao.docx";
        logger.info(tender.getTenderDocument());
        String readFilePath = tender.getTenderDocument().replace("http://localhost/cps/profile", profile);
        File file = new File(readFilePath);
        FileInputStream fileInputStream = new FileInputStream(readFilePath);

        XWPFDocument doc = new XWPFDocument(fileInputStream);

//        List<XWPFTable> tables = doc.getTables();
        List<XWPFParagraph> paras = doc.getParagraphs();
        XWPFParagraph firstParas = paras.get(0);
        tender.setProjectName(firstParas.getParagraphText());
        for (XWPFParagraph graph : paras) {
            String t = graph.getParagraphText();
            if (t.startsWith("联系人：")) {
                tender.setContact(t.replace("联系人：", "").trim());
            }
            if (t.startsWith("联系电话：")) {
                tender.setPhoneOfContact(t.replace("联系电话：", "").trim());
            }
            if (t.startsWith("资质审核截止时间：")) {
                tender.setDealineForQualificationReview(DateUtils.dateTime(DateUtils.YYYY_MM_DD, t.replace("资质审核截止时间：", "").trim()));
            }
            if (t.startsWith("竞标开始时间：")) {
                tender.setBidStartTime(DateUtils.dateTime(DateUtils.YYYY_MM_DD, t.replace("竞标开始时间：", "").trim()));
            }
            if (t.startsWith("竞标结束时间：")) {
                tender.setBidEndTime(DateUtils.dateTime(DateUtils.YYYY_MM_DD, t.replace("竞标结束时间：", "").trim()));
            }
            if (t.startsWith("公布时间：")) {
                tender.setPublishTime(DateUtils.dateTime(DateUtils.YYYY_MM_DD, t.replace("公布时间：", "").trim()));
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
    public String edit(@PathVariable("tenderId") String tenderId, ModelMap mmap) {
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
    public AjaxResult editSave(Tender tender) {
        return toAjax(tenderService.updateTender(tender));
    }

    /**
     * 删除招标
     */
    @RequiresPermissions("cp:tender1:remove")
    @Log(title = "招标", businessType = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        return toAjax(tenderService.deleteTenderByTenderIds(ids));
    }

    // 查询详细方法
    @RequestMapping("/detail/{tenderId}")
    public String detail(@PathVariable("tenderId") String tenderId, ModelMap mmap) {
        mmap.put("tender", tenderService.selectTenderByTenderId(tenderId));
        return prefix + "/detail";
    }

    // 查询经营范围
    @RequestMapping("/range/")
    public String queryTender() {
        return prefix + "/dept";
    }

    @RequestMapping("/qualificationReview/{tenderId}")
    public String qualificationReview(@PathVariable("tenderId") String tenderId, ModelMap mmap) {
        QualificationReview review = new QualificationReview();
        review.setTenderId(tenderId);
        review.setSupplyId(ShiroUtils.getUserId());
        List<QualificationReviewView> list = qualificationReviewService.selectQualificationReviewList(review);
        if (list.size()==0) {
            mmap.put("tenderId", tenderId);
            return "cp/qualificationReview/add";
        } else {
            mmap.put("qualificationReview", list.get(0));
            return "cp/qualificationReview/update";
        }
    }

    /**
     * 比质比价
     */
    @GetMapping("/qpcs/{tenderId}")
    public String qpcs(@PathVariable("tenderId") String tenderId, ModelMap mmap) {
        Tender tender = tenderService.selectTenderByTenderId(tenderId);
//        mmap.put("tender", tender);
        String readFilePath = tender.getTenderDocument().replace("http://localhost/cps/profile", profile);
//        String readFilePath = "G:/Code/Test/zhaobiao3.docx";

//        FileInputStream fileInputStream = new FileInputStream(readFilePath);
        FileInputStream fileInputStream = null;
        try {
            fileInputStream = new FileInputStream(readFilePath);
        } catch (FileNotFoundException e) {
        //找不到招标文件返回错误信息
//            e.printStackTrace();
            mmap.put("errorMsg","未找到招标文件");
            return prefix + "/qpcs";
        }


//        XWPFDocument doc = new XWPFDocument(fileInputStream);
        XWPFDocument doc = null;
        try {
            doc = new XWPFDocument(fileInputStream);
        } catch (IOException e) {
//            e.printStackTrace();
            mmap.put("errorMsg","未找到招标文件,请联系管理员！");
            return prefix + "/qpcs";
        }

        List<XWPFTable> tables = doc.getTables();
        HashMap<String, ArrayList<String>> map = new HashMap<String, ArrayList<String>>();
        ArrayList<String> productNameList = new ArrayList<>();

        int productNumber = 0;
        for (XWPFTable table : tables) {
            List<XWPFTableRow> rows = table.getRows();
            int productNum = (rows.size() - 2) / 10;
            productNumber = productNum;
            for (int i = 0; i < productNum; i++) {
                ArrayList<String> arr = new ArrayList<>();
                int productIndex = 2 + i * 10;
                for (int j = 0; j < 10; j++) {
                    XWPFTableRow row = rows.get(productIndex + j);
                    if (row.getTableCells().get(1).getText().equals("")) {
                        break;
                    } else {
                        arr.add(row.getTableCells().get(1).getText());
                    }
                }
//                arr.add(rows.get(productIndex).getTableCells().get(5).getText());
                String productName = rows.get(i * 10 + 2).getTableCells().get(0).getText();
                productNameList.add(productName);
                if(arr.size()==0){
                    arr.add("产品质量");
                }
                arr.add("价格");//手动添加价格项
                arr.add("供应商信用");
                map.put(productName, arr);
            }
        }

        ArrayList<ArrayList> targetListList = new ArrayList<>();
        for (String productN : productNameList) {
            targetListList.add(map.get(productN));
        }
        //获取招标模版数据
        mmap.put("productNameList", productNameList);
        mmap.put("targetListList", targetListList);

        List<CentralizedPurchaseRecord> centralizedPurchaseRecordList = tenderService.selectCentralizedPurchaseRecordList(tenderId);

        //没有投标文件，返回提示信息
        if(centralizedPurchaseRecordList.size()==0){
            mmap.put("errorMsg","暂无供应商竞标，请等待……");
            return prefix + "/qpcs";
        }

        ArrayList<HashMap<String, ArrayList>> providerInfoDictList = new ArrayList<>();

        for (int i = 0; i < productNumber; i++) {
            HashMap<String, ArrayList> gysDataMap = new HashMap<>();
            for (CentralizedPurchaseRecord centralizedPurchaseRecord : centralizedPurchaseRecordList) {
                String readCPRFilePath = centralizedPurchaseRecord.getTenderDocument().replace("http://localhost/cps/profile", profile);

//                FileInputStream fileInputStream1 = new FileInputStream(readCPRFilePath);
                FileInputStream fileInputStream1;
                try {
                    fileInputStream1 = new FileInputStream(readCPRFilePath);
                } catch (FileNotFoundException e) {
                    //没有投标文件，返回提示信息
//                    e.printStackTrace();
                    mmap.put("errorMsg","供应商竞标文件缺失，请联系管理员！");
                    return prefix + "/qpcs";
                }


//                XWPFDocument doc1 = new XWPFDocument(fileInputStream1);
                XWPFDocument doc1 = null;
                try {
                    doc1 = new XWPFDocument(fileInputStream1);
                } catch (IOException e) {
                    //没有投标文件，返回提示信息
//                    e.printStackTrace();
                    mmap.put("errorMsg","供应商竞标文件缺失，请联系管理员！");
                    return prefix + "/qpcs";
                }

                List<XWPFParagraph> paras1 = doc1.getParagraphs();
                String gysName = "";
                for (XWPFParagraph graph : paras1) {
                    String t = graph.getParagraphText();
                    if (t.startsWith("供应商名称")) {
                        gysName = t.replace("供应商名称：", "").trim();
                    }
                }
                ArrayList indexDataList = new ArrayList();
                List<XWPFTable> tables1 = doc1.getTables();
                for (XWPFTable table : tables1) {
                    List<XWPFTableRow> rows = table.getRows();


                    int productIndex1 = 2 + i * 10;
                    for (int k = 0; k < 10; k++) {
                        XWPFTableRow row = rows.get(productIndex1 + k);
                        if (row.getTableCells().get(1).getText().equals("")) {
                            break;
                        } else {
                            double tempValue = Double.parseDouble(row.getTableCells().get(2).getText());
                            indexDataList.add(tempValue);
                        }
                    }
                    if(indexDataList.size()==0){
                        indexDataList.add(1);
                    }
                    //添加价格和供应商信用评分
                    XWPFTableRow rowPrice = rows.get(productIndex1);
                    double tempValue = Double.parseDouble(rowPrice.getTableCells().get(3).getText());
                    indexDataList.add(tempValue);
                    UserCredit userCredit;
                    try{
                        userCredit = userCreditService.selectUserCreditByUserId(centralizedPurchaseRecord.getSupplierId());
                        indexDataList.add(userCredit.getCreditScore());
                    }catch (NullPointerException e){
                        mmap.put("errorMsg","竞标文件有误，请联系管理员！");
                        return prefix + "/qpcs";
                    }
//                arr.add(rows.get(productIndex).getTableCells().get(5).getText());
//                        String productName = rows.get(i * 10 + 2).getTableCells().get(0).getText();

                }
                gysDataMap.put(gysName, indexDataList);
            }
            providerInfoDictList.add(gysDataMap);
        }
        mmap.put("providerInfoDictList", providerInfoDictList);
        System.out.println(providerInfoDictList);
        // 获取各个指标的排序信息
        ArrayList<ArrayList<String>> indexSortList = new ArrayList<>();
        for (int i = 0; i < productNameList.size(); ++i) {
            List<String> targetList = targetListList.get(i);
            ArrayList<String> indexSort = new ArrayList<>();
            String productName = productNameList.get(i);
            for (int j = 0; j < targetList.size() - 2; ++j) {// 数据库没有价格和供应商信用评分等字段，避免查询该项
                ProductIndexInfo productIndexInfo = productIndexInfoService.selectIndexSortByProductNameAndIndexName(productName, targetList.get(j));
                if(productIndexInfo!=null){
                    String curSort = productIndexInfo.getIndexStatus();
                    indexSort.add(curSort);
                }
            }
            if(indexSort.size()==0){
                indexSort.add("1");
            }
            indexSort.add("2");//手动添加价格指标排序信息
            indexSort.add("1");//手动添加供应商信用评分排序信息
            indexSortList.add(indexSort);
        }
        mmap.put("indexSortList", indexSortList);
        return prefix + "/qpcs";
    }

    //资质审核
    @PostMapping("canQualificationReview")
    @ResponseBody
    public boolean CanQualificationReview(String tenderId) {
        List<AuditDocuments> tempList = mAuditDocumentsService.selectAuditDocumentsByUserId(ShiroUtils.getUserId());
        if (tempList == null) {
            return false;
        }
        if (tempList.size() < 2) {
            return false;
        }

        for (AuditDocuments temp : tempList
        ) {
            if (temp.getAuditStatus().equals("1")) {
                return false;
            }
        }

        //审核营业执照
        List<String> scopeList = Arrays.asList(GetBusinessScope());
        Tender tender=tenderService.selectTenderByTenderId(tenderId);
        if (scopeList.contains(tender.getDeptName())){
            return false;
        }

        QualificationReview review = new QualificationReview();
        review.setTenderId(tenderId);
        review.setSupplyId(ShiroUtils.getUserId());
        List<QualificationReviewView> reviewList = qualificationReviewService.selectQualificationReviewList(review);
        if (reviewList.size()>0 && reviewList.get(0).getAuditStatus().equals("1")) {
            return false;
        }

        return true;
    }

    @Autowired
    private IBusinessLicenseInfoService businessLicenseInfoService;
    @Autowired
    private ISupplierLicenseInfoService supplierLicenseInfoService;

    //返回营业范围
    private String[] GetBusinessScope(){
        List<AuditDocuments> tempList = mAuditDocumentsService.selectAuditDocumentsByUserId(ShiroUtils.getUserId());

        for (AuditDocuments temp : tempList)
        {
            BusinessLicenseInfo info1=businessLicenseInfoService.selectBusinessLicenseInfoByBusinessAuditDocumentId(temp.getChecklistId());
            if (info1!=null){
                return info1.getBusinessScope().split(":")[1].split(",");
            }
            SupplierLicenseInfo info2=supplierLicenseInfoService.selectSupplierLicenseInfoByChecklistId(temp.getChecklistId());
            if (info2!=null){
                return info2.getBusinessScope().split(":")[1].split(",");
            }
        }

        return new String[0];
    }

    @PostMapping("canPurchase")
    @ResponseBody
    public boolean CanPurchase(String tenderId) {
        List<AuditDocuments> tempList = mAuditDocumentsService.selectAuditDocumentsByUserId(ShiroUtils.getUserId());
        if (tempList == null) {
            return false;
        }
        if (tempList.size() < 2) {
            return false;
        }

        for (AuditDocuments temp : tempList
        ) {
            if (temp.getAuditStatus().equals("1")) {
                return false;
            }
        }

        //审核投标次数
        CentralizedPurchaseRecord centralizedPurchaseRecord =new CentralizedPurchaseRecord();
        centralizedPurchaseRecord.setSupplierId(ShiroUtils.getUserId());
        centralizedPurchaseRecord.setTenderId(tenderId);
        List<CentralizedPurchaseRecord> purchaseRecordList = centralizedPurchaseRecordService.selectCentralizedPurchaseRecordList(centralizedPurchaseRecord);

        Tender tender = tenderService.selectTenderByTenderId(tenderId);
        if (purchaseRecordList.size() >= tender.getBidNumber()) {
            return false;
        }

        //审核营业执照
        List<String> scopeList = Arrays.asList(GetBusinessScope());
        if (scopeList.contains(tender.getDeptName())){
            return true;
        }

        QualificationReview review = new QualificationReview();
        review.setTenderId(tenderId);
        review.setSupplyId(ShiroUtils.getUserId());
        List<QualificationReviewView> reviewList = qualificationReviewService.selectQualificationReviewList(review);
        if (reviewList.size()>0&&reviewList.get(0).getAuditStatus().equals("1")){
            return true;
        }

        return false;
    }

    /**
     * 通知
     */
    @RequiresPermissions("cp:tender1:inform")
    @GetMapping("/inform/{tenderId}")
    public String inform(@PathVariable("tenderId") String tenderId, ModelMap mmap, HttpServletRequest request) {
//        Tender tender = tenderService.selectTenderByTenderId(tenderId);
//        mmap.put("tender", tender);
        return prefix + "/inform";
    }

    @RequiresPermissions("cp:tender1:inform")
    @PostMapping("/noticeByEmail")
    @Log(title = "邮件通知", businessType = BusinessType.INSERT)
    @ResponseBody
    public AjaxResult inform(HttpServletRequest request, Long[] deptId) {
        String informWay = request.getParameter("informWay");
        String subject = request.getParameter("informSubject");
        String notice = request.getParameter("informContent");
        //给供应商发送email
        if (informWay.equals("1") ||informWay.equals("3")){
            return AjaxResult.success(sysUserService.noticeByMail(subject,notice,deptId,getLoginName()));
        }
        return AjaxResult.error();
    }
}
