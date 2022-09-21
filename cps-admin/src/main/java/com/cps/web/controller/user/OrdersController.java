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
import com.cps.user.domain.Category;
import com.cps.user.domain.OrderItem;
import com.cps.user.domain.Orders;
import com.cps.user.domain.Product;
import com.cps.user.service.ICategoryService;
import com.cps.user.service.IOrderItemService;
import com.cps.user.service.IOrdersService;
import com.cps.user.service.IProductService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
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

    @Autowired
    private ICategoryService categoryService;

    @Autowired
    private IProductService productService;

    /*跳转到指定的界面echart*/
    @GetMapping("/category/{parentId}")
    public String category(@PathVariable("parentId") String parentId, ModelMap map) {
        Category category = new Category();
        category.setParentId(parentId);
        List<Category> categoryList = categoryService.selectCategoryList(category);
        if (categoryList.size()!=0){
            map.put("categoryList", categoryList);
            return prefix+"/category";
        }
        else {
            //TODO:修改
            return item(Integer.valueOf(parentId),map);
        }
    }

    public String item(int categoryId, ModelMap map){
        Product product = new Product();
        product.setCategoryId(categoryId);
        List<Product> productList = productService.selectProductList(product);

        List<OrderItem> itemList = new ArrayList<>();
        for (Product temp:productList)
        {
            OrderItem item = new OrderItem();
            item.setProductId(temp.getProductId());
            itemList.addAll(orderItemService.selectOrderItemList(item));
        }

        HashMap<String,Integer> itemDict= new HashMap<>();
        for (OrderItem temp:itemList)
        {
            if (!itemDict.containsKey(temp.getProductName()))
            {
                itemDict.put(temp.getProductName(),0);
            }

            int value = itemDict.get(temp.getProductName());
            value+=temp.getBuyCounts();
            itemDict.replace(temp.getProductName(),value);
        }

        map.put("itemDict",itemDict);
        return prefix+"/item";
    }

    @GetMapping("/receiver/{productName}")
    public String receiver(@PathVariable("productName") String productName, ModelMap map) {
        OrderItem item = new OrderItem();
        item.setProductName(productName);
        List<OrderItem> itemList = orderItemService.selectOrderItemList(item);
        HashMap<String, Integer> orderDict = new HashMap<>();
        for (OrderItem temp:itemList)
        {
            String receiverName = ordersService
                    .selectOrdersByOrderId(temp.getOrderId())
                    .getReceiverName();
            if (!orderDict.containsKey(receiverName)){
                orderDict.put(receiverName,0);
            }

            int value=orderDict.get(receiverName);
            value+=temp.getBuyCounts();
            orderDict.replace(receiverName,value);
        }

        map.put("productName",productName);
        map.put("orderDict", orderDict);
        return prefix + "/receiver";
    }

    @Autowired
    private IOrderItemService orderItemService;

    @RequiresPermissions("user:orders:detail")
    @GetMapping("/detail/{orderId}")
    public String detail(@PathVariable("orderId") String orderId, ModelMap map){
        OrderItem item=new OrderItem();
        item.setOrderId(orderId);
        List<OrderItem> itemList = orderItemService.selectOrderItemList(item);

        float total = 0;
        for (OrderItem temp:itemList)
        {
            temp.setProductPrice(temp.getProductPrice().setScale(2,BigDecimal.ROUND_DOWN));
            temp.setTotalAmount(temp.getTotalAmount().setScale(2,BigDecimal.ROUND_DOWN));
            total += temp.getTotalAmount().doubleValue();
        }
        map.put("itemList",itemList);
        map.put("total",String.format("%.2f", total));

        return prefix+"/detail";
    }
}
