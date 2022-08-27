package com.cps.web.controller.submit;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cps.common.core.controller.BaseController;

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

    @RequiresPermissions({"audit:businessCreditEvaluationManage:add","audit:businessLicenseManage:add"})
    @GetMapping()
    public String supermarket()
    {
        return prefix + "/supermarket";
    }
}