package com.cps.web.controller.system;

import com.cps.common.core.controller.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * 忘记密码
 *
 * @author cps
 */
@Controller
public class SysForgetmmController extends BaseController {

    @GetMapping("/forgetmm")
    public String forgetmm() {
        return "forgetmm";
    }

    @GetMapping("/forgetmmEmail")
    public String forgetmmEmail() {
        return "forgetmm_email";
    }
}
