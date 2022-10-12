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
    public String changemm(HttpServletRequest request) {
        String editmmFlag = String.valueOf(request.getSession().getAttribute("editmmFlag"));
        if(editmmFlag.equals("null")||editmmFlag.equals("false")){
            return "redirect:forgetmm_email";
        }
        return "changemm";
    }

    //修改密码
    @PostMapping("/changemm")
    @ResponseBody
    public AjaxResult ajaxChangemm(HttpServletRequest request,String password) {
        String email = String.valueOf(request.getSession().getAttribute("email"));
        if(email.equals("null")){
            return AjaxResult.error("修改失败,请重试");
        }
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
        request.getSession().setAttribute("editmmFlag", "false");
        return AjaxResult.success("修改密码成功");
    }

    //发送邮件验证码
    @PostMapping("/sendEmailCode")
    @ResponseBody
    public AjaxResult sendEmailCode(HttpServletRequest request,String email){
        Object emailTimeFlag = request.getSession().getAttribute("emailTimeFlag");
        if(emailTimeFlag!=null){
            //时间间隔 interval 单位秒
            int interval = (int) (((new Date()).getTime() - (Long) emailTimeFlag) / 1000);
            if(interval <60){
                return AjaxResult.error("邮件请求过快，请60秒后重试");
            }
        }
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
//            long startTime = System.currentTimeMillis();
            //异步：发送邮箱验证码
            sysEmailService.send(email, "cps邮箱验证码", context);
//            System.out.println("耗时：" + (System.currentTimeMillis() - startTime) + "ms");
            request.getSession().setAttribute(codeMd5,email);
        } catch (Exception e) {
            return AjaxResult.error("验证码发送失败");
        }
        return AjaxResult.success("验证码发送成功");

    }

    //验证用户输入的验证码是否与邮件验证码相同
    @PostMapping("/checkEmailVerifyCode")
    @ResponseBody
    public AjaxResult checkEmailVerifyCode(HttpServletRequest request,String emailVerifyCode){
        //验证次数大于10次后，限制60秒后，恢复
        if(request.getSession().getAttribute("checkTimeFlag")!=null){
            Object checkTimeFlag = request.getSession().getAttribute("checkTimeFlag");
            int intervalCheck = (int) (((new Date()).getTime() - (Long) checkTimeFlag) / 1000);
            if(intervalCheck <=60){
                return AjaxResult.error("请求过于频繁请稍后再试");
            }else{
                Integer num = 0;
                request.getSession().setAttribute("checkTime",num);
                request.getSession().removeAttribute("checkTimeFlag");
            }

        }

        Object emailTimeFlag = request.getSession().getAttribute("emailTimeFlag");
        Object codeMd5O = request.getSession().getAttribute("codeMd5");
        if(request.getSession().getAttribute("checkTime")==null){
            Integer num = 0;
            request.getSession().setAttribute("checkTime",num);
        }
        Integer integer = (Integer)request.getSession().getAttribute("checkTime");
        integer++;
        //验证次数大于10次后，限制60秒
        if(integer>10){
            request.getSession().setAttribute("checkTimeFlag", new Date().getTime());
            return AjaxResult.error("请求过于频繁请稍后再试");
        }
        request.getSession().setAttribute("checkTime",integer);
        if(emailTimeFlag == null||codeMd5O ==null){
            return AjaxResult.error("请先获取验证码！");
        }
        String codeMd5 = String.valueOf(codeMd5O);
        //时间间隔 interval 单位秒
        int interval = (int) (((new Date()).getTime() - (Long) emailTimeFlag) / 1000);
        //5分钟后验证码失效
        if(interval <300){
            String emailVerifyCodeMd5 = Md5Utils.hash(emailVerifyCode);
            if(codeMd5.equals(emailVerifyCodeMd5)){
                String email = String.valueOf(request.getSession().getAttribute(codeMd5));
                request.getSession().setAttribute("email",email);
                request.getSession().setAttribute("editmmFlag", "true");
                return AjaxResult.success("可以重置");
            }else{
                return AjaxResult.error("验证码错误");
            }
        }
        return AjaxResult.error("验证码失效,请重新获取验证码");
    }
}
