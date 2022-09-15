package com.cps.web.controller.user;

import com.cps.common.annotation.Log;
import com.cps.common.core.controller.BaseController;
import com.cps.common.core.domain.AjaxResult;
import com.cps.common.core.domain.entity.SysUser;
import com.cps.common.core.page.TableDataInfo;
import com.cps.common.enums.BusinessType;
import com.cps.common.utils.StringUtils;
import com.cps.common.utils.poi.ExcelUtil;
import com.cps.system.service.ISysUserService;
import com.cps.user.domain.Orders;
import com.cps.user.service.IOrdersService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/**
 * 订单Controller
 *
 * @author cps
 * @date 2022-09-08
 */
@Controller
@RequestMapping("/user/orders")
public class OrdersController extends BaseController {
    private String prefix = "user/orders";

    @Autowired
    private IOrdersService ordersService;
    @Autowired
    private ISysUserService sysUserService;

    @RequiresPermissions("user:orders:view")
    @GetMapping()
    public String orders() {
        return prefix + "/orders";
    }

    /**
     * 查询订单列表
     */
    @RequiresPermissions("user:orders:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Orders orders, HttpServletRequest request) {
        startPage();
        String userName = request.getParameter("userName");

        List<Orders> resultList;
        if (!StringUtils.isEmpty(userName)) {
            resultList = new ArrayList<>();
            List<SysUser> userList = sysUserService.selectUserByUserName(userName);
            for (SysUser user : userList) {
                String userId = user.getUserId().toString();
                orders.setUserId(userId);
                List<Orders> tempList = ordersService.selectOrdersList(orders);
                resultList.addAll(tempList);
            }
        } else {
            resultList = ordersService.selectOrdersList(orders);
        }

        return getDataTable(resultList);
    }

    /**
     * 导出订单列表
     */
    @RequiresPermissions("user:orders:export")
    @Log(title = "订单", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Orders orders) {
        List<Orders> list = ordersService.selectOrdersList(orders);
        ExcelUtil<Orders> util = new ExcelUtil<Orders>(Orders.class);
        return util.exportExcel(list, "订单数据");
    }

    /**
     * 新增订单
     */
    @GetMapping("/add")
    public String add() {
        return prefix + "/add";
    }

    /**
     * 新增保存订单
     */
    @RequiresPermissions("user:orders:add")
    @Log(title = "订单", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(Orders orders) {
        return toAjax(ordersService.insertOrders(orders));
    }

    /**
     * 修改订单
     */
    @RequiresPermissions("user:orders:edit")
    @GetMapping("/edit/{orderId}")
    public String edit(@PathVariable("orderId") String orderId, ModelMap mmap) {
        Orders orders = ordersService.selectOrdersByOrderId(orderId);
        mmap.put("orders", orders);
        return prefix + "/edit";
    }

    /**
     * 修改保存订单
     */
    @RequiresPermissions("user:orders:edit")
    @Log(title = "订单", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(Orders orders) {
        return toAjax(ordersService.updateOrders(orders));
    }

    /**
     * 删除订单
     */
    @RequiresPermissions("user:orders:remove")
    @Log(title = "订单", businessType = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        return toAjax(ordersService.deleteOrdersByOrderIds(ids));
    }

    /*跳转到指定的界面echart*/
    @GetMapping("/goods")
    public String goods(ModelMap map) {
        List<Orders> list = ordersService.selectOrdersList(new Orders());
        HashMap<String, Integer> orderDict = new HashMap<>();
        for (Orders order : list) {
            String[] untitledArr = order.getUntitled().split(",");
            for (String untitled : untitledArr) {
                if (StringUtils.isEmpty(untitled))
                    continue;

                if (!orderDict.containsKey(untitled)) {
                    orderDict.put(untitled, 0);
                }

                int value = orderDict.get(untitled);
                orderDict.replace(untitled, value + 1);
            }
        }

        map.put("orderDict", orderDict);
        return prefix + "/goods";
    }

    @GetMapping("/receiver/{goodName}")
    public String receiver(@PathVariable("goodName") String goodName, ModelMap map) {
        List<Orders> list = ordersService.selectOrdersList(new Orders());
        HashMap<String, Integer> orderDict = new HashMap<>();
        for (Orders order : list) {
            String[] untitledArr = order.getUntitled().split(",");
            for (String untitled : untitledArr) {
                if (untitled.equals(goodName)) {
                    String receiverName = order.getReceiverName();
                    if (!orderDict.containsKey(receiverName)) {
                        orderDict.put(receiverName, 0);
                    }

                    int value = orderDict.get(receiverName);
                    orderDict.replace(receiverName, value + 1);
                }
            }
        }

        map.put("goodName",goodName);
        map.put("orderDict", orderDict);
        return prefix + "/receiver";
    }
}
