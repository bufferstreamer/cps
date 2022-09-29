package com.cps.web.controller.user;

import java.util.List;

import com.cps.common.utils.DateUtils;
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
import com.cps.user.domain.ProductBid;
import com.cps.user.service.IProductBidService;
import com.cps.common.core.controller.BaseController;
import com.cps.common.core.domain.AjaxResult;
import com.cps.common.utils.poi.ExcelUtil;
import com.cps.common.core.page.TableDataInfo;

/**
 * ProductBidController
 *
 * @author cps
 * @date 2022-09-27
 */
@Controller
@RequestMapping("/user/productBid")
public class ProductBidController extends BaseController {
    private String prefix = "user/productBid";

    @Autowired
    private IProductBidService productBidService;

    @RequiresPermissions("user:productBid:view")
    @GetMapping()
    public String productBid() {
        return prefix + "/productBid";
    }

        /**
         * 查询ProductBid列表
         */
        @RequiresPermissions("user:productBid:list")
        @PostMapping("/list")
        @ResponseBody
        public TableDataInfo list(ProductBid productBid) {
            startPage();
            List<ProductBid> list = productBidService.selectProductBidList(productBid);
            return getDataTable(list);
        }

    /**
     * 导出ProductBid列表
     */
    @RequiresPermissions("user:productBid:export")
    @Log(title = "ProductBid", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(ProductBid productBid) {
        List<ProductBid> list = productBidService.selectProductBidList(productBid);
        ExcelUtil<ProductBid> util = new ExcelUtil<ProductBid>(ProductBid. class);
        return util.exportExcel(list, "ProductBid数据");
    }

        /**
         * 新增ProductBid
         */
        @GetMapping("/add")
        public String add() {
            return prefix + "/add";
        }

    /**
     * 新增保存ProductBid
     */
    @RequiresPermissions("user:productBid:add")
    @Log(title = "ProductBid", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(ProductBid productBid) {
        return toAjax(productBidService.insertProductBid(productBid));
    }

    /**
     * 修改ProductBid
     */
    @RequiresPermissions("user:productBid:edit")
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") String id, ModelMap mmap) {
        ProductBid productBid =
            productBidService.selectProductBidById(id);
        mmap.put("productBid", productBid);
        return prefix + "/edit";
    }

    /**
     * 修改保存ProductBid
     */
    @RequiresPermissions("user:productBid:edit")
    @Log(title = "ProductBid", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(ProductBid productBid) {
        return toAjax(productBidService.updateProductBid(productBid));
    }

        /**
         * 删除ProductBid
         */
        @RequiresPermissions("user:productBid:remove")
        @Log(title = "ProductBid", businessType = BusinessType.DELETE)
        @PostMapping("/remove")
        @ResponseBody
        public AjaxResult remove(String ids) {
            return toAjax(productBidService.deleteProductBidByIds(ids));
        }

    @PostMapping("search-status")
    @ResponseBody
    public String selectBidStatusByProductId(String skuId){
        ProductBid productBid=new ProductBid();
        productBid.setSkuId(skuId);
        List<ProductBid> list = productBidService.selectProductBidList(productBid);
        if (list.size()>0)
        {
            for (ProductBid temp:list)
            {
                if (DateUtils.getNowDate().after(temp.getStartDate())
                        &&DateUtils.getNowDate().before(temp.getEndDate())){
                    return "Y";
                }
            }
        }

        return "N";
    }
}
