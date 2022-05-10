package com.ruoyi.project.wf.invoke;


import java.util.Map;

/**
 * 用于实现系统任务的接口类
 *
 * @author orange
 */
public interface IServiceTaskHandler
{
    /**
     * 执行并返回执行结果
     *
     * @param formData 表单数据
     * @param params 节点参数
     * @return 执行结果
     */
    boolean invoke(Map<String, Object> formData,Map<String, Object> params) throws Exception;
}
