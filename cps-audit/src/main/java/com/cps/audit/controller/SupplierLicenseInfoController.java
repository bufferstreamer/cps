package com.cps.audit.controller;

import java.util.List;

import com.cps.common.utils.DateUtils;
import com.cps.common.utils.uuid.CpsIdUtils;
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
import com.cps.audit.domain.SupplierLicenseInfo;
import com.cps.audit.service.ISupplierLicenseInfoService;
import com.cps.common.core.controller.BaseController;
import com.cps.common.core.domain.AjaxResult;
import com.cps.common.utils.poi.ExcelUtil;
import com.cps.common.core.page.TableDataInfo;

/**
 * 供应商营业执照审核管理Controller
 * 
 * @author cps
 * @date 2022-08-16
 */
@Controller
@RequestMapping("/audit/supplierLicenseManage")
public class SupplierLicenseInfoController extends BaseController
{
    private String prefix = "audit/supplierLicenseManage";

    @Autowired
    private ISupplierLicenseInfoService supplierLicenseInfoService;

    @RequiresPermissions("audit:supplierLicenseManage:view")
    @GetMapping()
    public String supplierLicenseManage()
    {
        return prefix + "/supplierLicenseManage";
    }

    /**
     * 查询供应商营业执照审核管理列表
     */
    @RequiresPermissions("audit:supplierLicenseManage:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(SupplierLicenseInfo supplierLicenseInfo)
    {
        startPage();
        List<SupplierLicenseInfo> list = supplierLicenseInfoService.selectSupplierLicenseInfoList(supplierLicenseInfo);
        return getDataTable(list);
    }

    /**
     * 导出供应商营业执照审核管理列表
     */
    @RequiresPermissions("audit:supplierLicenseManage:export")
    @Log(title = "供应商营业执照审核管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(SupplierLicenseInfo supplierLicenseInfo)
    {
        List<SupplierLicenseInfo> list = supplierLicenseInfoService.selectSupplierLicenseInfoList(supplierLicenseInfo);
        ExcelUtil<SupplierLicenseInfo> util = new ExcelUtil<SupplierLicenseInfo>(SupplierLicenseInfo.class);
        return util.exportExcel(list, "供应商营业执照审核管理数据");
    }

    /**
     * 新增供应商营业执照审核管理
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存供应商营业执照审核管理
     */
    @RequiresPermissions("audit:supplierLicenseManage:add")
    @Log(title = "供应商营业执照审核管理", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(SupplierLicenseInfo supplierLicenseInfo)
    {
        supplierLicenseInfo.setChecklistId(CpsIdUtils.createChecklistId('1'));
        supplierLicenseInfo.setCreateDatetime(DateUtils.parseDate(DateUtils.getTime()));
        return toAjax(supplierLicenseInfoService.insertSupplierLicenseInfo(supplierLicenseInfo));
    }

    /**
     * 修改供应商营业执照审核管理
     */
    @RequiresPermissions("audit:supplierLicenseManage:edit")
    @GetMapping("/edit/{checklistId}")
    public String edit(@PathVariable("checklistId") String checklistId, ModelMap mmap)
    {
        SupplierLicenseInfo supplierLicenseInfo = supplierLicenseInfoService.selectSupplierLicenseInfoByChecklistId(checklistId);
        mmap.put("supplierLicenseInfo", supplierLicenseInfo);
        return prefix + "/edit";
    }

    /**
     * 修改保存供应商营业执照审核管理
     */
    @RequiresPermissions("audit:supplierLicenseManage:edit")
    @Log(title = "供应商营业执照审核管理", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(SupplierLicenseInfo supplierLicenseInfo)
    {
        return toAjax(supplierLicenseInfoService.updateSupplierLicenseInfo(supplierLicenseInfo));
    }

    /**
     * 删除供应商营业执照审核管理
     */
    @RequiresPermissions("audit:supplierLicenseManage:remove")
    @Log(title = "供应商营业执照审核管理", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(supplierLicenseInfoService.deleteSupplierLicenseInfoByChecklistIds(ids));
    }
}
