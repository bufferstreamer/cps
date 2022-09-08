package com.cps.web.controller.user;

import com.cps.common.annotation.Log;
import com.cps.common.core.controller.BaseController;
import com.cps.common.core.domain.AjaxResult;
import com.cps.common.core.page.TableDataInfo;
import com.cps.common.enums.BusinessType;
import com.cps.common.utils.poi.ExcelUtil;
import com.cps.user.domain.Manager;
import com.cps.user.domain.Orders;
import com.cps.user.service.IManagerService;
import com.cps.user.service.OrdersService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 管理员角色Controller
 * 
 * @author cps
 * @date 2022-08-18
 */
@Controller
@RequestMapping("/user/orders")
public class OrdersController extends BaseController
{
    private String prefix = "user/orders";

    @Autowired
    private OrdersService ordersService;


    /**
     * 查询管理员角色列表
     */
    @GetMapping("/list")
    @ResponseBody
    public List<Orders> list()
    {
        List<Orders> list = ordersService.getOrders();
        return list;
    }

    @GetMapping("/{userId}")
    @ResponseBody
    public List<Orders> getOrdersByUser(@PathVariable("userId") String userId,@RequestHeader("token")String token)
    {
        List<Orders> list = ordersService.getOrdersByUser(userId);
        return list;
    }
}
