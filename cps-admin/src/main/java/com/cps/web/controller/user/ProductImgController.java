package com.cps.web.controller.user;

import java.util.HashMap;
import java.util.List;

import com.cps.user.domain.Product;
import com.cps.user.domain.ProductParams;
import com.cps.user.service.IProductService;
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
import com.cps.user.domain.ProductImg;
import com.cps.user.service.IProductImgService;
import com.cps.common.core.controller.BaseController;
import com.cps.common.core.domain.AjaxResult;
import com.cps.common.utils.poi.ExcelUtil;
import com.cps.common.core.page.TableDataInfo;

/**
 * 商品图片 Controller
 * 
 * @author cps
 * @date 2022-09-11
 */
@Controller
@RequestMapping("/user/img")
public class ProductImgController extends BaseController
{
    private String prefix = "user/img";

    @Autowired
    private IProductImgService productImgService;

    @Autowired
    private IProductService productService;

    @RequiresPermissions("user:img:view")
    @GetMapping()
    public String img()
    {
        return prefix + "/img";
    }

    /**
     * 查询商品图片 列表
     */
    @RequiresPermissions("user:img:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(ProductImg productImg)
    {
        startPage();
        List<ProductImg> list = productImgService.selectProductImgList(productImg);
        return getDataTable(list);
    }

    /**
     * 导出商品图片 列表
     */
    @RequiresPermissions("user:img:export")
    @Log(title = "商品图片 ", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(ProductImg productImg)
    {
        List<ProductImg> list = productImgService.selectProductImgList(productImg);
        ExcelUtil<ProductImg> util = new ExcelUtil<ProductImg>(ProductImg.class);
        return util.exportExcel(list, "商品图片 数据");
    }

    /**
     * 新增商品图片 
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存商品图片 
     */
    @RequiresPermissions("user:img:add")
    @Log(title = "商品图片 ", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(ProductImg productImg)
    {
        return toAjax(productImgService.insertProductImg(productImg));
    }

    /**
     * 修改商品图片 
     */
    @RequiresPermissions("user:img:edit")
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") String id, ModelMap mmap)
    {
        ProductImg productImg = productImgService.selectProductImgById(id);
        mmap.put("productImg", productImg);
        return prefix + "/edit";
    }

    /**
     * 修改保存商品图片 
     */
    @RequiresPermissions("user:img:edit")
    @Log(title = "商品图片 ", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(ProductImg productImg)
    {
        return toAjax(productImgService.updateProductImg(productImg));
    }

    /**
     * 删除商品图片 
     */
    @RequiresPermissions("user:img:remove")
    @Log(title = "商品图片 ", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(productImgService.deleteProductImgByIds(ids));
    }

    @ResponseBody
    @GetMapping("/getProductName")
    public AjaxResult getProductNames() {
        ProductImg productImg = new ProductImg();
        List<ProductImg> list = productImgService.selectProductImgList(productImg);
        HashMap<String,String> name = new HashMap<>();
        for(ProductImg productImg1:list){
            Product product = productService.selectProductByProductId(productImg1.getItemId());
            name.put(productImg1.getItemId(),product.getProductName());
        }
        AjaxResult ajaxResult = new AjaxResult().success(name);
        return ajaxResult;
    }
}
