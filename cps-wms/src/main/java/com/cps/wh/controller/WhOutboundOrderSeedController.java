package com.cps.wh.controller;

import com.cps.common.annotation.Log;
import com.cps.common.core.controller.BaseController;
import com.cps.common.core.domain.AjaxResult;
import com.cps.common.core.page.TableDataInfo;
import com.cps.common.enums.BusinessType;
import com.cps.common.utils.ShiroUtils;
import com.cps.wh.domain.WhOutboundOrderSeed;
import com.cps.wh.model.OutboundOrderSeedModel;
import com.cps.wh.service.IWhOutboundOrderSeedService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 商品出库单子表Controller
 *
 * @author miki
 * @date 2021-06-07
 */
@Controller
@RequestMapping("/wh/outboundOrderSeed")
public class WhOutboundOrderSeedController extends BaseController {
    private String prefix = "wh/outboundOrderSeed";

    @Autowired
    private IWhOutboundOrderSeedService whOutboundOrderSeedService;

    @RequiresPermissions("wh:outboundOrderSeed:view")
    @GetMapping()
    public String outboundOrderSeed() {
        return prefix + "/outboundOrderSeed";
    }

    /**
     * 查询商品出库单子表列表
     */
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(WhOutboundOrderSeed whOutboundOrderSeed) {
        startPage();
        List<WhOutboundOrderSeed> list = whOutboundOrderSeedService.selectWhOutboundOrderSeedList(whOutboundOrderSeed);
        return getDataTable(list);
    }

    /**
     * 新增保存商品出库单子表
     */
    @Log(title = "商品出库单子表", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(WhOutboundOrderSeed whOutboundOrderSeed) {
        whOutboundOrderSeed.setDeptId(ShiroUtils.getDeptId());
        whOutboundOrderSeed.setCreateBy(ShiroUtils.getLoginName());
        return toAjax(whOutboundOrderSeedService.insertWhOutboundOrderSeed(whOutboundOrderSeed));
    }

    /**
     * 修改保存商品出库单子表
     */
    @Log(title = "商品出库单子表", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(WhOutboundOrderSeed whOutboundOrderSeed) {
        whOutboundOrderSeed.setUpdateBy(ShiroUtils.getLoginName());
        return toAjax(whOutboundOrderSeedService.updateWhOutboundOrderSeedRecalculate(whOutboundOrderSeed));
    }

    /**
     * 删除商品出库单子表
     */
    @Log(title = "商品出库单子表", businessType = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        return toAjax(whOutboundOrderSeedService.deleteWhOutboundOrderSeedByIds(ids));
    }

    /**
     * 确认拣货界面
     *
     * @return
     */
    @GetMapping("/editComplete/{id}")
    public String editComplete(@PathVariable("id") Long outboundOrderId, ModelMap mmap) {
        mmap.put("outboundOrderId", outboundOrderId);
        return prefix + "/editComplete";
    }

    /**
     * 确认拣货
     *
     * @return
     */
    @RequiresPermissions("wh:outboundOrderSeed::editComplete")
    @Log(title = "商品入库单子", businessType = BusinessType.UPDATE)
    @PostMapping("/editCompleteSave")
    @ResponseBody
    public AjaxResult editCompleteSave(OutboundOrderSeedModel outboundOrderSeedModel) {
        outboundOrderSeedModel.setUpdateBy(ShiroUtils.getLoginName());
        return toAjax(whOutboundOrderSeedService.updateCompleteSave(outboundOrderSeedModel));
    }
}
