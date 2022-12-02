package com.cps.web.controller.user;

import java.util.HashMap;
import java.util.List;

import com.cps.user.domain.Product;
import com.cps.user.domain.ProductImg;
import com.cps.user.domain.ProductSku;
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
import com.cps.user.domain.ProductParams;
import com.cps.user.service.IProductParamsService;
import com.cps.common.core.controller.BaseController;
import com.cps.common.core.domain.AjaxResult;
import com.cps.common.utils.poi.ExcelUtil;
import com.cps.common.core.page.TableDataInfo;

/**
 * 商品参数 Controller
 * 
 * @author cps
 * @date 2022-09-11
 */
@Controller
@RequestMapping("/user/params")
public class ProductParamsController extends BaseController
{
    private String prefix = "user/params";

    @Autowired
    private IProductParamsService productParamsService;

    @Autowired
    private IProductService productService;

    @RequiresPermissions("user:params:view")
    @GetMapping()
    public String params()
    {
        return prefix + "/params";
    }

    /**
     * 查询商品参数 列表
     */
    @RequiresPermissions("user:params:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(ProductParams productParams)
    {
        startPage();
        List<ProductParams> list = productParamsService.selectProductParamsList(productParams);
        return getDataTable(list);
    }

    /**
     * 导出商品参数 列表
     */
    @RequiresPermissions("user:params:export")
    @Log(title = "商品参数 ", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(ProductParams productParams)
    {
        List<ProductParams> list = productParamsService.selectProductParamsList(productParams);
        ExcelUtil<ProductParams> util = new ExcelUtil<ProductParams>(ProductParams.class);
        return util.exportExcel(list, "商品参数 数据");
    }

    /**
     * 新增商品参数 
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存商品参数 
     */
    @RequiresPermissions("user:params:add")
    @Log(title = "商品参数 ", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(ProductParams productParams)
    {
        ProductParams productParams1 = new ProductParams();
        productParams1.setProductId(productParams.getProductId());
        List<ProductParams> productParamsList = productParamsService.selectProductParamsList(productParams1);
        if(productParamsList.size()>0){
            return error("商品相关信息重复");
        }
        return toAjax(productParamsService.insertProductParams(productParams));
    }

    /**
     * 修改商品参数 
     */
    @RequiresPermissions("user:params:edit")
    @GetMapping("/edit/{paramId}")
    public String edit(@PathVariable("paramId") String paramId, ModelMap mmap)
    {
        ProductParams productParams = productParamsService.selectProductParamsByParamId(paramId);
        mmap.put("productParams", productParams);
        return prefix + "/edit";
    }

    /**
     * 修改保存商品参数 
     */
    @RequiresPermissions("user:params:edit")
    @Log(title = "商品参数 ", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(ProductParams productParams)
    {
        ProductParams productParams1 = new ProductParams();
        productParams1.setProductId(productParams.getProductId());
        List<ProductParams> productParamsList = productParamsService.selectProductParamsList(productParams1);
        for(ProductParams productParams2:productParamsList){
            if(productParams2.getParamId()!=productParams.getParamId()){
                return error("商品相关信息重复");
            }
        }
        return toAjax(productParamsService.updateProductParams(productParams));
    }

    /**
     * 删除商品参数 
     */
    @RequiresPermissions("user:params:remove")
    @Log(title = "商品参数 ", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(productParamsService.deleteProductParamsByParamIds(ids));
    }

    @ResponseBody
    @GetMapping("/getProductName")
    public AjaxResult getProductNames() {
        Product product = new Product();
        List<Product> list = productService.selectProductList(product);
        HashMap<String,String> name = new HashMap<>();
        for(Product product1:list){
            name.put(product1.getProductId(),product1.getProductName());
        }
        AjaxResult ajaxResult = new AjaxResult().success(name);
        return ajaxResult;
    }
}
