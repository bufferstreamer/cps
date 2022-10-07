package com.cps.credit.controller;

import java.util.ArrayList;
import java.util.List;

import com.cps.common.core.domain.entity.SysUser;
import com.cps.common.utils.ShiroUtils;
import com.cps.system.service.ISysUserService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.security.SecurityProperties;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.cps.common.annotation.Log;
import com.cps.common.enums.BusinessType;
import com.cps.credit.domain.UserCreditUpdateInfo;
import com.cps.credit.service.IUserCreditUpdateInfoService;
import com.cps.common.core.controller.BaseController;
import com.cps.common.core.domain.AjaxResult;
import com.cps.common.utils.poi.ExcelUtil;
import com.cps.common.core.page.TableDataInfo;

/**
 * 用户信用评分更新信息Controller
 *
 * @author cps
 * @date 2022-10-04
 */
@Controller
@RequestMapping("/credit/userCreditUpdateInfo")
public class UserCreditUpdateInfoController extends BaseController {
    private String prefix = "credit/userCreditUpdateInfo";

    @Autowired
    private IUserCreditUpdateInfoService userCreditUpdateInfoService;

    @Autowired
    private ISysUserService userService;

    @RequiresPermissions("credit:userCreditUpdateInfo:view")
    @GetMapping()
    public String userCreditUpdateInfo() {
        return prefix + "/userCreditUpdateInfo";
    }

        /**
         * 查询用户信用评分更新信息列表
         */
        @RequiresPermissions("credit:userCreditUpdateInfo:list")
        @PostMapping("/list")
        @ResponseBody
        public TableDataInfo list(UserCreditUpdateInfo userCreditUpdateInfo) {
            Long userId = ShiroUtils.getUserId();
            List<UserCreditUpdateInfo> list;
            if(userService.isSupperMarketOrSupplier(userId)){
                startPage();
                list = userCreditUpdateInfoService.selectUserCreditUpdateInfoListByUserId(userId);
            }else{
                startPage();
                list = userCreditUpdateInfoService.selectUserCreditUpdateInfoList(userCreditUpdateInfo);
            }

            return getDataTable(list);
        }

    /**
     * 导出用户信用评分更新信息列表
     */
    @RequiresPermissions("credit:userCreditUpdateInfo:export")
    @Log(title = "用户信用评分更新信息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(UserCreditUpdateInfo userCreditUpdateInfo) {
        Long userId = ShiroUtils.getUserId();
        List<UserCreditUpdateInfo> list;
        if(userService.isSupperMarketOrSupplier(userId)){
            startPage();
            list = userCreditUpdateInfoService.selectUserCreditUpdateInfoListByUserId(userId);
        }else{
            startPage();
            list = userCreditUpdateInfoService.selectUserCreditUpdateInfoList(userCreditUpdateInfo);
        }
        ExcelUtil<UserCreditUpdateInfo> util = new ExcelUtil<UserCreditUpdateInfo>(UserCreditUpdateInfo. class);
        return util.exportExcel(list, "用户信用评分更新信息数据");
    }

        /**
         * 新增用户信用评分更新信息
         */
        @GetMapping("/add")
        public String add() {
            return prefix + "/add";
        }

    /**
     * 新增保存用户信用评分更新信息
     */
    @RequiresPermissions("credit:userCreditUpdateInfo:add")
    @Log(title = "用户信用评分更新信息", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(UserCreditUpdateInfo userCreditUpdateInfo) {
        return toAjax(userCreditUpdateInfoService.insertUserCreditUpdateInfo(userCreditUpdateInfo));
    }

    /**
     * 修改用户信用评分更新信息
     */
    @RequiresPermissions("credit:userCreditUpdateInfo:edit")
    @GetMapping("/edit/{userCreditUpdateInfoId}")
    public String edit(@PathVariable("userCreditUpdateInfoId") String userCreditUpdateInfoId, ModelMap mmap) {
        UserCreditUpdateInfo userCreditUpdateInfo =
            userCreditUpdateInfoService.selectUserCreditUpdateInfoByUserCreditUpdateInfoId(userCreditUpdateInfoId);
        mmap.put("userCreditUpdateInfo", userCreditUpdateInfo);
        return prefix + "/edit";
    }

    /**
     * 修改保存用户信用评分更新信息
     */
    @RequiresPermissions("credit:userCreditUpdateInfo:edit")
    @Log(title = "用户信用评分更新信息", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(UserCreditUpdateInfo userCreditUpdateInfo) {
        return toAjax(userCreditUpdateInfoService.updateUserCreditUpdateInfo(userCreditUpdateInfo));
    }

        /**
         * 删除用户信用评分更新信息
         */
        @RequiresPermissions("credit:userCreditUpdateInfo:remove")
        @Log(title = "用户信用评分更新信息", businessType = BusinessType.DELETE)
        @PostMapping("/remove")
        @ResponseBody
        public AjaxResult remove(String ids) {
            return toAjax(userCreditUpdateInfoService.deleteUserCreditUpdateInfoByUserCreditUpdateInfoIds(ids));
        }
}
