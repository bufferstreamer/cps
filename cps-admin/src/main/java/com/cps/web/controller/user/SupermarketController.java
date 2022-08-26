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
import com.cps.user.domain.Supermarket;
import com.cps.user.service.ISupermarketService;

/**
 * 超市角色Controller
 * 
 * @author cps
 * @date 2022-08-18
 */
@Controller
@RequestMapping("/user/supermarket")
public class SupermarketController extends BaseController
{
    private String prefix = "user/supermarket";

    @Autowired
    private ISupermarketService supermarketService;

    @RequiresPermissions("user:supermarket:view")
    @GetMapping()
    public String supermarket()
    {
        return prefix + "/supermarket";
    }

    /**
     * 查询超市角色列表
     */
    @RequiresPermissions("user:supermarket:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Supermarket supermarket)
    {
        startPage();
        List<Supermarket> list = supermarketService.selectSupermarketList(supermarket);
        return getDataTable(list);
    }

    /**
     * 导出超市角色列表
     */
    @RequiresPermissions("user:supermarket:export")
    @Log(title = "超市角色", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Supermarket supermarket)
    {
        List<Supermarket> list = supermarketService.selectSupermarketList(supermarket);
        ExcelUtil<Supermarket> util = new ExcelUtil<Supermarket>(Supermarket.class);
        return util.exportExcel(list, "超市角色数据");
    }

    /**
     * 新增超市角色
     */
    @GetMapping("/add")
    public String add()
    {
    	System.out.println("add");
        return prefix + "/add";
    }

    /**
     * 新增保存超市角色
     */
    @RequiresPermissions("user:supermarket:add")
    @Log(title = "超市角色", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(Supermarket supermarket)
    {
    	System.out.println("addSave");
        return toAjax(supermarketService.insertSupermarket(supermarket));
    }

    /**
     * 修改超市角色
     */
    @RequiresPermissions("user:supermarket:edit")
    @GetMapping("/edit/{shopId}")
    public String edit(@PathVariable("shopId") Long shopId, ModelMap mmap)
    {
        Supermarket supermarket = supermarketService.selectSupermarketByShopId(shopId);
        mmap.put("supermarket", supermarket);
        return prefix + "/edit";
    }

    /**
     * 修改保存超市角色
     */
    @RequiresPermissions("user:supermarket:edit")
    @Log(title = "超市角色", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(Supermarket supermarket)
    {
        return toAjax(supermarketService.updateSupermarket(supermarket));
    }

    /**
     * 删除超市角色
     */
    @RequiresPermissions("user:supermarket:remove")
    @Log(title = "超市角色", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(supermarketService.deleteSupermarketByShopIds(ids));
    }
}
