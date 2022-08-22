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
import com.cps.common.enums.BusinessType;
import com.cps.user.domain.Manager;
import com.cps.user.service.IManagerService;
import com.cps.common.core.controller.BaseController;
import com.cps.common.core.domain.AjaxResult;
import com.cps.common.utils.poi.ExcelUtil;
import com.cps.common.core.page.TableDataInfo;

/**
 * 管理员角色Controller
 * 
 * @author cps
 * @date 2022-08-18
 */
@Controller
@RequestMapping("/user/manager")
public class ManagerController extends BaseController
{
    private String prefix = "user/manager";

    @Autowired
    private IManagerService managerService;

    @RequiresPermissions("user:manager:view")
    @GetMapping()
    public String manager()
    {
        return prefix + "/manager";
    }

    /**
     * 查询管理员角色列表
     */
    @RequiresPermissions("user:manager:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Manager manager)
    {
        startPage();
        List<Manager> list = managerService.selectManagerList(manager);
        return getDataTable(list);
    }

    /**
     * 导出管理员角色列表
     */
    @RequiresPermissions("user:manager:export")
    @Log(title = "管理员角色", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Manager manager)
    {
        List<Manager> list = managerService.selectManagerList(manager);
        ExcelUtil<Manager> util = new ExcelUtil<Manager>(Manager.class);
        return util.exportExcel(list, "管理员角色数据");
    }

    /**
     * 新增管理员角色
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存管理员角色
     */
    @RequiresPermissions("user:manager:add")
    @Log(title = "管理员角色", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(Manager manager)
    {
        return toAjax(managerService.insertManager(manager));
    }

    /**
     * 修改管理员角色
     */
    @RequiresPermissions("user:manager:edit")
    @GetMapping("/edit/{managerId}")
    public String edit(@PathVariable("managerId") Long managerId, ModelMap mmap)
    {
        Manager manager = managerService.selectManagerByManagerId(managerId);
        mmap.put("manager", manager);
        return prefix + "/edit";
    }

    /**
     * 修改保存管理员角色
     */
    @RequiresPermissions("user:manager:edit")
    @Log(title = "管理员角色", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(Manager manager)
    {
        return toAjax(managerService.updateManager(manager));
    }

    /**
     * 删除管理员角色
     */
    @RequiresPermissions("user:manager:remove")
    @Log(title = "管理员角色", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(managerService.deleteManagerByManagerIds(ids));
    }
}
