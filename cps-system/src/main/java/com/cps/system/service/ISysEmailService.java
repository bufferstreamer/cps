package com.cps.system.service;

import org.thymeleaf.context.Context;

import java.io.File;

public interface ISysEmailService {
    /**
     * 发送邮件
     *
     * @param to      目标邮箱
     * @param subject 标题
     * @param content 内容
     */
    public void send(String to, String subject, String content);

    /**
     * 发送邮件(带附件)
     *
     * @param to      目标邮箱
     * @param subject 标题
     * @param content 内容
     * @param files   附件（可选）
     */
    public void send(String to, String subject, String content, File... files);

    /**
     * 发送邮件-读取自定义模板
     *
     * @param to      目标邮箱
     * @param subject 标题
     * @param context 内容
     */
    public void send(String to, String subject, Context context);

    /**
     * 发送邮件-读取自定义模板（带附件）
     *
     * @param to      目标邮箱
     * @param subject 标题
     * @param context 内容
     * @param files   附件
     */
    public void send(String to, String subject, Context context, File... files);
}
