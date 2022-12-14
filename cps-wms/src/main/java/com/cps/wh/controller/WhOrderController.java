package com.cps.wh.controller;

import com.cps.common.annotation.Log;
import com.cps.common.core.controller.BaseController;
import com.cps.common.core.domain.AjaxResult;
import com.cps.common.enums.BusinessType;
import com.cps.common.utils.ShiroUtils;
import com.cps.wh.model.OrderModel;
import com.cps.wh.service.IWhOrderService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 单据精灵ontroller
 *
 * @author miki
 * @date 2021-06-11
 */
@Controller
@RequestMapping("/wh/order")
public class WhOrderController extends BaseController {
    private String prefix = "wh/order";

    @Autowired
    private IWhOrderService whOrderService;

    @RequiresPermissions("wh:order:view")
    @GetMapping()
    public String outboundOrder() {
        return prefix + "/order";
    }

    /**
     * 修改保存商品出库单主表-装车发货
     */
    @RequiresPermissions("wh:order:edit")
    @Log(title = "单据精灵", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult edit(OrderModel orderModel) {
        orderModel.setCreateBy(ShiroUtils.getLoginName());
        return toAjax(whOrderService.edit(orderModel));
    }
}
