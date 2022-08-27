package com.cps.web.controller.submit;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cps.common.core.controller.BaseController;

@Controller
@RequestMapping("/submit/supplier")
public class SupplierSubmitController extends BaseController {
    private String prefix = "submit/supplier";

    @RequiresPermissions({"audit:supplierLicenseManage:add","audit:supplierCreditEvaluationManage:add"})
    @GetMapping()
    public String supermarket()
    {
        return prefix + "/supplier";
    }
}
