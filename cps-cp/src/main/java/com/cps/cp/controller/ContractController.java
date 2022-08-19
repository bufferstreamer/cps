package com.cps.cp.controller;

import java.util.List;
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
import com.cps.cp.domain.Contract;
import com.cps.cp.service.IContractService;
import com.cps.common.core.controller.BaseController;
import com.cps.common.core.domain.AjaxResult;
import com.cps.common.utils.poi.ExcelUtil;
import com.cps.common.core.page.TableDataInfo;

/**
 * 合同Controller
 * 
 * @author wxf
 * @date 2022-08-16
 */
@Controller
@RequestMapping("/cp/contract")
public class ContractController extends BaseController
{
    private String prefix = "cp/contract";

    @Autowired
    private IContractService contractService;

    @RequiresPermissions("cp:contract:view")
    @GetMapping()
    public String contract()
    {
        return prefix + "/contract";
    }

    /**
     * 查询合同列表
     */
    @RequiresPermissions("cp:contract:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Contract contract)
    {
        startPage();
        List<Contract> list = contractService.selectContractList(contract);
        return getDataTable(list);
    }

    /**
     * 导出合同列表
     */
    @RequiresPermissions("cp:contract:export")
    @Log(title = "合同", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Contract contract)
    {
        List<Contract> list = contractService.selectContractList(contract);
        ExcelUtil<Contract> util = new ExcelUtil<Contract>(Contract.class);
        return util.exportExcel(list, "合同数据");
    }

    /**
     * 新增合同
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存合同
     */
    @RequiresPermissions("cp:contract:add")
    @Log(title = "合同", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(Contract contract)
    {
        return toAjax(contractService.insertContract(contract));
    }

    /**
     * 修改合同
     */
    @RequiresPermissions("cp:contract:edit")
    @GetMapping("/edit/{contractId}")
    public String edit(@PathVariable("contractId") String contractId, ModelMap mmap)
    {
        Contract contract = contractService.selectContractByContractId(contractId);
        mmap.put("contract", contract);
        return prefix + "/edit";
    }

    /**
     * 修改保存合同
     */
    @RequiresPermissions("cp:contract:edit")
    @Log(title = "合同", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(Contract contract)
    {
        return toAjax(contractService.updateContract(contract));
    }

    /**
     * 删除合同
     */
    @RequiresPermissions("cp:contract:remove")
    @Log(title = "合同", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(contractService.deleteContractByContractIds(ids));
    }
}
