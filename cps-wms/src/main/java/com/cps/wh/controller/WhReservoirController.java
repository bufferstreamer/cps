package com.cps.wh.controller;

import com.cps.common.annotation.Log;
import com.cps.common.core.controller.BaseController;
import com.cps.common.core.domain.AjaxResult;
import com.cps.common.core.page.TableDataInfo;
import com.cps.common.enums.BusinessType;
import com.cps.common.utils.ShiroUtils;
import com.cps.common.utils.poi.ExcelUtil;
import com.cps.wh.domain.WhReservoir;
import com.cps.wh.service.IWhReservoirService;
import com.cps.wh.vo.WhReservoirVo;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 库区设置Controller
 * 
 * @author miki
 * @date 2021-05-21
 */
@Controller
@RequestMapping("/wh/reservoir")
public class WhReservoirController extends BaseController
{
    private String prefix = "wh/reservoir";

    @Autowired
    private IWhReservoirService whReservoirService;

    @RequiresPermissions("wh:reservoir:view")
    @GetMapping()
    public String reservoir()
    {
        return prefix + "/reservoir";
    }

    /**
     * 查询库区设置列表
     */
    @RequiresPermissions("wh:reservoir:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(WhReservoir whReservoir)
    {
        whReservoir.setDeptId(ShiroUtils.getDeptId());
        startPage();
        List<WhReservoirVo> list = whReservoirService.selectWhReservoirVoList(whReservoir);
        return getDataTable(list);
    }

    /**
     * 导出库区设置列表
     */
    @RequiresPermissions("wh:reservoir:export")
    @Log(title = "库区设置", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(WhReservoir whReservoir)
    {
        List<WhReservoir> list = whReservoirService.selectWhReservoirList(whReservoir);
        ExcelUtil<WhReservoir> util = new ExcelUtil<WhReservoir>(WhReservoir.class);
        return util.exportExcel(list, "库区设置数据");
    }

    /**
     * 新增库区设置
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存库区设置
     */
    @RequiresPermissions("wh:reservoir:add")
    @Log(title = "库区设置", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(WhReservoir whReservoir)
    {
        whReservoir.setDeptId(ShiroUtils.getDeptId());
        whReservoir.setCreateBy(ShiroUtils.getLoginName());
        return toAjax(whReservoirService.insertWhReservoir(whReservoir));
    }

    /**
     * 修改库区设置
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        WhReservoir whReservoir = whReservoirService.selectWhReservoirById(id);
        mmap.put("whReservoir", whReservoir);
        return prefix + "/edit";
    }

    /**
     * 修改保存库区设置
     */
    @RequiresPermissions("wh:reservoir:edit")
    @Log(title = "库区设置", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(WhReservoir whReservoir)
    {
        whReservoir.setUpdateBy(ShiroUtils.getLoginName());
        return toAjax(whReservoirService.updateWhReservoir(whReservoir));
    }

    /**
     * 删除库区设置
     */
    @RequiresPermissions("wh:reservoir:remove")
    @Log(title = "库区设置", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(whReservoirService.deleteWhReservoirByIds(ids));
    }

    /**
     * 校验库区编码
     */
    @PostMapping("/checkReservoirCodeUnique")
    @ResponseBody
    public String checkReservoirCodeUnique(WhReservoir whReservoir)
    {
        return whReservoirService.checkReservoirCodeUnique(whReservoir.getReservoirCode());
    }

    /**
     * ajax查询库区设置列表
     */
    @PostMapping("/ajaxList")
    @ResponseBody
    public AjaxResult ajaxList(WhReservoir whReservoir)
    {
        whReservoir.setDeptId(ShiroUtils.getDeptId());
        List<WhReservoirVo> list = whReservoirService.selectWhReservoirVoList(whReservoir);
        return AjaxResult.success(list);
    }
}
