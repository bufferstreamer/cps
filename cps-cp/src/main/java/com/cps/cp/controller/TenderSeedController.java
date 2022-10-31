package com.cps.cp.controller;

import java.util.List;

import com.cps.cp.mapper.TenderSeedMapper;
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
import com.cps.cp.domain.TenderSeed;
import com.cps.cp.service.ITenderSeedService;
import com.cps.common.core.controller.BaseController;
import com.cps.common.core.domain.AjaxResult;
import com.cps.common.utils.poi.ExcelUtil;
import com.cps.common.core.page.TableDataInfo;

/**
 * 自动生成标书所需信息的子表Controller
 *
 * @author cps
 * @date 2022-10-27
 */
@Controller
@RequestMapping("/cp/seed")
public class TenderSeedController extends BaseController {
    private String prefix = "cp/seed";

    @Autowired
    private ITenderSeedService tenderSeedService;

    @RequiresPermissions("cp:seed:view")
    @GetMapping()
    public String seed() {
        return prefix + "/seed";
    }

        /**
         * 查询自动生成标书所需信息的子表列表
         */
        @RequiresPermissions("cp:seed:list")
        @PostMapping("/list")
        @ResponseBody
        public TableDataInfo list(TenderSeed tenderSeed) {
            startPage();
            List<TenderSeed> list = tenderSeedService.selectTenderSeedList(tenderSeed);
            return getDataTable(list);
        }

    /**
     * 导出自动生成标书所需信息的子表列表
     */
    @RequiresPermissions("cp:seed:export")
    @Log(title = "自动生成标书所需信息的子表", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(TenderSeed tenderSeed) {
        List<TenderSeed> list = tenderSeedService.selectTenderSeedList(tenderSeed);
        ExcelUtil<TenderSeed> util = new ExcelUtil<TenderSeed>(TenderSeed. class);
        return util.exportExcel(list, "自动生成标书所需信息的子表数据");
    }

        /**
         * 新增自动生成标书所需信息的子表
         */
        @GetMapping("/add")
        public String add() {
            return prefix + "/add";
        }

    /**
     * 新增保存自动生成标书所需信息的子表
     */
    @RequiresPermissions("cp:seed:add")
    @Log(title = "自动生成标书所需信息的子表", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(TenderSeed tenderSeed) {
        return toAjax(tenderSeedService.insertTenderSeed(tenderSeed));
    }

    /**
     * 修改自动生成标书所需信息的子表
     */
    @RequiresPermissions("cp:seed:edit")
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap) {
        TenderSeed tenderSeed =
            tenderSeedService.selectTenderSeedById(id);
        mmap.put("tenderSeed", tenderSeed);
        return prefix + "/edit";
    }

    /**
     * 修改保存自动生成标书所需信息的子表
     */
    @RequiresPermissions("cp:seed:edit")
    @Log(title = "自动生成标书所需信息的子表", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(TenderSeed tenderSeed) {
        return toAjax(tenderSeedService.updateTenderSeed(tenderSeed));
    }

        /**
         * 删除自动生成标书所需信息的子表
         */
        @RequiresPermissions("cp:seed:remove")
        @Log(title = "自动生成标书所需信息的子表", businessType = BusinessType.DELETE)
        @PostMapping("/remove")
        @ResponseBody
        public AjaxResult remove(String ids) {
            return toAjax(tenderSeedService.deleteTenderSeedByIds(ids));
        }
}
