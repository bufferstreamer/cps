package com.cps.product.controller;

import java.util.List;

import com.cps.common.utils.DateUtils;
import com.cps.common.utils.uuid.IdUtils;
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
import com.cps.product.domain.ProductIndexInfo;
import com.cps.product.service.IProductIndexInfoService;
import com.cps.common.core.controller.BaseController;
import com.cps.common.core.domain.AjaxResult;
import com.cps.common.utils.poi.ExcelUtil;
import com.cps.common.core.page.TableDataInfo;

/**
 * 产品指标信息（数值型）Controller
 * 
 * @author cps
 * @date 2022-09-03
 */
@Controller
@RequestMapping("/product/productIndexInfoManage")
public class ProductIndexInfoController extends BaseController
{
    private String prefix = "product/productIndexInfoManage";

    @Autowired
    private IProductIndexInfoService productIndexInfoService;

    @RequiresPermissions("product:productIndexInfoManage:view")
    @GetMapping()
    public String productIndexInfoManage()
    {
        return prefix + "/productIndexInfoManage";
    }

    /**
     * 查询产品指标信息（数值型）列表
     */
    @RequiresPermissions("product:productIndexInfoManage:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(ProductIndexInfo productIndexInfo)
    {
        startPage();
        List<ProductIndexInfo> list = productIndexInfoService.selectProductIndexInfoList(productIndexInfo);
        return getDataTable(list);
    }

    /**
     * 导出产品指标信息（数值型）列表
     */
    @RequiresPermissions("product:productIndexInfoManage:export")
    @Log(title = "产品指标信息（数值型）", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(ProductIndexInfo productIndexInfo)
    {
        List<ProductIndexInfo> list = productIndexInfoService.selectProductIndexInfoList(productIndexInfo);
        ExcelUtil<ProductIndexInfo> util = new ExcelUtil<ProductIndexInfo>(ProductIndexInfo.class);
        return util.exportExcel(list, "产品指标信息（数值型）数据");
    }

    /**
     * 新增产品指标信息（数值型）
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存产品指标信息（数值型）
     */
    @RequiresPermissions("product:productIndexInfoManage:add")
    @Log(title = "产品指标信息（数值型）", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(ProductIndexInfo productIndexInfo)
    {
        productIndexInfo.setProductIndexId(IdUtils.simpleUUID());
        productIndexInfo.setUpdateDatetime(DateUtils.parseDate(DateUtils.getTime()));
        return toAjax(productIndexInfoService.insertProductIndexInfo(productIndexInfo));
    }

    /**
     * 修改产品指标信息（数值型）
     */
    @RequiresPermissions("product:productIndexInfoManage:edit")
    @GetMapping("/edit/{productIndexId}")
    public String edit(@PathVariable("productIndexId") String productIndexId, ModelMap mmap)
    {
        ProductIndexInfo productIndexInfo = productIndexInfoService.selectProductIndexInfoByProductIndexId(productIndexId);
        mmap.put("productIndexInfo", productIndexInfo);
        return prefix + "/edit";
    }

    /**
     * 修改保存产品指标信息（数值型）
     */
    @RequiresPermissions("product:productIndexInfoManage:edit")
    @Log(title = "产品指标信息（数值型）", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(ProductIndexInfo productIndexInfo)
    {
        productIndexInfo.setUpdateDatetime(DateUtils.parseDate(DateUtils.getTime()));
        return toAjax(productIndexInfoService.updateProductIndexInfo(productIndexInfo));
    }

    /**
     * 删除产品指标信息（数值型）
     */
    @RequiresPermissions("product:productIndexInfoManage:remove")
    @Log(title = "产品指标信息（数值型）", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(productIndexInfoService.deleteProductIndexInfoByProductIndexIds(ids));
    }
}
