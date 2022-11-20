package com.cps.cp.controller;

import com.alibaba.fastjson.JSONObject;
import com.cps.basis.domain.BasisSupplier;
import com.cps.basis.service.IBasisSupplierService;
import com.cps.common.annotation.Log;
import com.cps.common.constant.OrderConstants;
import com.cps.common.core.controller.BaseController;
import com.cps.common.core.domain.AjaxResult;
import com.cps.common.core.domain.entity.SysUser;
import com.cps.common.core.page.TableDataInfo;
import com.cps.common.enums.BusinessType;
import com.cps.common.enums.WhWarehousingOrderType;
import com.cps.common.utils.DateUtils;
import com.cps.common.utils.OrderNumGeneratorUtils;
import com.cps.common.utils.ShiroUtils;
import com.cps.common.utils.poi.ExcelUtil;
import com.cps.common.utils.uuid.IdUtils;
import com.cps.cp.domain.Contract;
import com.cps.cp.domain.ContractView;
import com.cps.cp.service.IContractService;
import com.cps.cp.service.ITenderService;
import com.cps.fabric.client.FabricClient;
import com.cps.fabric.service.SDKService;
import com.cps.system.service.ISysUserService;
import com.cps.wh.domain.WhWarehousingOrder;
import com.cps.wh.enums.WarehousingOrderStatus;
import com.cps.wh.service.IWhWarehousingOrderService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.ObjectUtils;
import org.springframework.web.bind.annotation.*;

import java.util.Date;
import java.util.List;

/**
 * 合同查询 区块链 Controller
 *
 * @author wxf
 * @date 2022-08-16
 */
@Controller
@RequestMapping("/cp/contractBlockchain")
public class ContractBlockChainController extends BaseController {
    private String prefix = "cp/contractBlockchain";

    @Autowired
    private IContractService contractService;

    @Autowired
    private ITenderService tenderService;

    @Autowired
    private IWhWarehousingOrderService whWarehousingOrderService;

    @Autowired
    private ISysUserService sysUserService;


    @RequiresPermissions("cp:contractBlockchain:view")
    @GetMapping()
    public String contract(ModelMap map) {
        // 获取当前的用户信息
        SysUser currentUser = ShiroUtils.getSysUser();
//        Long roleId = currentUser.getRoleId();
        String userLoginName = currentUser.getLoginName();
        Long userId = currentUser.getUserId();
        if(userLoginName.equals("admin")){
            List<ContractView> contracts = contractService.selectContractList(new Contract());
            //当甲乙两方都点击确认后,签名后直接去掉签名确认按钮。
            boolean[] canSignatureArr = new boolean[contracts.size()];
            for (int i = 0; i < contracts.size(); i++) {
                canSignatureArr[i] = true;
                ContractView contract = contracts.get(i);
                if(contract.getContractType().equals("0")){
                    if(contract.getSignatureA().equals("1")){
                        canSignatureArr[i] = false;
                    }
                }else{
                    if(contract.getSignatureB().equals("1")){
                        canSignatureArr[i] = false;
                    }
                }
            }
            map.put("canSignatureArr",canSignatureArr);
        }else{
            List<ContractView> contractList = contractService.selectContractListByUserId(userId);
            boolean[] canSignatureArr = new boolean[contractList.size()];
            for (int i = 0; i < contractList.size(); i++) {
                canSignatureArr[i] = true;
                ContractView contract = contractList.get(i);
                if(contract.getContractType().equals("0")){
                    if(contract.getSignatureB().equals("1")) {
                        canSignatureArr[i] = false;
                    }
                }else{
                    if(contract.getSignatureA().equals("1")) {
                        canSignatureArr[i] = false;
                    }
                }
                if((contract.getSignatureA().equals("1"))&&(contract.getSignatureB().equals("1"))){
                    canSignatureArr[i] = false;
                }
            }
            map.put("canSignatureArr",canSignatureArr);
        }
        return prefix + "/contract";
    }

    /**
     * 查询合同列表
     */
    @RequiresPermissions("cp:contractBlockchain:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Contract contract) {
        startPage();
        // 获取当前的用户信息
        SysUser currentUser = ShiroUtils.getSysUser();
//        Long roleId = currentUser.getRoleId();
        String userLoginName = currentUser.getLoginName();
        List<ContractView> list = null;
        Long userId = currentUser.getUserId();
//        System.out.println("UserId : "+userId);
        //103供应商 102超市 1管理员 跟userId不是一个东西
        if(userLoginName.equals("admin")){
            list = contractService.selectContractList(contract);
        }else{
            list = contractService.selectContractListByUserId(userId);
        }
        Date now = DateUtils.dateTime(DateUtils.YYYY_MM_DD_HH_MM_SS, DateUtils.dateTimeNow(DateUtils.YYYY_MM_DD_HH_MM_SS));
        for (int i = 0; i < list.size();i++) {
            list.get(i).setProjectName(tenderService.selectTenderByTenderId(list.get(i).getTenderId()).getProjectName());
            list.get(i).setLoginName(sysUserService.selectUserById(list.get(i).getSignatureUserId()).getLoginName());
            //若当前时间超过合同截止日期，设置合同状态为逾期。
            if(now.after(list.get(i).getDeadlineDeliveryDate())&&list.get(i).getContractStatus().equals("1")){
                list.get(i).setContractStatus("4");
                Contract contract1 = contractService.selectContractByContractId(list.get(i).getContractId());
                contract1.setContractStatus("4");
                contractService.updateContract(contract1);
            }
        }

        return getDataTable(list);
    }

    /**
     * 导出合同列表
     */
    @RequiresPermissions("cp:contractBlockchain:export")
    @Log(title = "合同", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Contract contract) {
        List<ContractView> list = contractService.selectContractList(contract);
        ExcelUtil<ContractView> util = new ExcelUtil<ContractView>(ContractView.class);
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
    @RequiresPermissions("cp:contractBlockchain:add")
    @Log(title = "合同", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(Contract contract) {
        contract.setContractType("0");
        contract.setContractTime(DateUtils.dateTime(DateUtils.YYYY_MM_DD_HH_MM_SS, DateUtils.dateTimeNow(DateUtils.YYYY_MM_DD_HH_MM_SS)));
        contract.setContractId(IdUtils.fastSimpleUUID());
        //签名设置成 未签名
        contract.setSignatureA("0");
        contract.setSignatureB("0");
        //设置合同状态为未签署
        contract.setContractStatus("0");
        return toAjax(contractService.insertContract(contract));
    }

    /**
     * 修改合同——更改合同状态
     */
    @RequiresPermissions("cp:contractBlockchain:edit")
    @GetMapping("/edit/{contractId}")
    public String edit(@PathVariable("contractId") String contractId, ModelMap mmap) {
        Contract contract = contractService.selectContractByContractId(contractId);
//        contract.setContractTime(DateUtils.dateTime(DateUtils.YYYY_MM_DD_HH_MM_SS, DateUtils.dateTimeNow(DateUtils.YYYY_MM_DD_HH_MM_SS)));
        mmap.put("contract", contract);
//        String resultUrl = "";
        // 获取当前的用户信息
//        SysUser currentUser = ShiroUtils.getSysUser();
//        String userLoginName = currentUser.getLoginName();
//        if(userLoginName.equals("admin")){
//            resultUrl = prefix + "/edit";
//        }else{
//            if(contract.getContractType().equals("0")){
//                resultUrl = prefix + "/editgys";
//            }else{
//                resultUrl = prefix + "/editxsc";
//            }
//        }
        return prefix+"/edit";
    }


    @Autowired
    private SDKService sdkService;

    /**
     * 修改保存合同
     */
    @RequiresPermissions("cp:contractBlockchain:edit")
    @Log(title = "合同", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(Contract contract) {
        return toAjax(contractService.updateContract(contract));
    }

    /**
     * 删除合同
     */
    @RequiresPermissions("cp:contractBlockchain:remove")
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

    @Autowired
    private IBasisSupplierService basisSupplierService;

    //更新签名
    @PostMapping("/editSignature/{contractId}")
    @ResponseBody
    public AjaxResult editSignature(@PathVariable("contractId") String contractId) throws Exception {
        Contract contract = contractService.selectContractByContractId(contractId);
        contract.setContractTime(DateUtils.dateTime(DateUtils.YYYY_MM_DD_HH_MM_SS, DateUtils.dateTimeNow(DateUtils.YYYY_MM_DD_HH_MM_SS)));

        //获取当前用户 并判断修改哪一方签名

        // 获取当前的用户信息
        SysUser currentUser = ShiroUtils.getSysUser();
        String userLoginName = currentUser.getLoginName();
        if(userLoginName.equals("admin")){
            if(contract.getContractType().equals("0")){
                contract.setSignatureA("1");
            }else{
                contract.setSignatureB("1");
            }
        }else{
            if(contract.getContractType().equals("0")){
                contract.setSignatureB("1");
            }else{
                contract.setSignatureA("1");
            }
        }
        SysUser signatureUser = sysUserService.selectUserById(contract.getSignatureUserId());
        String signatureUserLoginName = signatureUser.getLoginName();
        //在仓库系统——基础资料——供应商管理 查看该供应商是否存在
        BasisSupplier basisSupplier = basisSupplierService.selectBasisSupplierBySupplierName(signatureUserLoginName);
        if(ObjectUtils.isEmpty(basisSupplier)){
            return AjaxResult.error("请在仓库系统——基础资料——供应商管理：添加供应商相关信息");
        }
        //双方确认完之后，往(仓库系统-进货管理-其他入库)里传一份入库单。
        if((contract.getSignatureA().equals("1"))&&(contract.getSignatureB().equals("1"))){
            //新增入库订单
            WhWarehousingOrder whWarehousingOrder = new WhWarehousingOrder();
            //订单日期
            whWarehousingOrder.setOrderDate(DateUtils.getNowDate());
            //入库类型(其他入库、采购入库)
            whWarehousingOrder.setOrderType(WhWarehousingOrderType.OTHER.getCode());
            //入库单编号
            whWarehousingOrder.setOrderCode(OrderNumGeneratorUtils.makeOrderNum(OrderConstants.ASN));
            //状态(待到货、待卸货、待分拣、已分拣)
            whWarehousingOrder.setStatus(WarehousingOrderStatus.ARRIVAL.getCode());
            //交易单位名称
            whWarehousingOrder.setDesWarehouseName(signatureUserLoginName);
            //订单号
            whWarehousingOrder.setOrderName(contract.getContractId());
            whWarehousingOrder.setSupplierName(signatureUserLoginName);
            //设置供应商ID
            Long id = basisSupplier.getId();
            whWarehousingOrder.setSupplierId(id);
            whWarehousingOrder.setCreateBy(signatureUserLoginName);
            whWarehousingOrder.setDeptId(signatureUser.getDeptId());
            whWarehousingOrderService.insertWhWarehousingOrder(whWarehousingOrder);

            contract.setContractStatus("1");
            //fabric:合同信息上链
            FabricClient fabricClient = sdkService.initFabricClient();
            String initArgs[] = new String[2];
            initArgs[0] = contract.getContractId();
            String contractJsonString = JSONObject.toJSONString(contract);
            initArgs[1] = contractJsonString;
            sdkService.chainCodeOfInvoke(fabricClient,"add",initArgs);
            //合同状态由未签署->待到货
            contract.setContractStatus("1");
        }
        return toAjax(contractService.updateContract(contract));
    }
}
