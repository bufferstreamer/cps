package com.cps.web.controller.bid;

import com.cps.bid.domain.CentralizedPurchaseRecord;
import com.cps.bid.service.ICentralizedPurchaseRecordService;
import com.cps.common.annotation.Log;
import com.cps.common.core.controller.BaseController;
import com.cps.common.core.domain.AjaxResult;
import com.cps.common.core.page.TableDataInfo;
import com.cps.common.enums.BusinessType;
import com.cps.common.utils.poi.ExcelUtil;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 集中采购记录Controller
 * 
 * @author cps
 * @date 2022-09-03
 */
@Controller
@RequestMapping("/bid/tender1")
public class CentralizedPurchaseRecordController extends BaseController
{
    private String prefix = "bid/tender1";

    @Autowired
    private ICentralizedPurchaseRecordService centralizedPurchaseRecordService;

    @RequiresPermissions("bid:tender1:view")
    @GetMapping()
    public String tender1()
    {
        return prefix + "/tender1";
    }

    /**
     * 查询集中采购记录列表
     */
    @RequiresPermissions("bid:tender1:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(CentralizedPurchaseRecord centralizedPurchaseRecord)
    {
        startPage();
        List<CentralizedPurchaseRecord> list = centralizedPurchaseRecordService.selectCentralizedPurchaseRecordList(centralizedPurchaseRecord);
        return getDataTable(list);
    }

    /**
     * 导出集中采购记录列表
     */
    @RequiresPermissions("bid:tender1:export")
    @Log(title = "集中采购记录", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(CentralizedPurchaseRecord centralizedPurchaseRecord)
    {
        List<CentralizedPurchaseRecord> list = centralizedPurchaseRecordService.selectCentralizedPurchaseRecordList(centralizedPurchaseRecord);
        ExcelUtil<CentralizedPurchaseRecord> util = new ExcelUtil<CentralizedPurchaseRecord>(CentralizedPurchaseRecord.class);
        return util.exportExcel(list, "集中采购记录数据");
    }

    /**
     * 新增集中采购记录
     */
    @GetMapping("/add/{tenderId}")
    public String add(@PathVariable("tenderId") String tenderId, ModelMap map)
    {
        map.put("tenderId",tenderId);
        return prefix + "/add";
    }

    /**
     * 新增保存集中采购记录
     */
    @RequiresPermissions("bid:tender1:add")
    @Log(title = "集中采购记录", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(CentralizedPurchaseRecord centralizedPurchaseRecord)
    {
        return toAjax(centralizedPurchaseRecordService.insertCentralizedPurchaseRecord(centralizedPurchaseRecord));
    }

    /**
     * 修改集中采购记录
     */
    @RequiresPermissions("bid:tender1:edit")
    @GetMapping("/edit/{centralizedPurchaseRecordId}")
    public String edit(@PathVariable("centralizedPurchaseRecordId") String centralizedPurchaseRecordId, ModelMap mmap)
    {
        CentralizedPurchaseRecord centralizedPurchaseRecord = centralizedPurchaseRecordService.selectCentralizedPurchaseRecordByCentralizedPurchaseRecordId(centralizedPurchaseRecordId);
        mmap.put("centralizedPurchaseRecord", centralizedPurchaseRecord);
        return prefix + "/edit";
    }

    /**
     * 修改保存集中采购记录
     */
    @RequiresPermissions("bid:tender1:edit")
    @Log(title = "集中采购记录", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(CentralizedPurchaseRecord centralizedPurchaseRecord)
    {
        return toAjax(centralizedPurchaseRecordService.updateCentralizedPurchaseRecord(centralizedPurchaseRecord));
    }

    /**
     * 删除集中采购记录
     */
    @RequiresPermissions("bid:tender1:remove")
    @Log(title = "集中采购记录", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(centralizedPurchaseRecordService.deleteCentralizedPurchaseRecordByCentralizedPurchaseRecordIds(ids));
    }
}
