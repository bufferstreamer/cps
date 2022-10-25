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
import com.cps.cp.domain.TrenderInformationSeed;
import com.cps.cp.service.ITrenderInformationSeedService;
import com.cps.common.core.controller.BaseController;
import com.cps.common.core.domain.AjaxResult;
import com.cps.common.utils.poi.ExcelUtil;
import com.cps.common.core.page.TableDataInfo;

/**
 * 生成标书小项Controller
 *
 * @author cps
 * @date 2022-10-24
 */
@Controller
@RequestMapping("/trenderSeed/operate")
public class TrenderInformationSeedController extends BaseController {
    private String prefix = "trenderSeed/operate";

    @Autowired
    private ITrenderInformationSeedService trenderInformationSeedService;

    @RequiresPermissions("trenderSeed:operate:view")
    @GetMapping()
    public String operate() {
        return prefix + "/operate";
    }

        /**
         * 查询生成标书小项列表
         */
        @RequiresPermissions("trenderSeed:operate:list")
        @PostMapping("/list")
        @ResponseBody
        public TableDataInfo list(TrenderInformationSeed trenderInformationSeed) {
            startPage();
            List<TrenderInformationSeed> list = trenderInformationSeedService.selectTrenderInformationSeedList(trenderInformationSeed);
            return getDataTable(list);
        }

    /**
     * 导出生成标书小项列表
     */
    @RequiresPermissions("trenderSeed:operate:export")
    @Log(title = "生成标书小项", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(TrenderInformationSeed trenderInformationSeed) {
        List<TrenderInformationSeed> list = trenderInformationSeedService.selectTrenderInformationSeedList(trenderInformationSeed);
        ExcelUtil<TrenderInformationSeed> util = new ExcelUtil<TrenderInformationSeed>(TrenderInformationSeed. class);
        return util.exportExcel(list, "生成标书小项数据");
    }

        /**
         * 新增生成标书小项
         */
        @GetMapping("/add")
        public String add() {
            return prefix + "/add";
        }

    /**
     * 新增保存生成标书小项
     */
    @RequiresPermissions("trenderSeed:operate:add")
    @Log(title = "生成标书小项", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(TrenderInformationSeed trenderInformationSeed) {
        return toAjax(trenderInformationSeedService.insertTrenderInformationSeed(trenderInformationSeed));
    }

    /**
     * 修改生成标书小项
     */
    @RequiresPermissions("trenderSeed:operate:edit")
    @GetMapping("/edit/{seedId}")
    public String edit(@PathVariable("seedId") Long seedId, ModelMap mmap) {
        TrenderInformationSeed trenderInformationSeed =
            trenderInformationSeedService.selectTrenderInformationSeedBySeedId(seedId);
        mmap.put("trenderInformationSeed", trenderInformationSeed);
        return prefix + "/edit";
    }

    /**
     * 修改保存生成标书小项
     */
    @RequiresPermissions("trenderSeed:operate:edit")
    @Log(title = "生成标书小项", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(TrenderInformationSeed trenderInformationSeed) {
        return toAjax(trenderInformationSeedService.updateTrenderInformationSeed(trenderInformationSeed));
    }

        /**
         * 删除生成标书小项
         */
        @RequiresPermissions("trenderSeed:operate:remove")
        @Log(title = "生成标书小项", businessType = BusinessType.DELETE)
        @PostMapping("/remove")
        @ResponseBody
        public AjaxResult remove(String ids) {
            return toAjax(trenderInformationSeedService.deleteTrenderInformationSeedBySeedIds(ids));
        }
}
