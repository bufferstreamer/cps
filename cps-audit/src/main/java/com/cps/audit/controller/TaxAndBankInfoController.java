package com.cps.audit.controller;

import java.util.List;

import com.cps.common.utils.DateUtils;
import com.cps.common.utils.uuid.CpsIdUtils;
import com.cps.common.utils.uuid.IdUtils;
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
import com.cps.audit.domain.TaxAndBankInfo;
import com.cps.audit.service.ITaxAndBankInfoService;
import com.cps.common.core.controller.BaseController;
import com.cps.common.core.domain.AjaxResult;
import com.cps.common.utils.poi.ExcelUtil;
import com.cps.common.core.page.TableDataInfo;

/**
 * 税务及银行审核管理Controller
 * 
 * @author cps
 * @date 2022-08-16
 */
@Controller
@RequestMapping("/audit/taxAndBankManage")
public class TaxAndBankInfoController extends BaseController
{
    private String prefix = "audit/taxAndBankManage";

    @Autowired
    private ITaxAndBankInfoService taxAndBankInfoService;

    @RequiresPermissions("audit:taxAndBankManage:view")
    @GetMapping()
    public String taxAndBankManage()
    {
        return prefix + "/taxAndBankManage";
    }

    /**
     * 查询税务及银行审核管理列表
     */
    @RequiresPermissions("audit:taxAndBankManage:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(TaxAndBankInfo taxAndBankInfo)
    {
        startPage();
        List<TaxAndBankInfo> list = taxAndBankInfoService.selectTaxAndBankInfoList(taxAndBankInfo);
        return getDataTable(list);
    }

    /**
     * 导出税务及银行审核管理列表
     */
    @RequiresPermissions("audit:taxAndBankManage:export")
    @Log(title = "税务及银行审核管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(TaxAndBankInfo taxAndBankInfo)
    {
        List<TaxAndBankInfo> list = taxAndBankInfoService.selectTaxAndBankInfoList(taxAndBankInfo);
        ExcelUtil<TaxAndBankInfo> util = new ExcelUtil<TaxAndBankInfo>(TaxAndBankInfo.class);
        return util.exportExcel(list, "税务及银行审核管理数据");
    }

    /**
     * 新增税务及银行审核管理
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存税务及银行审核管理
     */
    @RequiresPermissions("audit:taxAndBankManage:add")
    @Log(title = "税务及银行审核管理", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(TaxAndBankInfo taxAndBankInfo)
    {
        taxAndBankInfo.setTaxAndBankAuditId(IdUtils.simpleUUID());
        taxAndBankInfo.setChecklistId(CpsIdUtils.createChecklistId('1'));//此处应该利用用户id从数据库查找
        taxAndBankInfo.setCreateDatetime(DateUtils.parseDate(DateUtils.getTime()));
        return toAjax(taxAndBankInfoService.insertTaxAndBankInfo(taxAndBankInfo));
    }

    /**
     * 修改税务及银行审核管理
     */
    @RequiresPermissions("audit:taxAndBankManage:edit")
    @GetMapping("/edit/{taxAndBankAuditId}")
    public String edit(@PathVariable("taxAndBankAuditId") String taxAndBankAuditId, ModelMap mmap)
    {
        TaxAndBankInfo taxAndBankInfo = taxAndBankInfoService.selectTaxAndBankInfoByTaxAndBankAuditId(taxAndBankAuditId);
        mmap.put("taxAndBankInfo", taxAndBankInfo);
        return prefix + "/edit";
    }

    /**
     * 修改保存税务及银行审核管理
     */
    @RequiresPermissions("audit:taxAndBankManage:edit")
    @Log(title = "税务及银行审核管理", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(TaxAndBankInfo taxAndBankInfo)
    {
        return toAjax(taxAndBankInfoService.updateTaxAndBankInfo(taxAndBankInfo));
    }

    /**
     * 删除税务及银行审核管理
     */
    @RequiresPermissions("audit:taxAndBankManage:remove")
    @Log(title = "税务及银行审核管理", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(taxAndBankInfoService.deleteTaxAndBankInfoByTaxAndBankAuditIds(ids));
    }
}
