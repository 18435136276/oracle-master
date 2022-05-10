package com.ruoyi.project.wf.service;

import com.ruoyi.project.wf.domain.WfCase;
import com.ruoyi.project.wf.domain.WfTask;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * 任务管理Service接口
 *
 * @author 毛泽
 * @date 2022-01-20
 */
public interface IWfTaskService
{
    /**
     * 查询流程任务
     *
     * @param taskId 流程任务主键
     * @return 流程任务
     */
    public WfTask selectWfTaskByTaskId(Long taskId);

    /**
     * 查询流程任务列表
     *
     * @param wfTask 流程任务
     * @return 流程任务集合
     */
    public List<WfTask> selectWfTaskList(WfTask wfTask);

    /**
     * 提交已处理任务
     *
     * @param wfTask 任务信息
     * @return 结果
     */
    public int auditWfTask(WfTask wfTask);

    /**
     * 提交时的内部修改
     * 针对提交用户任务修改时使用切面AOP增强
     *
     * @param wfCase 流程实例
     * @param wfTask 任务实例
     * @return
     */
    public int auditInnerUpdate(WfCase wfCase, WfTask wfTask);
}
