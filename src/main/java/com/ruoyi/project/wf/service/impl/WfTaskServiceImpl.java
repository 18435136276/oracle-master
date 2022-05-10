package com.ruoyi.project.wf.service.impl;

import com.alibaba.fastjson.JSON;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.ruoyi.common.exception.ServiceException;
import com.ruoyi.common.utils.MessageUtils;
import com.ruoyi.common.utils.SecurityUtils;
import com.ruoyi.project.wf.domain.WfCase;
import com.ruoyi.project.wf.mapper.WfCaseMapper;
import com.ruoyi.project.wf.utils.GraphUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.project.wf.mapper.WfTaskMapper;
import com.ruoyi.project.wf.domain.WfTask;
import com.ruoyi.project.wf.service.IWfTaskService;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;

/**
 * 任务管理Service业务层处理
 *
 * @author orange
 * @date 2022-01-20
 */
@Service
public class WfTaskServiceImpl implements IWfTaskService
{
    @Autowired
    private WfTaskMapper wfTaskMapper;
    @Autowired
    private WfCaseMapper wfCaseMapper;
    @Autowired
    private IWfTaskService wfTaskService;

    /**
     * 查询流程任务
     *
     * @param taskId 流程任务主键
     * @return 流程任务
     */
    @Override
    public WfTask selectWfTaskByTaskId(Long taskId)
    {
        WfTask wfTask = wfTaskMapper.selectLinkOne(taskId);
        WfCase wfCase = wfCaseMapper.selectLinkOne(wfTask.getCaseId());
        // 设置当前节点参数
        wfTask.setParams(JSON.parseObject(
                GraphUtils.getNodeById(wfCase.getGraphData(), wfTask.getNodeId())
                        .getProperties().getParams())
        );
        return wfTask;
    }

    /**
     * 查询流程任务列表
     *
     * @param wfTask 流程任务
     * @return 流程任务
     */
    @Override
    public List<WfTask> selectWfTaskList(WfTask wfTask)
    {
        QueryWrapper<WfTask> wrapper = new QueryWrapper<>();
        wrapper.eq("user_id", SecurityUtils.getUserId());
        wrapper.eq(wfTask.getProcessId() != null, "process_id", wfTask.getProcessId());
        wrapper.eq(wfTask.getTaskStatus() != null, "task_status", wfTask.getTaskStatus());
        wrapper.eq(wfTask.getTaskResult() != null, "task_result", wfTask.getTaskResult());
        wrapper.orderByAsc("task_status");
        wrapper.orderByDesc("add_date");
        return wfTaskMapper.selectLinkList(wrapper);
    }

    /**
     * 提交已处理任务
     *
     * @param wfTask 任务信息
     * @return 结果
     */
    @Override
    public int auditWfTask(WfTask wfTask)
    {
        // 判断任务是否已处理完或失效
        if (wfTaskMapper.selectById(wfTask.getTaskId()).getTaskStatus() != WfTask.Status.DEALING)
            throw new ServiceException(MessageUtils.message("wf.task.repeat.audit"));
        // 先判断流程实例状态，若非正在审批中，不允许任务提交
        WfCase wfCase = wfCaseMapper.selectLinkOne(wfTask.getCaseId());
        if (wfCase.getCaseStatus() != WfCase.Status.AUDITING)
            throw new ServiceException(MessageUtils.message("wf.task.status.error"));
        if (!wfTask.getNodeId().equals(wfCase.getLastNode()))
            throw new ServiceException(MessageUtils.message("wf.task.node.error"));
        return wfTaskService.auditInnerUpdate(wfCase, wfTask);
    }

    /**
     * 提交时的内部修改
     * 针对提交用户任务修改时使用切面AOP增强
     *
     * @param wfCase 流程实例
     * @param wfTask 任务实例
     */
    @Override
    @Transactional// 事务管理
    public int auditInnerUpdate(WfCase wfCase, WfTask wfTask)
    {
        // 修改任务状态
        wfTask.setTaskStatus(WfTask.Status.COMPLETED);
        wfTask.setEndDate(new Date());
        wfTaskMapper.updateById(wfTask);
        // 修改流程实例表单数据
        wfCase.setFormData(wfTask.getFormData());
        return wfCaseMapper.updateById(wfCase);
    }
}
