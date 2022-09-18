package com.cps.web.controller.user;

import com.cps.common.annotation.Log;
import com.cps.common.core.controller.BaseController;
import com.cps.common.core.domain.AjaxResult;
import com.cps.common.core.page.TableDataInfo;
import com.cps.common.enums.BusinessType;
import com.cps.common.utils.poi.ExcelUtil;
import com.cps.user.domain.Supplier;
import com.cps.user.service.ISupplierService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 供应商角色Controller
 *
 * @author cps
 * @date 2022-08-18
 */
@Controller
@RequestMapping("/user/supplier")
public class SupplierController extends BaseController {
    private String prefix = "user/supplier";

    @Autowired
    private ISupplierService supplierService;

    @RequiresPermissions("user:supplier:view")
    @GetMapping()
    public String supplier() {
        return prefix + "/supplier";
    }

    /**
     * 查询供应商角色列表
     */
    @RequiresPermissions("user:supplier:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Supplier supplier) {
        startPage();
        List<Supplier> list = supplierService.selectSupplierList(supplier);
        return getDataTable(list);
    }

    /**
     * 导出供应商角色列表
     */
    @RequiresPermissions("user:supplier:export")
    @Log(title = "供应商角色", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Supplier supplier) {
        List<Supplier> list = supplierService.selectSupplierList(supplier);
        ExcelUtil<Supplier> util = new ExcelUtil<Supplier>(Supplier.class);
        return util.exportExcel(list, "供应商角色数据");
    }

    /**
     * 新增供应商角色
     */
    @GetMapping("/add")
    public String add() {
        return prefix + "/add";
    }

    /**
     * 新增保存供应商角色
     */
    @RequiresPermissions("user:supplier:add")
    @Log(title = "供应商角色", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(Supplier supplier) {
        return toAjax(supplierService.insertSupplier(supplier));
    }

    /**
     * 修改供应商角色
     */
    @RequiresPermissions("user:supplier:edit")
    @GetMapping("/edit/{supplyId}")
    public String edit(@PathVariable("supplyId") Long supplyId, ModelMap mmap) {
        Supplier supplier = supplierService.selectSupplierBySupplyId(supplyId);
        mmap.put("supplier", supplier);
        return prefix + "/edit";
    }

    /**
     * 修改保存供应商角色
     */
    @RequiresPermissions("user:supplier:edit")
    @Log(title = "供应商角色", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(Supplier supplier) {
        return toAjax(supplierService.updateSupplier(supplier));
    }

    /**
     * 删除供应商角色
     */
    @RequiresPermissions("user:supplier:remove")
    @Log(title = "供应商角色", businessType = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        return toAjax(supplierService.deleteSupplierBySupplyIds(ids));
    }
}
