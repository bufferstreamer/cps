package com.cps;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

/**
 * 启动程序
 *
 * @author cps
 */
@SpringBootApplication(exclude = {DataSourceAutoConfiguration.class})
public class CPSApplication {
    public static void main(String[] args) {
        // System.setProperty("spring.devtools.restart.enabled", "false");
        SpringApplication.run(CPSApplication.class, args);

        System.out.println("集采系统启动成功！");
    }
}