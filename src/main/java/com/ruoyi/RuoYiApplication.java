package com.ruoyi;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.boot.autoconfigure.mongo.MongoAutoConfiguration;

/**
 * 启动程序
 *
 * @author ruoyi
 */
@SpringBootApplication(
        // 排除数据源自动配置，mongo主要针对积木报表
        exclude = {DataSourceAutoConfiguration.class, MongoAutoConfiguration.class},
        // 指定扫描路径
        scanBasePackages = {"org.jeecg.modules.jmreport", "com.ruoyi"})
public class RuoYiApplication
{
    public static void main(String[] args)
    {
        System.setProperty("spring.devtools.restart.enabled", "false");
        SpringApplication.run(RuoYiApplication.class, args);
        System.out.println("[软件快速开发平台] 启动成功......");
    }
}
