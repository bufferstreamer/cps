package com.cps.web.controller.tool;

import com.cps.cp.domain.TrenderInformation;
import com.cps.cp.mapper.TrenderInformationMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.core.io.ResourceLoader;
import org.springframework.stereotype.Service;
import org.springframework.util.FileCopyUtils;


import org.springframework.core.io.UrlResource;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileInputStream;
import java.net.URLEncoder;
import java.text.MessageFormat;

@Service
public class Test2Service {

    @Autowired
    private ResourceLoader resourceLoader;

    @Autowired
    private HttpServletResponse response;

    @Autowired
    private TrenderInformationMapper trenderInformationMapper;

    public void fileDownload(Long form) throws Exception {

        TrenderInformation trenderInformation = trenderInformationMapper.selectTrenderInformationById(form);

        String fileName = trenderInformation.getTenderName();

        File directory = new File("");//参数为空
        String courseFile = directory.getCanonicalPath();
        // 格式化拼接资源的相对路径
        String filePath = MessageFormat.format("{0}{1}", form, fileName);
        // 使用ResourceLoader获取项目中的资源,防止项目打包之后找不到资源
        //Resource resource = resourceLoader.getResource("classpath:static/documentTemplate/tender/"+filePath+"招标文件.docx");

        Resource resource = new UrlResource("file:otherPython/biddingDocuments/"+filePath+"招标文件.docx");
                //resourceLoader.getResource("classpath:static/documentTemplate/tender/"+filePath+"招标文件.docx");
        //System.out.println(courseFile+"\\cps-admin\\src\\main\\resources\\static\\documentTemplate\\tender\\"+filePath+"招标文件.docx");
        if (!resource.exists()) {
            // 抛出异常,前台Ajax在error方法中对异常进行处理,获取响应头中的异常信息
            response.setHeader("errorInfo", URLEncoder.encode(fileName + "不存在!", "UTF-8"));
            throw new RuntimeException();
        }

        // 获取资源,指定相应信息
        File file = resource.getFile();
        response.setContentType("application/octet-stream");
        response.setHeader("Content-Disposition", "attachment; filename*=\"" + URLEncoder.encode(fileName, "UTF-8") + "\"");
        response.setContentLength((int) file.length());

        // 要下载的文件不大的话,直接使用工具类将文件拷贝到响应流中即可
        FileCopyUtils.copy(new FileInputStream(file), response.getOutputStream());
    }
}

