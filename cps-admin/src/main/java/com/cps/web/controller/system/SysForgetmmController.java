package com.cps.web.controller.system;

import com.cps.common.core.controller.BaseController;
import com.cps.common.core.domain.AjaxResult;
import com.cps.common.core.domain.entity.SysUser;
import com.cps.common.utils.security.Md5Utils;
import com.cps.common.utils.uuid.IdUtils;
import com.cps.framework.shiro.service.SysPasswordService;
import com.cps.system.service.ISysEmailService;
import com.cps.system.service.ISysUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.thymeleaf.TemplateEngine;
import org.thymeleaf.context.Context;

import javax.servlet.http.HttpServletRequest;
import java.util.Arrays;
import java.util.Date;


/**
 * 忘记密码
 *
 * @author cps
 */
@Controller
public class SysForgetmmController extends BaseController {

    @Autowired
    private ISysEmailService sysEmailService;

    @Autowired
    TemplateEngine templateEngine;

    @Autowired
    ISysUserService sysUserService;

    @Autowired
    private SysPasswordService passwordService;

    @GetMapping("/forgetmm")
    public String forgetmm() {
        return "forgetmm";
    }

    @GetMapping("/forgetmmEmail")
    public String forgetmmEmail() {
        return "forgetmm_email";
    }

    @GetMapping("/changemm")
    public String changemm() {
        return "changemm";
    }

    @PostMapping("/changemm")
    @ResponseBody
    public AjaxResult ajaxChangemm(String email,String password) {
        SysUser user = sysUserService.selectUserByEmail(email);
        String originPassword = user.getPassword();
        user.setPassword(password);
        user.setPassword(passwordService.encryptPassword(user.getLoginName(), user.getPassword(), user.getSalt()));
        if(originPassword.equals(user.getPassword())){
            return AjaxResult.warn("新密码不能与原密码相同!");
        }
        int num = sysUserService.resetUserPwd(user);
        if(num!=1){
            return AjaxResult.error("修改密码失败");
        }
        return AjaxResult.success("修改密码成功");
    }


    @PostMapping("/sendEmailCode")
    @ResponseBody
    public AjaxResult sendEmailCode(HttpServletRequest request,String email){
        if(sysUserService.selectUserByEmail(email)==null){
            return AjaxResult.error("该邮箱没有绑定用户,请重新输入");
        }
        try {
            String verifyCode = IdUtils.randomVerifyCode();
            String codeMd5 = Md5Utils.hash(verifyCode);
            request.getSession().setAttribute("codeMd5",codeMd5);
            //把验证时间放在session里
            request.getSession().setAttribute("emailTimeFlag", new Date().getTime());
            Context context = new Context();
            context.setVariable("verifyCode", Arrays.asList(verifyCode.split("")));
            sysEmailService.send(email, "cps邮箱验证码", context);
        } catch (Exception e) {
            return AjaxResult.error("验证码发送失败");
        }
        return AjaxResult.success("验证码发送成功");
    }

    @PostMapping("/checkEmailVerifyCode")
    @ResponseBody
    public AjaxResult checkEmailVerifyCode(HttpServletRequest request,String emailVerifyCode){
        Object emailTimeFlag = request.getSession().getAttribute("emailTimeFlag");
        //时间间隔 interval 单位秒
        int interval = (int) (((new Date()).getTime() - (Long) emailTimeFlag) / 1000);
        //5分钟后验证码失效
        if(interval <300){
            String codeMd5 = String.valueOf(request.getSession().getAttribute("codeMd5"));
            String emailVerifyCodeMd5 = Md5Utils.hash(emailVerifyCode);
            if(codeMd5.equals(emailVerifyCodeMd5)){
                return AjaxResult.success("可以重置");
            }else{
                return AjaxResult.error("验证码错误");
            }
        }
        return AjaxResult.error("验证码失效,请重新获取验证码");
    }
}
