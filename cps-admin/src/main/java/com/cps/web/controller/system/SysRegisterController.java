package com.cps.web.controller.system;

import com.cps.common.utils.ServletUtils;
import com.cps.system.service.ISysUserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.cps.common.core.controller.BaseController;
import com.cps.common.core.domain.AjaxResult;
import com.cps.common.core.domain.entity.SysUser;
import com.cps.common.utils.StringUtils;
import com.cps.framework.shiro.service.SysRegisterService;
import com.cps.system.service.ISysConfigService;

/**
 * 注册验证
 * 
 * @author cps
 */
@Controller
public class SysRegisterController extends BaseController
{
    @Autowired
    private SysRegisterService registerService;

    @Autowired
    private ISysConfigService configService;

    @Autowired
    private ISysUserService userService;

    @GetMapping("/register")
    public String register()
    {
        return "register";
    }

    @PostMapping("/register")
    @ResponseBody
    public AjaxResult ajaxRegister(SysUser user)
    {
        if (!("true".equals(configService.selectConfigByKey("sys.account.registerUser"))))
        {
            return error("当前系统没有开启注册功能！");
        }
        UsernamePasswordToken token = new UsernamePasswordToken(user.getLoginName(), user.getPassword(), false);
        String msg = registerService.register(user);
        Subject subject = SecurityUtils.getSubject();
        if(StringUtils.isEmpty(msg)){
            try
            {
                subject.login(token);
                return success();
            }
            catch (AuthenticationException e)
            {
                if (StringUtils.isNotEmpty(e.getMessage()))
                {
                    msg = e.getMessage();
                }
                return error(msg);
            }
        }

        return error(msg);
    }
}
