package com.cps;

import com.github.pagehelper.autoconfigure.PageHelperAutoConfiguration;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.scheduling.annotation.EnableAsync;

/**
 * 启动程序
 *
 * @author cps
 */
@EnableAsync
<<<<<<< HEAD
@SpringBootApplication(exclude = {DataSourceAutoConfiguration.class})
=======
@SpringBootApplication(exclude = {DataSourceAutoConfiguration.class/*,PageHelperAutoConfiguration.class*/})
>>>>>>> 60644f70bbd60e870e48e58848deea246839bb81
public class CPSApplication {
    public static void main(String[] args) {
        // System.setProperty("spring.devtools.restart.enabled", "false");
        SpringApplication.run(CPSApplication.class, args);

        System.out.println("集采系统启动成功！");
    }
}