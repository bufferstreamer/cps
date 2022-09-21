package com.cps.cp.controller;

import com.cps.common.annotation.Log;
import com.cps.common.core.controller.BaseController;
import com.cps.common.core.domain.AjaxResult;
import com.cps.common.core.domain.entity.SysUser;
import com.cps.common.core.page.TableDataInfo;
import com.cps.common.enums.BusinessType;
import com.cps.common.utils.DateUtils;
import com.cps.common.utils.ShiroUtils;
import com.cps.common.utils.poi.ExcelUtil;
import com.cps.common.utils.uuid.IdUtils;
import com.cps.cp.domain.Contract;
import com.cps.cp.service.IContractService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 合同Controller
 *
 * @author wxf
 * @date 2022-08-16
 */
@Controller
@RequestMapping("/cp/contract")
public class ContractController extends BaseController {
    private String prefix = "cp/contract";

    @Autowired
    private IContractService contractService;

    @RequiresPermissions("cp:contract:view")
    @GetMapping()
    public String contract() {
        return prefix + "/contract";
    }

    /**
     * 查询合同列表
     */
    @RequiresPermissions("cp:contract:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Contract contract) {
        startPage();
        // 获取当前的用户信息
        SysUser currentUser = ShiroUtils.getSysUser();
//        Long roleId = currentUser.getRoleId();
        String userLoginName = currentUser.getLoginName();
        List<Contract> list = null;
        Long userId = currentUser.getUserId();
        System.out.println("UserId : "+userId);
        //103供应商 102超市 1管理员
        if(userLoginName.equals("admin")){
            list = contractService.selectContractList(contract);
        }else{
            list = contractService.selectContractListByUserId(userId);
        }

        return getDataTable(list);
    }

    /**
     * 导出合同列表
     */
    @RequiresPermissions("cp:contract:export")
    @Log(title = "合同", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Contract contract) {
        List<Contract> list = contractService.selectContractList(contract);
        ExcelUtil<Contract> util = new ExcelUtil<Contract>(Contract.class);
        return util.exportExcel(list, "合同数据");
    }

    /**
     * 新增合同
     */
    @GetMapping("/add")
    public String add() {
        return prefix + "/add";
    }

    /**
     * 新增保存合同
     */
    @RequiresPermissions("cp:contract:add")
    @Log(title = "合同", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(Contract contract) {
        contract.setContractTime(DateUtils.dateTime(DateUtils.YYYY_MM_DD_HH_MM_SS, DateUtils.dateTimeNow(DateUtils.YYYY_MM_DD_HH_MM_SS)));
        contract.setContractId(IdUtils.fastSimpleUUID());
        //签名设置成 未签名
        contract.setSignatureA("0");
        contract.setSignatureB("0");
        return toAjax(contractService.insertContract(contract));
    }

    /**
     * 修改合同
     */
    @RequiresPermissions("cp:contract:edit")
    @GetMapping("/edit/{contractId}")
    public String edit(@PathVariable("contractId") String contractId, ModelMap mmap) {
        Contract contract = contractService.selectContractByContractId(contractId);
        mmap.put("contract", contract);
        String resultUrl = "";
        // 获取当前的用户信息
        SysUser currentUser = ShiroUtils.getSysUser();
        String userLoginName = currentUser.getLoginName();
        if(userLoginName.equals("admin")){
            resultUrl = prefix + "/edit";
        }else{
            if(contract.getContractType().equals("0")){
                resultUrl = prefix + "/editgys";
            }else{
                resultUrl = prefix + "/editxsc";
            }
        }

        return resultUrl;
    }

    /**
     * 修改保存合同
     */
    @RequiresPermissions("cp:contract:edit")
    @Log(title = "合同", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(Contract contract) {
        contract.setContractTime(DateUtils.dateTime(DateUtils.YYYY_MM_DD_HH_MM_SS, DateUtils.dateTimeNow(DateUtils.YYYY_MM_DD_HH_MM_SS)));
        return toAjax(contractService.updateContract(contract));
    }

    /**
     * 删除合同
     */
    @RequiresPermissions("cp:contract:remove")
    @Log(title = "合同", businessType = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        return toAjax(contractService.deleteContractByContractIds(ids));
    }

    // 查询详细方法
    @RequestMapping("/detail/{contractId}")
    public String detail(@PathVariable("contractId") String contractId, ModelMap mmap) {
        mmap.put("contract", contractService.selectContractByContractId(contractId));
        return prefix + "/detail";
    }

    // 查询标书
    @RequestMapping("/search/")
    public String queryTender() {
        return prefix + "/search";
    }

    // 查询用户
    @RequestMapping("/user/")
    public String queryUser() {
        return prefix + "/user";
    }
}
