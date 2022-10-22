package com.cps.sales.controller;

import java.util.List;

import com.cps.sales.domain.SalesForecastVO;
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
import com.cps.sales.domain.SalesForecast;
import com.cps.sales.service.ISalesForecastService;
import com.cps.common.core.controller.BaseController;
import com.cps.common.core.domain.AjaxResult;
import com.cps.common.utils.poi.ExcelUtil;
import com.cps.common.core.page.TableDataInfo;

/**
 * 销量预测Controller
 *
 * @author cps
 * @date 2022-10-20
 */
@Controller
@RequestMapping("/sales/forecast")
public class SalesForecastController extends BaseController {
    private String prefix = "sales/forecast";

    @Autowired
    private ISalesForecastService salesForecastService;

    @RequiresPermissions("sales:forecast:view")
    @GetMapping()
    public String forecast() {
        return prefix + "/forecast";
    }

    /**
     * 查询销量预测列表
     */
    @RequiresPermissions("sales:forecast:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(SalesForecast salesForecast) {
        startPage();
        List<SalesForecastVO> list = salesForecastService.selectSalesForecastVOList(salesForecast);
        System.out.println(list);
        return getDataTable(list);
    }

    /**
     * 导出销量预测列表
     */
    @RequiresPermissions("sales:forecast:export")
    @Log(title = "销量预测", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(SalesForecast salesForecast) {
        List<SalesForecast> list = salesForecastService.selectSalesForecastList(salesForecast);
        ExcelUtil<SalesForecast> util = new ExcelUtil<SalesForecast>(SalesForecast. class);
        return util.exportExcel(list, "销量预测数据");
    }

        /**
         * 新增销量预测
         */
        @GetMapping("/add")
        public String add() {
            return prefix + "/add";
        }

    /**
     * 新增保存销量预测
     */
    @RequiresPermissions("sales:forecast:add")
    @Log(title = "销量预测", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(SalesForecast salesForecast) {
        return toAjax(salesForecastService.insertSalesForecast(salesForecast));
    }

    /**
     * 修改销量预测
     */
    @RequiresPermissions("sales:forecast:edit")
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap) {
        SalesForecast salesForecast =
            salesForecastService.selectSalesForecastById(id);
        mmap.put("salesForecast", salesForecast);
        return prefix + "/edit";
    }

    /**
     * 修改保存销量预测
     */
    @RequiresPermissions("sales:forecast:edit")
    @Log(title = "销量预测", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(SalesForecast salesForecast) {
        return toAjax(salesForecastService.updateSalesForecast(salesForecast));
    }

        /**
         * 删除销量预测
         */
        @RequiresPermissions("sales:forecast:remove")
        @Log(title = "销量预测", businessType = BusinessType.DELETE)
        @PostMapping("/remove")
        @ResponseBody
        public AjaxResult remove(String ids) {
            return toAjax(salesForecastService.deleteSalesForecastByIds(ids));
        }
}
