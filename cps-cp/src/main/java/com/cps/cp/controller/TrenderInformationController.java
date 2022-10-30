package com.cps.cp.controller;

import java.math.BigDecimal;
import java.util.List;

import com.cps.common.constant.OrderConstants;
import com.cps.common.enums.WhOutboundOrderType;
import com.cps.common.utils.DateUtils;
import com.cps.common.utils.OrderNumGeneratorUtils;
import com.cps.common.utils.ShiroUtils;
import com.cps.cp.domain.TenderSeed;
import com.cps.cp.service.ITenderSeedService;
import com.cps.wh.domain.WhOutboundOrder;
import com.cps.wh.enums.OutboundOrderStatus;
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
import com.cps.cp.domain.TrenderInformation;
import com.cps.cp.service.ITrenderInformationService;
import com.cps.common.core.controller.BaseController;
import com.cps.common.core.domain.AjaxResult;
import com.cps.common.utils.poi.ExcelUtil;
import com.cps.common.core.page.TableDataInfo;

/**
 * 自动生成标书信息Controller
 *
 * @author cps
 * @date 2022-10-24
 */
@Controller
@RequestMapping("/trender/information")
public class TrenderInformationController extends BaseController {
    private String prefix = "trender/information";

    @Autowired
    private ITrenderInformationService trenderInformationService;

    @Autowired
    private ITenderSeedService tenderSeedService;

    @RequiresPermissions("trender:information:view")
    @GetMapping()
    public String information() {
        return prefix + "/information";
    }

        /**
         * 查询自动生成标书信息列表
         */
        @RequiresPermissions("trender:information:list")
        @PostMapping("/list")
        @ResponseBody
        public TableDataInfo list(TrenderInformation trenderInformation) {
            startPage();
            List<TrenderInformation> list = trenderInformationService.selectTrenderInformationList(trenderInformation);
            return getDataTable(list);
        }

    /**
     * 导出自动生成标书信息列表
     */
    @RequiresPermissions("trender:information:export")
    @Log(title = "自动生成标书信息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(TrenderInformation trenderInformation) {
        List<TrenderInformation> list = trenderInformationService.selectTrenderInformationList(trenderInformation);
        ExcelUtil<TrenderInformation> util = new ExcelUtil<TrenderInformation>(TrenderInformation. class);
        return util.exportExcel(list, "自动生成标书信息数据");
    }

        /**
         * 新增自动生成标书信息
         */
        @GetMapping("/add")
        public String add(ModelMap modelMap) {

            //新增出库订单
            TrenderInformation trenderInformation = new TrenderInformation();
            TenderSeed tenderSeed = new TenderSeed();
            tenderSeed.setSkuId("css");
//            trenderInformationService.insertTrenderInformation(trenderInformation);
            tenderSeedService.insertTenderSeed(tenderSeed);
            modelMap.put("tenderSeed", tenderSeed);
            return prefix + "/add";
        }

    /**
     * 新增保存自动生成标书信息
     */
    @RequiresPermissions("trender:information:add")
    @Log(title = "自动生成标书信息", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(TrenderInformation trenderInformation) {

        return toAjax(trenderInformationService.insertTrenderInformation(trenderInformation));
    }

    /**
     * 修改自动生成标书信息
     */
    @RequiresPermissions("trender:information:edit")
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap) {
        TrenderInformation trenderInformation =
            trenderInformationService.selectTrenderInformationById(id);
        mmap.put("trenderInformation", trenderInformation);
        return prefix + "/edit";
    }

    /**
     * 修改保存自动生成标书信息
     */
    @RequiresPermissions("trender:information:edit")
    @Log(title = "自动生成标书信息", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(TrenderInformation trenderInformation) {
        return toAjax(trenderInformationService.updateTrenderInformation(trenderInformation));
    }

        /**
         * 删除自动生成标书信息
         */
        @RequiresPermissions("trender:information:remove")
        @Log(title = "自动生成标书信息", businessType = BusinessType.DELETE)
        @PostMapping("/remove")
        @ResponseBody
        public AjaxResult remove(String ids) {
            return toAjax(trenderInformationService.deleteTrenderInformationByIds(ids));
        }
}
