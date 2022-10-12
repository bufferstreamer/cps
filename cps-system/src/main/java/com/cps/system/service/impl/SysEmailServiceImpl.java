package com.cps.system.service.impl;

import cn.hutool.extra.mail.MailUtil;
import com.cps.system.service.ISysEmailService;
import org.springframework.scheduling.annotation.Async;
import org.thymeleaf.TemplateEngine;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.thymeleaf.context.Context;
import java.io.File;

@Service
@Slf4j
@RequiredArgsConstructor
public class SysEmailServiceImpl implements ISysEmailService {

    private final TemplateEngine templateEngine;

    /**
     * 发送邮件
     *
     * @param to      目标邮箱
     * @param subject 标题
     * @param content 内容
     */
    public void send(String to, String subject, String content) {
        MailUtil.send(to, subject, content, false);
    }

    /**
     * 发送邮件(带附件)
     *
     * @param to      目标邮箱
     * @param subject 标题
     * @param content 内容
     * @param files   附件（可选）
     */
    public void send(String to, String subject, String content, File... files) {
        MailUtil.send(to, subject, content, false, files);
    }

    /**
     * 发送邮件-读取自定义模板
     *
     * @param to      目标邮箱
     * @param subject 标题
     * @param context 内容
     */
    @Async
    public void send(String to, String subject, Context context) {
        String template = templateEngine.process("verifyEmailCode", context);
        MailUtil.send(to, subject, template, true);
    }


    /**
     * 发送邮件-读取自定义模板（带附件）
     *
     * @param to      目标邮箱
     * @param subject 标题
     * @param context 内容
     * @param files   附件
     */
    public void send(String to, String subject, Context context, File... files) {
        String template = templateEngine.process("verifyEmailCode", context);
        MailUtil.send(to, subject, template, true, files);
    }
}
