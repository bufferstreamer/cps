package com.cps.web.controller.user;

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
import com.cps.common.core.controller.BaseController;
import com.cps.common.core.domain.AjaxResult;
import com.cps.common.core.page.TableDataInfo;
import com.cps.common.enums.BusinessType;
import com.cps.common.utils.poi.ExcelUtil;
import com.cps.user.domain.Cooperative;
import com.cps.user.service.ICooperativeService;

/**
 * 供销社角色Controller
 * 
 * @author cps
 * @date 2022-08-18
 */
@Controller
@RequestMapping("/user/cooperative")
public class CooperativeController extends BaseController
{
    private String prefix = "user/cooperative";

    @Autowired
    private ICooperativeService cooperativeService;

    @RequiresPermissions("user:cooperative:view")
    @GetMapping()
    public String cooperative()
    {
        return prefix + "/cooperative";
    }

    /**
     * 查询供销社角色列表
     */
    @RequiresPermissions("user:cooperative:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Cooperative cooperative)
    {
        startPage();
        List<Cooperative> list = cooperativeService.selectCooperativeList(cooperative);
        return getDataTable(list);
    }

    /**
     * 导出供销社角色列表
     */
    @RequiresPermissions("user:cooperative:export")
    @Log(title = "供销社角色", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Cooperative cooperative)
    {
        List<Cooperative> list = cooperativeService.selectCooperativeList(cooperative);
        ExcelUtil<Cooperative> util = new ExcelUtil<Cooperative>(Cooperative.class);
        return util.exportExcel(list, "供销社角色数据");
    }

    /**
     * 新增供销社角色
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存供销社角色
     */
    @RequiresPermissions("user:cooperative:add")
    @Log(title = "供销社角色", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(Cooperative cooperative)
    {
        return toAjax(cooperativeService.insertCooperative(cooperative));
    }

    /**
     * 修改供销社角色
     */
    @RequiresPermissions("user:cooperative:edit")
    @GetMapping("/edit/{gxsId}")
    public String edit(@PathVariable("gxsId") Long gxsId, ModelMap mmap)
    {
        Cooperative cooperative = cooperativeService.selectCooperativeByGxsId(gxsId);
        mmap.put("cooperative", cooperative);
        return prefix + "/edit";
    }

    /**
     * 修改保存供销社角色
     */
    @RequiresPermissions("user:cooperative:edit")
    @Log(title = "供销社角色", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(Cooperative cooperative)
    {
        return toAjax(cooperativeService.updateCooperative(cooperative));
    }

    /**
     * 删除供销社角色
     */
    @RequiresPermissions("user:cooperative:remove")
    @Log(title = "供销社角色", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(cooperativeService.deleteCooperativeByGxsIds(ids));
    }
}
