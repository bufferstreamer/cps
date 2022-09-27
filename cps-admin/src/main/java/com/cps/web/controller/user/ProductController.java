package com.cps.web.controller.user;

import java.util.List;

import com.cps.user.domain.Category;
import com.cps.user.service.ICategoryService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import com.cps.common.annotation.Log;
import com.cps.common.enums.BusinessType;
import com.cps.user.domain.Product;
import com.cps.user.service.IProductService;
import com.cps.common.core.controller.BaseController;
import com.cps.common.core.domain.AjaxResult;
import com.cps.common.utils.poi.ExcelUtil;
import com.cps.common.core.page.TableDataInfo;

/**
 * 商品 商品信息相关：分类，商品图片，商品规格，商品参数Controller
 * 
 * @author cps
 * @date 2022-09-11
 */
@Controller
@RequestMapping("/user/product")
public class ProductController extends BaseController
{
    private String prefix = "user/product";

    @Autowired
    private IProductService productService;

    @Autowired
    private ICategoryService categoryService;

    @RequiresPermissions("user:product:view")
    @GetMapping()
    public String product()
    {
        return prefix + "/product";
    }

    /**
     * 查询商品 商品信息相关：分类，商品图片，商品规格，商品参数列表
     */
    @RequiresPermissions("user:product:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Product product)
    {
        startPage();
        List<Product> list = productService.selectProductList(product);
        return getDataTable(list);
    }

    /**
     * 导出商品 商品信息相关：分类，商品图片，商品规格，商品参数列表
     */
    @RequiresPermissions("user:product:export")
    @Log(title = "商品 商品信息相关：分类，商品图片，商品规格，商品参数", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Product product)
    {
        List<Product> list = productService.selectProductList(product);
        ExcelUtil<Product> util = new ExcelUtil<Product>(Product.class);
        return util.exportExcel(list, "商品 商品信息相关：分类，商品图片，商品规格，商品参数数据");
    }

    /**
     * 新增商品 商品信息相关：分类，商品图片，商品规格，商品参数
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存商品 商品信息相关：分类，商品图片，商品规格，商品参数
     */
//    @CrossOrigin
    @RequiresPermissions("user:product:add")
    @Log(title = "商品 商品信息相关：分类，商品图片，商品规格，商品参数", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(Product product)
    {
        return toAjax(productService.insertProduct(product));
    }

    /**
     * 修改商品 商品信息相关：分类，商品图片，商品规格，商品参数
     */
    @RequiresPermissions("user:product:edit")
    @GetMapping("/edit/{productId}")
    public String edit(@PathVariable("productId") String productId, ModelMap mmap)
    {
        Product product = productService.selectProductByProductId(productId);
        mmap.put("product", product);
        return prefix + "/edit";
    }

    /**
     * 修改保存商品 商品信息相关：分类，商品图片，商品规格，商品参数
     */
    @RequiresPermissions("user:product:edit")
    @Log(title = "商品 商品信息相关：分类，商品图片，商品规格，商品参数", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(Product product)
    {
        return toAjax(productService.updateProduct(product));
    }

    /**
     * 删除商品 商品信息相关：分类，商品图片，商品规格，商品参数
     */
    @RequiresPermissions("user:product:remove")
    @Log(title = "商品 商品信息相关：分类，商品图片，商品规格，商品参数", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(productService.deleteProductByProductIds(ids));
    }

//    @ResponseBody
//    @GetMapping("/Firstcategory")
//    public String category(ModelMap map) {
//        Category category = new Category();
//        category.setParentId("0");
//        List<Category> categoryList = categoryService.selectCategoryList(category);
//        map.put("categoryList", categoryList);
//        System.out.println("此函数已被调用");
//        return prefix + "/add";
//
//    }

    @CrossOrigin
    @ResponseBody
    @GetMapping("/Firstcategory")
    public List<Category> category(ModelMap map) {
        Category category = new Category();
        category.setParentId("0");
        List<Category> categoryList = categoryService.selectCategoryList(category);
//        map.put("categoryList", categoryList);
        return categoryList;

    }

    @ResponseBody
    @GetMapping("/category/{parentId}")
    public List<Category> category(@PathVariable("parentId") String parentId,ModelMap map) {
        Category category = new Category();
        category.setParentId(parentId);
        List<Category> categoryList = categoryService.selectCategoryList(category);
//        map.put("categoryList2", categoryList);
        return categoryList;

    }
}
