/*
package com.cps.cp.controller;

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
import com.cps.cp.domain.ProductSkuSeed;
import com.cps.cp.service.IProductSkuSeedService;
import com.cps.common.core.controller.BaseController;
import com.cps.common.core.domain.AjaxResult;
import com.cps.common.utils.poi.ExcelUtil;
import com.cps.common.core.page.TableDataInfo;

*/
/**
 * sku子表Controller
 *
 * @author cps
 * @date 2022-10-26
 *//*

@Controller
@RequestMapping("/cp/seed")
public class ProductSkuSeedController extends BaseController {
    private String prefix = "cp/seed";

    @Autowired
    private IProductSkuSeedService productSkuSeedService;

    @RequiresPermissions("cp:seed:view")
    @GetMapping()
    public String seed() {
        return prefix + "/seed";
    }

        */
/**
         * 查询sku子表列表
         *//*

        @RequiresPermissions("cp:seed:list")
        @PostMapping("/list")
        @ResponseBody
        public TableDataInfo list(ProductSkuSeed productSkuSeed) {
            startPage();
            List<ProductSkuSeed> list = productSkuSeedService.selectProductSkuSeedList(productSkuSeed);
            return getDataTable(list);
        }

    */
/**
     * 导出sku子表列表
     *//*

    @RequiresPermissions("cp:seed:export")
    @Log(title = "sku子表", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(ProductSkuSeed productSkuSeed) {
        List<ProductSkuSeed> list = productSkuSeedService.selectProductSkuSeedList(productSkuSeed);
        ExcelUtil<ProductSkuSeed> util = new ExcelUtil<ProductSkuSeed>(ProductSkuSeed. class);
        return util.exportExcel(list, "sku子表数据");
    }

        */
/**
         * 新增sku子表
         *//*

        @GetMapping("/add")
        public String add() {
            return prefix + "/add";
        }

    */
/**
     * 新增保存sku子表
     *//*

    @RequiresPermissions("cp:seed:add")
    @Log(title = "sku子表", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(ProductSkuSeed productSkuSeed) {
        return toAjax(productSkuSeedService.insertProductSkuSeed(productSkuSeed));
    }

    */
/**
     * 修改sku子表
     *//*

    @RequiresPermissions("cp:seed:edit")
    @GetMapping("/edit/{skuId}")
    public String edit(@PathVariable("skuId") String skuId, ModelMap mmap) {
        ProductSkuSeed productSkuSeed =
            productSkuSeedService.selectProductSkuSeedBySkuId(skuId);
        mmap.put("productSkuSeed", productSkuSeed);
        return prefix + "/edit";
    }

    */
/**
     * 修改保存sku子表
     *//*

    @RequiresPermissions("cp:seed:edit")
    @Log(title = "sku子表", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(ProductSkuSeed productSkuSeed) {
        return toAjax(productSkuSeedService.updateProductSkuSeed(productSkuSeed));
    }

        */
/**
         * 删除sku子表
         *//*

        @RequiresPermissions("cp:seed:remove")
        @Log(title = "sku子表", businessType = BusinessType.DELETE)
        @PostMapping("/remove")
        @ResponseBody
        public AjaxResult remove(String ids) {
            return toAjax(productSkuSeedService.deleteProductSkuSeedBySkuIds(ids));
        }
}
*/
