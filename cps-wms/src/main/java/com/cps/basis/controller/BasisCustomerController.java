package com.cps.basis.controller;

import com.cps.basis.domain.BasisCustomer;
import com.cps.basis.service.IBasisCustomerService;
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
 * 客户资料Controller
 * 
 * @author miki
 * @date 2021-05-19
 */
@Controller
@RequestMapping("/basis/customer")
public class BasisCustomerController extends BaseController
{
    private String prefix = "basis/customer";

    @Autowired
    private IBasisCustomerService basisCustomerService;

    @RequiresPermissions("basis:customer:view")
    @GetMapping()
    public String customer(ModelMap modelMap)
    {
        return prefix + "/customer";
    }

    /**
     * 查询客户资料列表
     */
    @RequiresPermissions("basis:customer:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(BasisCustomer basisCustomer)
    {
        basisCustomer.setDeptId(ShiroUtils.getDeptId());
        startPage();
        List<BasisCustomer> list = basisCustomerService.selectBasisCustomerList(basisCustomer);
        return getDataTable(list);
    }

    /**
     * 导出客户资料列表
     */
    @RequiresPermissions("basis:customer:export")
    @Log(title = "客户资料", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(BasisCustomer basisCustomer)
    {
        List<BasisCustomer> list = basisCustomerService.selectBasisCustomerList(basisCustomer);
        ExcelUtil<BasisCustomer> util = new ExcelUtil<BasisCustomer>(BasisCustomer.class);
        return util.exportExcel(list, "客户资料数据");
    }

    /**
     * 新增客户资料
     */
    @GetMapping("/add")
    public String add(ModelMap modelMap) {
        return prefix + "/add";
    }

    /**
     * 新增保存客户资料
     */
    @RequiresPermissions("basis:customer:add")
    @Log(title = "客户资料", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(BasisCustomer basisCustomer)
    {
        basisCustomer.setDeptId(ShiroUtils.getDeptId());
        basisCustomer.setCreateBy(ShiroUtils.getLoginName());
        return toAjax(basisCustomerService.insertBasisCustomer(basisCustomer));
    }

    /**
     * 修改客户资料
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        BasisCustomer basisCustomer = basisCustomerService.selectBasisCustomerById(id);
        mmap.put("basisCustomer", basisCustomer);
        return prefix + "/edit";
    }

    /**
     * 修改保存客户资料
     */
    @RequiresPermissions("basis:customer:edit")
    @Log(title = "客户资料", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(BasisCustomer basisCustomer)
    {
        basisCustomer.setUpdateBy(ShiroUtils.getLoginName());
        return toAjax(basisCustomerService.updateBasisCustomer(basisCustomer));
    }

    /**
     * 删除客户资料
     */
    @RequiresPermissions("basis:customer:remove")
    @Log(title = "客户资料", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(basisCustomerService.deleteBasisCustomerByIds(ids));
    }

    /**
     * 查看详细
     */
    @RequiresPermissions("basis:customer:detail")
    @GetMapping("/detail/{id}")
    public String detail(@PathVariable("id") Long id, ModelMap mmap)
    {
        mmap.put("basisCustomer", basisCustomerService.selectBasisCustomerById(id));
        return prefix + "/detail";
    }

    /**
     * 校验客户编码
     */
    @PostMapping("/checkCustomerCodeUnique")
    @ResponseBody
    public String checkCustomerCodeUnique(BasisCustomer basisCustomer)
    {
        return basisCustomerService.checkCustomerCodeUnique(basisCustomer.getCustomerCode());
    }

    /**
     * 选择客户
     */
    @GetMapping("/selectCustomer")
    public String selectCustomer(ModelMap mmap)
    {
        return prefix + "/selectCustomer";
    }

    /**
     * 查询客户管理列表(选择页面)
     */
    @PostMapping("/selectList")
    @ResponseBody
    public TableDataInfo selectList(BasisCustomer basisCustomer)
    {
        basisCustomer.setDeptId(ShiroUtils.getDeptId());
        startPage();
        List<BasisCustomer> list = basisCustomerService.selectBasisCustomerList(basisCustomer);
        return getDataTable(list);
    }
}
