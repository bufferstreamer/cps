package com.cps.framework.web.service;

import com.cps.system.service.ISysConfigService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * html调用 thymeleaf 实现参数管理
 *
 * @author cps
 */
@Service("config")
public class ConfigService {
    @Autowired
    private ISysConfigService configService;

    /**
     * 根据键名查询参数配置信息
     *
     * @param configKey 参数键名
     * @return 参数键值
     */
    public String getKey(String configKey) {
        return configService.selectConfigByKey(configKey);
    }
}
