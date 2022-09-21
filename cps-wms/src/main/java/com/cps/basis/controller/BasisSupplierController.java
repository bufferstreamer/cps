package com.cps.basis.controller;

import com.cps.basis.domain.BasisSupplier;
import com.cps.basis.service.IBasisSupplierService;
import com.cps.common.annotation.Log;
import com.cps.common.core.controller.BaseController;
import com.cps.common.core.domain.AjaxResult;
import com.cps.common.core.page.TableDataInfo;
import com.cps.common.enums.BusinessType;
import com.cps.common.utils.ShiroUtils;
import com.cps.common.utils.poi.ExcelUtil;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 供应商管理Controller
 *
 * @author miki
 * @date 2021-05-20
 */
@Controller
@RequestMapping("/basis/supplier")
public class BasisSupplierController extends BaseController {
    private String prefix = "basis/supplier";

    @Autowired
    private IBasisSupplierService basisSupplierService;

    @RequiresPermissions("basis:supplier:view")
    @GetMapping()
    public String supplier() {
        return prefix + "/supplier";
    }

    /**
     * 查询供应商管理列表
     */
    @RequiresPermissions("basis:supplier:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(BasisSupplier basisSupplier) {
        //注释了有关供应商管理展示的限制（有关deptId）
//        basisSupplier.setDeptId(ShiroUtils.getDeptId());
        startPage();
        List<BasisSupplier> list = basisSupplierService.selectBasisSupplierList(basisSupplier);
        return getDataTable(list);
    }

    /**
     * 导出供应商管理列表
     */
    @RequiresPermissions("basis:supplier:export")
    @Log(title = "供应商管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(BasisSupplier basisSupplier) {
        List<BasisSupplier> list = basisSupplierService.selectBasisSupplierList(basisSupplier);
        ExcelUtil<BasisSupplier> util = new ExcelUtil<BasisSupplier>(BasisSupplier.class);
        return util.exportExcel(list, "供应商管理数据");
    }

    /**
     * 新增供应商管理
     */
    @GetMapping("/add")
    public String add(ModelMap modelMap) {
        return prefix + "/add";
    }

    /**
     * 新增保存供应商管理
     */
    @RequiresPermissions("basis:supplier:add")
    @Log(title = "供应商管理", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(BasisSupplier basisSupplier) {
        basisSupplier.setDeptId(ShiroUtils.getDeptId());
        basisSupplier.setCreateBy(ShiroUtils.getLoginName());
        return toAjax(basisSupplierService.insertBasisSupplier(basisSupplier));
    }

    /**
     * 修改供应商管理
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap) {
        BasisSupplier basisSupplier = basisSupplierService.selectBasisSupplierById(id);
        mmap.put("basisSupplier", basisSupplier);
        return prefix + "/edit";
    }

    /**
     * 修改保存供应商管理
     */
    @RequiresPermissions("basis:supplier:edit")
    @Log(title = "供应商管理", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(BasisSupplier basisSupplier) {
        basisSupplier.setUpdateBy(ShiroUtils.getLoginName());
        return toAjax(basisSupplierService.updateBasisSupplier(basisSupplier));
    }

    /**
     * 删除供应商管理
     */
    @RequiresPermissions("basis:supplier:remove")
    @Log(title = "供应商管理", businessType = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        return toAjax(basisSupplierService.deleteBasisSupplierByIds(ids));
    }

    /**
     * 查看详细
     */
    @RequiresPermissions("basis:supplier:detail")
    @GetMapping("/detail/{id}")
    public String detail(@PathVariable("id") Long id, ModelMap mmap) {
        mmap.put("basisSupplier", basisSupplierService.selectBasisSupplierById(id));
        return prefix + "/detail";
    }

    /**
     * 校验供应商编码
     */
    @PostMapping("/checkSupplierCodeUnique")
    @ResponseBody
    public String checkSupplierCodeUnique(BasisSupplier basisSupplier) {
        return basisSupplierService.checkSupplierCodeUnique(basisSupplier.getSupplierCode());
    }


    /**
     * 选择供应商
     */
    @GetMapping("/selectSupplier")
    public String selectSupplier(ModelMap mmap) {
        return prefix + "/selectSupplier";
    }

    /**
     * 查询供应商管理列表(选择页面)
     */
    @PostMapping("/selectList")
    @ResponseBody
    public TableDataInfo selectList(BasisSupplier basisSupplier) {
        basisSupplier.setDeptId(ShiroUtils.getDeptId());
        startPage();
        List<BasisSupplier> list = basisSupplierService.selectBasisSupplierList(basisSupplier);
        return getDataTable(list);
    }
}
