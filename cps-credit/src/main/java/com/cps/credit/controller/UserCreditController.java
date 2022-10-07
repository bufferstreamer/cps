package com.cps.credit.controller;

import java.util.List;

import com.cps.common.utils.DateUtils;
import com.cps.common.utils.uuid.IdUtils;
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
import com.cps.credit.domain.UserCredit;
import com.cps.credit.service.IUserCreditService;
import com.cps.common.core.controller.BaseController;
import com.cps.common.core.domain.AjaxResult;
import com.cps.common.utils.poi.ExcelUtil;
import com.cps.common.core.page.TableDataInfo;

/**
 * 用户信用评价管理Controller
 *
 * @author cps
 * @date 2022-09-16
 */
@Controller
@RequestMapping("/credit/userCreditManage")
public class UserCreditController extends BaseController {
    private String prefix = "credit/userCreditManage";

    @Autowired
    private IUserCreditService userCreditService;

    @RequiresPermissions("credit:userCreditManage:view")
    @GetMapping()
    public String userCreditManage() {
        return prefix + "/userCreditManage";
    }

        /**
         * 查询用户信用评价管理列表
         */
        @RequiresPermissions("credit:userCreditManage:list")
        @PostMapping("/list")
        @ResponseBody
        public TableDataInfo list(UserCredit userCredit) {
            startPage();
            List<UserCredit> list = userCreditService.selectUserCreditList(userCredit);
            // 如果列表没有就重新初始化
            if(list==null||list.size()==0){
                userCreditService.initUserCredit();
                list = userCreditService.selectUserCreditList(userCredit);
            }
            return getDataTable(list);
        }

    /**
     * 导出用户信用评价管理列表
     */
    @RequiresPermissions("credit:userCreditManage:export")
    @Log(title = "用户信用评价管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(UserCredit userCredit) {
        List<UserCredit> list = userCreditService.selectUserCreditList(userCredit);
        ExcelUtil<UserCredit> util = new ExcelUtil<UserCredit>(UserCredit. class);
        return util.exportExcel(list, "用户信用评价管理数据");
    }

        /**
         * 新增用户信用评价管理
         */
        @GetMapping("/add")
        public String add() {
            return prefix + "/add";
        }

    /**
     * 新增保存用户信用评价管理
     */
    @RequiresPermissions("credit:userCreditManage:add")
    @Log(title = "用户信用评价管理", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(UserCredit userCredit) {
        userCredit.setUserCreditId(IdUtils.simpleUUID());
        userCredit.setUpdateDatetime(DateUtils.parseDate(DateUtils.getTime()));
        return toAjax(userCreditService.insertUserCredit(userCredit));
    }

    /**
     * 修改用户信用评价管理
     */
    @RequiresPermissions("credit:userCreditManage:edit")
    @GetMapping("/edit/{userCreditId}")
    public String edit(@PathVariable("userCreditId") String userCreditId, ModelMap mmap) {
        UserCredit userCredit =
            userCreditService.selectUserCreditByUserCreditId(userCreditId);
        mmap.put("userCredit", userCredit);
        return prefix + "/edit";
    }

    /**
     * 修改保存用户信用评价管理
     */
    @RequiresPermissions("credit:userCreditManage:edit")
    @Log(title = "用户信用评价管理", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(UserCredit userCredit) {
        return toAjax(userCreditService.updateUserCreditByAdmin(userCredit));
    }

        /**
         * 删除用户信用评价管理
         */
        @RequiresPermissions("credit:userCreditManage:remove")
        @Log(title = "用户信用评价管理", businessType = BusinessType.DELETE)
        @PostMapping("/remove")
        @ResponseBody
        public AjaxResult remove(String ids) {
            return toAjax(userCreditService.deleteUserCreditByUserCreditIds(ids));
        }
}
