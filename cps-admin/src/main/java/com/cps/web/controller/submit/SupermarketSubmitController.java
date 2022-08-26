package com.cps.web.controller.submit;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cps.common.annotation.Log;
import com.cps.common.core.controller.BaseController;
import com.cps.common.core.domain.AjaxResult;
import com.cps.common.enums.BusinessType;
import com.cps.user.domain.Supermarket;
import com.cps.user.service.ISupermarketService;

/**
 * 超市角色Controller
 * 
 * @author cps
 * @date 2022-08-26
 */
@Controller
@RequestMapping("/submit/supermarket")
public class SupermarketSubmitController extends BaseController
{
    private String prefix = "submit/supermarket";

    @RequiresPermissions("submit:supermarket:view")
    @GetMapping()
    public String supermarket()
    {
        return prefix + "/supermarket";
    }
    
    /**
     * 新增供销社角色
     */
    @GetMapping("/add")
    public String add()
    {
    	
    	System.out.println("add");
    	return "audit/businessCreditEvaluationManage/add";
//        return prefix + "/add";
    }
    
    @Autowired
    private ISupermarketService supermarketService;
    
    /**
     * 新增保存超市角色
     */
    @RequiresPermissions("user:supermarket:add")
    @Log(title = "超市角色", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(Supermarket supermarket)
    {
        return toAjax(supermarketService.insertSupermarket(supermarket));
    }
}
