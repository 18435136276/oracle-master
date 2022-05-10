package com.ruoyi.project.wf.invoke;

import java.util.List;
import java.util.Map;

/**
 * 定义自定义用户分配接口
 */
public interface IAssignHandler
{
    /**
     * 返回分配的用户ID数组
     *
     * @param formData 表单数据
     * @return 用户ID
     */
    List<Long> invoke(Map<String, Object> formData);
}
