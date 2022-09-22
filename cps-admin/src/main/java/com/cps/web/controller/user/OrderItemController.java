package com.cps.web.controller.user;

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
import com.cps.user.domain.OrderItem;
import com.cps.user.service.IOrderItemService;
import com.cps.common.core.controller.BaseController;
import com.cps.common.core.domain.AjaxResult;
import com.cps.common.utils.poi.ExcelUtil;
import com.cps.common.core.page.TableDataInfo;

/**
 * 订单项/快照Controller
 *
 * @author cps
 * @date 2022-09-22
 */
@Controller
@RequestMapping("/user/orderItem")
public class OrderItemController extends BaseController {
    private String prefix = "user/orderItem";

    @Autowired
    private IOrderItemService orderItemService;

    @RequiresPermissions("user:orderItem:view")
    @GetMapping()
    public String orderItem() {
        return prefix + "/orderItem";
    }

        /**
         * 查询订单项/快照列表
         */
        @RequiresPermissions("user:orderItem:list")
        @PostMapping("/list")
        @ResponseBody
        public TableDataInfo list(OrderItem orderItem) {
            startPage();
            List<OrderItem> list = orderItemService.selectOrderItemList(orderItem);
            return getDataTable(list);
        }

    /**
     * 导出订单项/快照列表
     */
    @RequiresPermissions("user:orderItem:export")
    @Log(title = "订单项/快照", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(OrderItem orderItem) {
        List<OrderItem> list = orderItemService.selectOrderItemList(orderItem);
        ExcelUtil<OrderItem> util = new ExcelUtil<OrderItem>(OrderItem. class);
        return util.exportExcel(list, "订单项/快照数据");
    }

        /**
         * 新增订单项/快照
         */
        @GetMapping("/add")
        public String add() {
            return prefix + "/add";
        }

    /**
     * 新增保存订单项/快照
     */
    @RequiresPermissions("user:orderItem:add")
    @Log(title = "订单项/快照", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(OrderItem orderItem) {
        return toAjax(orderItemService.insertOrderItem(orderItem));
    }

    /**
     * 修改订单项/快照
     */
    @RequiresPermissions("user:orderItem:edit")
    @GetMapping("/edit/{itemId}")
    public String edit(@PathVariable("itemId") String itemId, ModelMap mmap) {
        OrderItem orderItem =
            orderItemService.selectOrderItemByItemId(itemId);
        mmap.put("orderItem", orderItem);
        return prefix + "/edit";
    }

    /**
     * 修改保存订单项/快照
     */
    @RequiresPermissions("user:orderItem:edit")
    @Log(title = "订单项/快照", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(OrderItem orderItem) {
        return toAjax(orderItemService.updateOrderItem(orderItem));
    }

        /**
         * 删除订单项/快照
         */
        @RequiresPermissions("user:orderItem:remove")
        @Log(title = "订单项/快照", businessType = BusinessType.DELETE)
        @PostMapping("/remove")
        @ResponseBody
        public AjaxResult remove(String ids) {
            return toAjax(orderItemService.deleteOrderItemByItemIds(ids));
        }
}
