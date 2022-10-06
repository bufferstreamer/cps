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
import org.apache.poi.util.Internal;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.aspectj.weaver.ast.Or;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.math.BigDecimal;
import java.util.*;

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

    //键：productId,值：销量
    private HashMap<String,Long> itemSoldDict=new HashMap<>();
    //键：categoryId,值：销量
    private HashMap<String,Long> categorySoldDict = new HashMap<>();

    private void InitCategorySoldDict(){
        List<OrderItem> itemList = orderItemService.selectOrderItemList(new OrderItem());
        for (OrderItem item:itemList)
        {
            String productId = item.getProductId();
            long oldValue = itemSoldDict.getOrDefault(productId,(long)0);
            itemSoldDict.put(productId,oldValue+item.getBuyCounts());
        }
        for (String productId:itemSoldDict.keySet())
        {
            String categoryId = productService.selectProductByProductId(productId).getCategoryId().toString();
            long oldValue = categorySoldDict.getOrDefault(categoryId, (long)0);
            categorySoldDict.put(categoryId,oldValue+itemSoldDict.getOrDefault(productId,(long)0));
        }
        List<String> keys=new ArrayList<>(categorySoldDict.keySet());

        for (String categoryId:keys)
        {
            long subValue = categorySoldDict.getOrDefault(categoryId,(long)0);
            String parentId = categoryService.selectCategoryByCategoryId(categoryId).getParentId();
            while (!parentId.equals("0")){
                long oldValue = categorySoldDict.getOrDefault(parentId,(long)0);
                categorySoldDict.put(parentId,oldValue+subValue);
                parentId = categoryService.selectCategoryByCategoryId(parentId).getParentId();
            }
        }
    }

    /*跳转到指定的界面echart*/
    @GetMapping("/category/{parentId}")
    public String category(@PathVariable("parentId") String parentId, ModelMap map) {
        if (categorySoldDict.size()==0){
            InitCategorySoldDict();
        }

        Category category = new Category();
        category.setParentId(parentId);
        List<Category> categoryList = categoryService.selectCategoryList(category);
        if (categoryList.size()!=0)
        {
            List<Long> soldNumList = new ArrayList<>();
            for (int i=0;i<categoryList.size();i++){
                String categoryId = categoryList.get(i).getCategoryId();
                if (categorySoldDict.containsKey(categoryId)){
                    long soldNum = categorySoldDict.get(categoryId);
                    soldNumList.add(soldNum);
                }
                else {
                    categoryList.remove(i);
                    i--;
                }
            }
            map.put("categoryList",categoryList);
            map.put("soldNumList",soldNumList);
            map.put("categoryName","");
            if (!parentId.equals("0")){
                map.put("categoryName",categoryService.selectCategoryByCategoryId(parentId).getCategoryName());
            }
            return prefix+"/category";
        }
        else {
            return item(parentId,map);
        }
    }

    public String item(String categoryId, ModelMap map){
        List<Product> productList = new ArrayList<>();
        List<Long> soldNumList = new ArrayList<>();
        for (String productId:itemSoldDict.keySet())
        {
            Product product = productService.selectProductByProductId(productId);
            if (product.getCategoryId().equals(categoryId)){
                productList.add(product);
                soldNumList.add(itemSoldDict.get(productId));
            }
        }

        map.put("productList",productList);
        map.put("soldNumList",soldNumList);
        return prefix+"/item";
    }

    @GetMapping("/receiver/{productId}")
    public String receiver(@PathVariable("productId") String productId, ModelMap map) {
        OrderItem orderItem = new OrderItem();
        orderItem.setProductId(productId);
        List<OrderItem> itemList = orderItemService.selectOrderItemList(orderItem);

        HashMap<String,Long> soldNumDict = new HashMap<>();
        for (OrderItem temp:itemList)
        {
            String receiverName = ordersService
                    .selectOrdersByOrderId(temp.getOrderId())
                    .getReceiverName();
            long oldValue = soldNumDict.getOrDefault(receiverName,(long)0);
            soldNumDict.put(receiverName,oldValue+temp.getBuyCounts());
        }
        map.put("productName",productService.selectProductByProductId(productId).getProductName());
        map.put("soldNumDict", soldNumDict);
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
