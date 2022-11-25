package com.cps.web.controller.bid;

import com.cps.audit.domain.SupplierLicenseInfo;
import com.cps.audit.service.ISupplierLicenseInfoService;
import com.cps.bid.domain.CentralizedPurchaseRecord;
import com.cps.bid.service.ICentralizedPurchaseRecordService;
import com.cps.common.annotation.Log;
import com.cps.common.core.controller.BaseController;
import com.cps.common.core.domain.AjaxResult;
import com.cps.common.core.page.TableDataInfo;
import com.cps.common.enums.BusinessType;
import com.cps.common.utils.poi.ExcelUtil;
import com.cps.cp.domain.Tender;
import com.cps.cp.service.ITenderService;
import com.cps.product.domain.ProductIndexInfo;
import com.cps.product.service.IProductIndexInfoService;
import io.swagger.annotations.*;
import org.apache.poi.xwpf.usermodel.XWPFDocument;
import org.apache.poi.xwpf.usermodel.XWPFParagraph;
import org.apache.poi.xwpf.usermodel.XWPFTable;
import org.apache.poi.xwpf.usermodel.XWPFTableRow;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Date;
import java.util.List;

/**
 * 集中采购记录Controller
 *
 * @author cps
 * @date 2022-09-03
 */
@Api("投标记录管理")
@Controller
@RequestMapping("/bid/tender1")
public class CentralizedPurchaseRecordController extends BaseController {
    private String prefix = "bid/tender1";

    @Autowired
    private ICentralizedPurchaseRecordService centralizedPurchaseRecordService;

    @Autowired
    private ITenderService tenderService;

    @Autowired
    private IProductIndexInfoService productIndexInfoService;

    @RequiresPermissions("bid:tender1:view")
    @GetMapping()
    public String tender1() {
        return prefix + "/tender1";
    }

    @Value("${cps.profile}")
    private String profile;

    /**
     * 查询集中采购记录列表
     */
    @ApiOperation("获取投标记录列表")
    @RequiresPermissions("bid:tender1:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(CentralizedPurchaseRecord centralizedPurchaseRecord) {
        startPage();
        List<CentralizedPurchaseRecord> list=centralizedPurchaseRecordService.selectCentralizedPurchaseRecordList(centralizedPurchaseRecord);
        return getDataTable(list);
    }

    /**
     * 导出集中采购记录列表
     */
    @ApiOperation("导出投标记录")
    @RequiresPermissions("bid:tender1:export")
    @Log(title = "集中采购记录", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(CentralizedPurchaseRecord centralizedPurchaseRecord) {
        List<CentralizedPurchaseRecord> list = centralizedPurchaseRecordService.selectCentralizedPurchaseRecordList(centralizedPurchaseRecord);
        ExcelUtil<CentralizedPurchaseRecord> util = new ExcelUtil<CentralizedPurchaseRecord>(CentralizedPurchaseRecord.class);
        return util.exportExcel(list, "集中采购记录数据");
    }

    /**
     * 新增集中采购记录
     */
    @GetMapping("/add/{tenderId}")
    public String add(@PathVariable("tenderId") String tenderId, ModelMap map) {
        map.put("tenderId", tenderId);
        return prefix + "/add";
    }

    /**
     * 新增保存集中采购记录
     */
    @ApiOperation("新增投标记录")
    @RequiresPermissions("bid:tender1:add")
    @Log(title = "集中采购记录", businessType = BusinessType.INSERT)
//    @ApiImplicitParams({
//            @ApiImplicitParam(name = "centralizedPurchaseRecordId", value = "主键", dataType = "String", dataTypeClass = String.class),
//            @ApiImplicitParam(name = "tenderId", value = "标书ID", dataType = "String", dataTypeClass = String.class),
//            @ApiImplicitParam(name = "supplierId", value = "供应商ID", dataType = "Long", dataTypeClass = Long.class),
//            @ApiImplicitParam(name = "tenderDocument", value = "投标文件存储信息", dataType = "String", dataTypeClass = String.class),
//            @ApiImplicitParam(name = "centralizedPurchaseRecordTime", value = "投标时间", dataType = "Date", dataTypeClass = Date.class),
//            @ApiImplicitParam(name = "isBid", value = "是否中标", dataType = "String", dataTypeClass = String.class)
//    })
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(CentralizedPurchaseRecord centralizedPurchaseRecord) throws IOException {
        //1. 获取招标和投标的标书文件的信息表格
        //1.1 获取招标文件的信息表格对象
        String tenderReadCPRFilePath = tenderService.selectTenderByTenderId(centralizedPurchaseRecord.getTenderId()).getTenderDocument().replace("http://localhost/cps/profile", profile);
        FileInputStream tenderFileInputStream = new FileInputStream(tenderReadCPRFilePath);
        XWPFDocument tenderDoc = new XWPFDocument(tenderFileInputStream);
        List<XWPFTable> tenderTables = tenderDoc.getTables();
        XWPFTable tenderTable = tenderTables.get(0);
        List<XWPFTableRow> tenderRows = tenderTable.getRows();
        //1.1 获取竞标文件的信息表格对象
        String bidReadCPRFilePath = centralizedPurchaseRecord.getTenderDocument().replace("http://localhost/cps/profile", profile);
        FileInputStream fileInputStream1 = new FileInputStream(bidReadCPRFilePath);
        XWPFDocument bidDoc = new XWPFDocument(fileInputStream1);
        List<XWPFTable> bidTables = bidDoc.getTables();
        XWPFTable bidTable = bidTables.get(0);
        List<XWPFTableRow> rows = bidTable.getRows();
        //2. 按产品检测各项指标是否满足要求
        int productNumber = (rows.size() - 2) / 10;
        String errorMsg = "";
//        List<String> errorMsgData = new ArrayList<>();
        for (int i = 0; i < productNumber; i++) {
            String productName = rows.get(i * 10 + 2).getTableCells().get(0).getText();
            int productIndex1 = 2 + i * 10;
            for (int k = 0; k < 10; k++) {
                XWPFTableRow row = rows.get(productIndex1 + k);
                if (row.getTableCells().get(1).getText().equals("")) {
                    break;
                } else {
                    String indexName = row.getTableCells().get(1).getText();
                    double tempValue = Double.parseDouble(row.getTableCells().get(2).getText());
                    ProductIndexInfo productIndexInfo = productIndexInfoService.selectIndexSortByProductNameAndIndexName(productName,indexName);
                    if(productIndexInfo.getIndexMin() != null){
                        double minValue = productIndexInfo.getIndexMin().doubleValue();
                        if(tempValue<minValue){
                            String msg = "产品:"+productName+",指标:"+indexName+" 小于规定最小值\r\n";
                            errorMsg=errorMsg.concat(msg);
//                            errorMsgData.add(msg);
                        }
                    }
                    if(productIndexInfo.getIndexMax() != null){
                        double maxValue = productIndexInfo.getIndexMax().doubleValue();
                        if(tempValue>maxValue){
                            String msg = "产品:"+productName+",指标:"+indexName+" 大于规定最大值\r\n";
                            errorMsg=errorMsg.concat(msg);
//                            errorMsgData.add(msg);
                        }
                    }
                }
            }
//            XWPFTableRow bidRowPrice = rows.get(productIndex1);
//            XWPFTableRow tenderRowPrice = tenderRows.get(productIndex1);
//            double bidPrice = Double.parseDouble(bidRowPrice.getTableCells().get(3).getText());
//            double tenderPrice = Double.parseDouble(tenderRowPrice.getTableCells().get(5).getText());
//            if(bidPrice>tenderPrice){
//                String msg = "产品:"+productName+" 价格超出招标方预算\r\n";
//                errorMsg=errorMsg.concat(msg);
////                errorMsgData.add(msg);
//            }
        }
        if(!errorMsg.equals("")){
            return error("产品指标数据未达到招标方规定！\r\n"+errorMsg);
        }
        return toAjax(centralizedPurchaseRecordService.insertCentralizedPurchaseRecord(centralizedPurchaseRecord));
    }

    /**
     * 修改集中采购记录
     */
    @RequiresPermissions("bid:tender1:edit")
    @GetMapping("/edit/{centralizedPurchaseRecordId}")
    public String edit(@PathVariable("centralizedPurchaseRecordId") String centralizedPurchaseRecordId, ModelMap mmap) {
        CentralizedPurchaseRecord centralizedPurchaseRecord = centralizedPurchaseRecordService.selectCentralizedPurchaseRecordByCentralizedPurchaseRecordId(centralizedPurchaseRecordId);
        mmap.put("centralizedPurchaseRecord", centralizedPurchaseRecord);
        return prefix + "/edit";
    }

    /**
     * 修改保存集中采购记录
     */
    @ApiOperation("修改投标记录")
    @RequiresPermissions("bid:tender1:edit")
    @Log(title = "集中采购记录", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(CentralizedPurchaseRecord centralizedPurchaseRecord) {
        return toAjax(centralizedPurchaseRecordService.updateCentralizedPurchaseRecord(centralizedPurchaseRecord));
    }

    /**
     * 删除集中采购记录
     */
    @ApiOperation("批量删除投标记录")
    @RequiresPermissions("bid:tender1:remove")
    @ApiImplicitParam(name = "ids", value = "主键ID(多个主键ID中间用','隔开)", required = true, dataType = "String", paramType = "path", dataTypeClass = String.class)
    @Log(title = "集中采购记录", businessType = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        return toAjax(centralizedPurchaseRecordService.deleteCentralizedPurchaseRecordByCentralizedPurchaseRecordIds(ids));
    }

    @ApiOperation("获取标书项目的名称")
    @ApiImplicitParam(name = "tenderId", value = "标书ID", required = true, dataType = "String", paramType = "path", dataTypeClass = String.class)
    @GetMapping("projectName")
    @ResponseBody
    public String GetProjectName(String tenderId){
        Tender tender = tenderService.selectTenderByTenderId(tenderId);
        if (tender!=null){
            return tender.getProjectName();
        }
        else {
            return "null";
        }
    }

    @Autowired
    private ISupplierLicenseInfoService supplierLicenseInfoService;

    @ApiOperation("获取供应商的名称")
    @ApiImplicitParam(name = "supplierId", value = "供应商ID", required = true, dataType = "Long", paramType = "path", dataTypeClass = Long.class)
    @GetMapping("corporateName")
    @ResponseBody
    public String GetCorporateName(Long supplierId){
        SupplierLicenseInfo info = supplierLicenseInfoService.selectSupplierLicenseInfoByUserId(supplierId);
        if (info!=null){
            return info.getCorporateName();
        }
        else {
            return "null";
        }
    }
}
