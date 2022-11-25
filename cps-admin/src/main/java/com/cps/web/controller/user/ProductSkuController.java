package com.cps.web.controller.user;

import java.util.HashMap;
import java.util.List;

import com.cps.user.domain.Product;
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
import com.cps.user.domain.ProductSku;
import com.cps.user.service.IProductSkuService;
import com.cps.common.core.controller.BaseController;
import com.cps.common.core.domain.AjaxResult;
import com.cps.common.utils.poi.ExcelUtil;
import com.cps.common.core.page.TableDataInfo;

/**
 * 商品规格 每一件商品都有不同的规格，不同的规格又有不同的价格和优惠力度，规格为此设计Controller
 *
 * @author cps
 * @date 2022-09-11
 */
@Controller
@RequestMapping("/user/sku")
public class ProductSkuController extends BaseController {
    private String prefix = "user/sku";

    @Autowired
    private IProductSkuService productSkuService;

    @Autowired
    private IProductService productService;


    @RequiresPermissions("user:sku:view")
    @GetMapping()
    public String sku() {
        return prefix + "/sku";
    }

    /**
     * 查询商品规格 每一件商品都有不同的规格，不同的规格又有不同的价格和优惠力度，规格为此设计列表
     */
    @RequiresPermissions("user:sku:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(ProductSku productSku) {
        startPage();
        List<ProductSku> list = productSkuService.selectProductSkuList(productSku);
        return getDataTable(list);
    }

    /**
     * 导出商品规格 每一件商品都有不同的规格，不同的规格又有不同的价格和优惠力度，规格为此设计列表
     */
    @RequiresPermissions("user:sku:export")
    @Log(title = "商品规格 每一件商品都有不同的规格，不同的规格又有不同的价格和优惠力度，规格为此设计", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(ProductSku productSku) {
        List<ProductSku> list = productSkuService.selectProductSkuList(productSku);
        ExcelUtil<ProductSku> util = new ExcelUtil<ProductSku>(ProductSku.class);
        return util.exportExcel(list, "商品规格 每一件商品都有不同的规格，不同的规格又有不同的价格和优惠力度，规格为此设计数据");
    }

    /**
     * 新增商品规格 每一件商品都有不同的规格，不同的规格又有不同的价格和优惠力度，规格为此设计
     */
    @GetMapping("/add")
    public String add() {
        return prefix + "/add";
    }

    /**
     * 新增保存商品规格 每一件商品都有不同的规格，不同的规格又有不同的价格和优惠力度，规格为此设计
     */
    @RequiresPermissions("user:sku:add")
    @Log(title = "商品规格 每一件商品都有不同的规格，不同的规格又有不同的价格和优惠力度，规格为此设计", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(ProductSku productSku) {
        return toAjax(productSkuService.insertProductSku(productSku));
    }

    /**
     * 修改商品规格 每一件商品都有不同的规格，不同的规格又有不同的价格和优惠力度，规格为此设计
     */
    @RequiresPermissions("user:sku:edit")
    @GetMapping("/edit/{skuId}")
    public String edit(@PathVariable("skuId") String skuId, ModelMap mmap) {
        ProductSku productSku = productSkuService.selectProductSkuBySkuId(skuId);
        mmap.put("productSku", productSku);
        return prefix + "/edit";
    }

    /**
     * 修改保存商品规格 每一件商品都有不同的规格，不同的规格又有不同的价格和优惠力度，规格为此设计
     */
    @RequiresPermissions("user:sku:edit")
    @Log(title = "商品规格 每一件商品都有不同的规格，不同的规格又有不同的价格和优惠力度，规格为此设计", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(ProductSku productSku) {
        return toAjax(productSkuService.updateProductSku(productSku));
    }

    /**
     * 删除商品规格 每一件商品都有不同的规格，不同的规格又有不同的价格和优惠力度，规格为此设计
     */
    @RequiresPermissions("user:sku:remove")
    @Log(title = "商品规格 每一件商品都有不同的规格，不同的规格又有不同的价格和优惠力度，规格为此设计", businessType = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        return toAjax(productSkuService.deleteProductSkuBySkuIds(ids));
    }

    @ResponseBody
    @GetMapping("/getByName/{productName}")
    public AjaxResult getProductByName(@PathVariable("productName") String skuName) {
        ProductSku productSku = new ProductSku();
        productSku.setSkuName(skuName);
        List<ProductSku> productSkus = productSkuService.selectProductSkuList(productSku);
        return AjaxResult.success(productSkus);
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

    /**
     * 选择sku
     */
    @GetMapping("/selectSkus/{productId}")
    public String selectProductSkus(ModelMap mmap, @PathVariable("productId") String productId) {
        productId = productId.substring(1, productId.length() - 1);
        mmap.put("productId", productId);
        return prefix + "/selectSkus";
    }

    /**
     * 查询sku列表(选择页面)
     */
    @PostMapping("/selectList/{productId}")
    @ResponseBody
    public TableDataInfo selectList(@PathVariable("productId") String productId) {
        startPage();
        productId = productId.substring(1, productId.length() - 1);
        List<ProductSku> list = productSkuService.selectProductSkuByProductId(productId);
        return getDataTable(list);
    }
}
