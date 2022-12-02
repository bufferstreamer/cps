package com.cps.wh.controller;

import com.alibaba.fastjson.JSONObject;
import com.cps.common.annotation.Log;
import com.cps.common.constant.OrderConstants;
import com.cps.common.core.controller.BaseController;
import com.cps.common.core.domain.AjaxResult;
import com.cps.common.core.page.TableDataInfo;
import com.cps.common.enums.BusinessType;
import com.cps.common.enums.WhWarehousingOrderType;
import com.cps.common.utils.DateUtils;
import com.cps.common.utils.OrderNumGeneratorUtils;
import com.cps.common.utils.ShiroUtils;
import com.cps.common.utils.StringUtils;
import com.cps.common.utils.file.SHAUtils;
import com.cps.cp.domain.Contract;
import com.cps.cp.service.IContractService;
import com.cps.fabric.client.FabricClient;
import com.cps.fabric.service.SDKService;
import com.cps.wh.domain.WhWarehousingOrder;
import com.cps.wh.enums.WarehousingOrderStatus;
import com.cps.wh.service.IWhWarehousingOrderSeedService;
import com.cps.wh.service.IWhWarehousingOrderService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 商品入库单主表Controller
 *
 * @author miki
 * @date 2021-05-26
 */
@Controller
@RequestMapping("/wh/warehousingOrder")
public class WhWarehousingOrderController extends BaseController {
    private String prefix = "wh/warehousingOrder";

    @Autowired
    private IWhWarehousingOrderService whWarehousingOrderService;

    @Autowired
    private IWhWarehousingOrderSeedService whWarehousingOrderSeedService;

    @RequiresPermissions("wh:warehousingOrder:view")
    @GetMapping()
    public String warehousingOrder() {
        return prefix + "/warehousingOrder";
    }

    /**
     * 查询商品入库单主表列表
     */
    @RequiresPermissions("wh:warehousingOrder:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(WhWarehousingOrder whWarehousingOrder) {
//        whWarehousingOrder.setDeptId(ShiroUtils.getDeptId());
        startPage();
        List<WhWarehousingOrder> list = whWarehousingOrderService.selectWhWarehousingOrderList(whWarehousingOrder);
        return getDataTable(list);
    }


    /**
     * 新增商品入库单主表
     */
    @GetMapping("/add")
    public String add(ModelMap modelMap) {
        //新增入库订单
        WhWarehousingOrder whWarehousingOrder = new WhWarehousingOrder();
        whWarehousingOrder.setOrderDate(DateUtils.getNowDate());
        whWarehousingOrder.setOrderType(WhWarehousingOrderType.OTHER.getCode());
        whWarehousingOrder.setOrderCode(OrderNumGeneratorUtils.makeOrderNum(OrderConstants.ASN));
        whWarehousingOrder.setStatus(WarehousingOrderStatus.ARRIVAL.getCode());
        whWarehousingOrder.setCreateBy(ShiroUtils.getLoginName());
        whWarehousingOrder.setDeptId(ShiroUtils.getDeptId());
        whWarehousingOrderService.insertWhWarehousingOrder(whWarehousingOrder);
        modelMap.put("whWarehousingOrder", whWarehousingOrder);
        return prefix + "/add";
    }

    /**
     * 新增保存商品入库单主表
     */
    @RequiresPermissions("wh:warehousingOrder:add")
    @Log(title = "商品入库单主表", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(WhWarehousingOrder whWarehousingOrder) {
        return toAjax(whWarehousingOrderService.insertWhWarehousingOrder(whWarehousingOrder));
    }

    /**
     * 修改商品入库单主表
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap) {
        WhWarehousingOrder whWarehousingOrder = whWarehousingOrderService.selectWhWarehousingOrderById(id);
        mmap.put("whWarehousingOrder", whWarehousingOrder);
        return prefix + "/add";
    }

    /**
     * 查看商品入库单子表
     */
    @GetMapping("/select/{id}")
    public String select(@PathVariable("id") Long id, ModelMap mmap) {
        WhWarehousingOrder whWarehousingOrder = whWarehousingOrderService.selectWhWarehousingOrderById(id);
        mmap.put("whWarehousingOrder", whWarehousingOrder);
        return prefix + "/select";
    }

    /**
     * 修改保存商品入库单主表
     */
    @RequiresPermissions("wh:warehousingOrder:edit")
    @Log(title = "商品入库单主表", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(WhWarehousingOrder whWarehousingOrder) {
        if (StringUtils.isNotNull(whWarehousingOrder.getSupplierId())) {
            whWarehousingOrder.setDesWarehouseId(whWarehousingOrder.getSupplierId());
            whWarehousingOrder.setDesWarehouseName(whWarehousingOrder.getSupplierName());
        }
        return toAjax(whWarehousingOrderService.updateWhWarehousingOrderShop(whWarehousingOrder));
    }

    /**
     * 删除商品入库单主表
     */
    @RequiresPermissions("wh:warehousingOrder:remove")
    @Log(title = "商品入库单主表", businessType = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        return toAjax(whWarehousingOrderService.deleteWhWarehousingOrderByIds(ids));
    }

    @Autowired
    private IContractService contractService;

    @Autowired
    private SDKService sdkService;

    @Value("${cps.profile}")
    private String profile;

    /**
     * 修改商品入库单状态-确认到货
     */
    @RequiresPermissions("wh:warehousingOrder:changeStatus")
    @Log(title = "商品入库单主表", businessType = BusinessType.UPDATE)
    @PostMapping("/changeStatus")
    @ResponseBody
    public AjaxResult changeStatus(WhWarehousingOrder whWarehousingOrder) throws Exception {
        //检测是否已选中供应商和加入商品
        WhWarehousingOrder warehousingOrder = whWarehousingOrderService.selectWhWarehousingOrderById(whWarehousingOrder.getId());
        if (StringUtils.isNull(warehousingOrder.getSupplierId()) || StringUtils.isBlank(warehousingOrder.getOrderName()) || whWarehousingOrderSeedService.getOrderSeedShopCount(whWarehousingOrder.getId()) == 0) {
            return AjaxResult.warn("请加入订单编号、供应商或商品");
        }
        whWarehousingOrder.setUpdateBy(ShiroUtils.getLoginName());
        //更新合同状态为——交货完成-
        String orderName = warehousingOrder.getOrderName();
        if(orderName!=null&&!orderName.equals("")){
            Contract contract = contractService.selectContractByContractId(orderName);
            contract.setContractStatus("2");
            contractService.updateContract(contract);

            Contract contract1 = (Contract) contract.clone();
            String contractPath = contract1.getContractDocument();
            String FilePath = profile + contractPath.substring(28);
            contract1.setContractDocument(SHAUtils.getSHA(FilePath));
            //fabric:合同信息上链
            FabricClient fabricClient = sdkService.initFabricClient();
            String initArgs[] = new String[2];
            initArgs[0] = contract.getContractId();
            String contractJsonString = JSONObject.toJSONString(contract);
            initArgs[1] = contractJsonString;
            sdkService.chainCodeOfInvoke(fabricClient,"update",initArgs);
        }
        return toAjax(whWarehousingOrderService.updateWhWarehousingOrder(whWarehousingOrder));
    }

    /**
     * 修改商品入库单状态-确认完成卸货
     */
    @RequiresPermissions("wh:warehousingOrder:editDischarge")
    @Log(title = "商品入库单主表", businessType = BusinessType.UPDATE)
    @PostMapping("/editDischarge")
    @ResponseBody
    public AjaxResult editDischarge(WhWarehousingOrder whWarehousingOrder) {
        whWarehousingOrder.setUpdateBy(ShiroUtils.getLoginName());
        return toAjax(whWarehousingOrderService.updateWhWarehousingOrder(whWarehousingOrder));
    }

    /**
     * 修改商品入库单状态-确认作废
     */
    @RequiresPermissions("wh:warehousingOrder:editRemove")
    @Log(title = "商品入库单主表", businessType = BusinessType.UPDATE)
    @PostMapping("/editRemove")
    @ResponseBody
    public AjaxResult editRemove(WhWarehousingOrder whWarehousingOrder) {
        return toAjax(whWarehousingOrderService.deleteWhWarehousingOrderByIds(whWarehousingOrder.getId().toString()));
    }

    /**
     * 收货作业界面
     *
     * @return
     */
    @RequiresPermissions("wh:warehousingOrder:viewWork")
    @GetMapping("/warehousingOrderWork")
    public String warehousingOrderWork() {
        return prefix + "/warehousingOrderWork";
    }

    /**
     * 跳转选择界面
     */
    @GetMapping("/selectWarehousingOrder/{desWarehouseId}")
    public String selectWarehousingOrder(@PathVariable("desWarehouseId") Long desWarehouseId, ModelMap mmap) {
        mmap.put("desWarehouseId", desWarehouseId);
        return prefix + "/selectWarehousingOrder";
    }

    /**
     * 查询商品入库管理列表(选择页面)
     */
    @PostMapping("/selectList")
    @ResponseBody
    public TableDataInfo selectList(WhWarehousingOrder whWarehousingOrder) {
//        whWarehousingOrder.setDeptId(ShiroUtils.getDeptId());
        startPage();
        List<WhWarehousingOrder> list = whWarehousingOrderService.selectWhWarehousingOrderList(whWarehousingOrder);
        return getDataTable(list);
    }


}
