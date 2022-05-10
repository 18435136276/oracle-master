package com.ruoyi.project.wf.aspect;

import com.baomidou.mybatisplus.extension.conditions.update.LambdaUpdateChainWrapper;
import com.ruoyi.common.exception.ServiceException;
import com.ruoyi.common.utils.MessageUtils;
import com.ruoyi.common.utils.SecurityUtils;
import com.ruoyi.framework.manager.AsyncManager;
import com.ruoyi.project.system.domain.SysMessage;
import com.ruoyi.project.system.mapper.SysMessageMapper;
import com.ruoyi.project.wf.domain.WfCase;
import com.ruoyi.project.wf.domain.WfRecord;
import com.ruoyi.project.wf.domain.WfTask;
import com.ruoyi.project.wf.domain.base.GraphNode;
import com.ruoyi.project.wf.mapper.WfRecordMapper;
import com.ruoyi.project.wf.mapper.WfTaskMapper;
import com.ruoyi.project.wf.service.WfAssignService;
import com.ruoyi.project.wf.utils.GraphUtils;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.Date;
import java.util.TimerTask;

/**
 * 用户任务实例提交切面
 *
 * @author 毛泽
 * @date 2022.4.22
 */
@Aspect
@Component
public class TaskAuditAspect
{
    @Autowired
    private WfRecordMapper wfRecordMapper;
    @Autowired
    private WfTaskMapper wfTaskMapper;
    @Autowired
    private WfAssignService wfAssignService;
    @Autowired
    private SysMessageMapper sysMessageMapper;

    /**
     * 用户任务提交的切点
     */
    @Pointcut("execution(* com.ruoyi.project.wf.service.IWfTaskService.auditInnerUpdate(..))")
    public void caseAuditPointCut()
    {
    }

    /**
     * 用户任务提交环绕
     *
     * @param point 切点
     */
    @Around(value = "caseAuditPointCut()")
    public Object around(ProceedingJoinPoint point) throws Throwable
    {
        WfCase wfCase = (WfCase) point.getArgs()[0];
        WfTask wfTask = (WfTask) point.getArgs()[1];
        String userName = SecurityUtils.getUsername();
        // 方法执行前
        GraphNode userNode = beforeProceed(wfCase, wfTask);
        // 执行方法
        Object res = point.proceed(new Object[]{wfCase, wfTask});
        // 方法执行后
        afterProceed(wfCase, wfTask, userNode, userName);
        return res;
    }

    /**
     * 在切点方法执行前
     *
     * @param wfTask 用户任务
     * @return 用户节点
     */
    private GraphNode beforeProceed(WfCase wfCase, WfTask wfTask)
    {
        switch (wfTask.getTaskResult())
        {
            case WfTask.Result.AGREE:// 同意
                return handleAgree(wfCase, wfTask);
            case WfTask.Result.BACK:// 退回
                return handleBack(wfCase, wfTask);
            case WfTask.Result.REFUSE:// 驳回(退回编辑人)
                handleBack2Editor(wfCase);
                return null;
            default:
                throw new ServiceException(MessageUtils.message("wf.task.result.invalid"));
        }
    }

    /**
     * 在切点方法执行后
     *
     * @param wfCase 流程实例
     */
    private void afterProceed(WfCase wfCase, WfTask wfTask, GraphNode userNode, String userName)
    {

        // 异步执行
        AsyncManager.me().execute(new TimerTask()
        {
            @Override
            public void run()
            {
                // 通知申请人
                SysMessage message = new SysMessage();
                message.setMessageType(SysMessage.Type.TASK);
                message.setUserId(wfCase.getUserId());
                message.setDataId(wfCase.getCaseId());
                message.setMessageDate(new Date());
                message.setMessageNoted("N");
                message.setMessageContent(MessageUtils.message("wf.case.handle.message", wfTask.getProcessName()));
                sysMessageMapper.insert(message);
                // 操作记录
                WfRecord wfRecord = new WfRecord();
                wfRecord.setUserName(userName);
                wfRecord.setCaseId(wfTask.getCaseId());
                wfRecord.setTaskId(wfTask.getTaskId());
                wfRecord.setRecordResult(wfTask.getTaskResult());
                wfRecord.setRecordContent(wfTask.getTaskContent());
                wfRecord.setNodeName(wfTask.getNodeName());
                wfRecord.setAddDate(new Date());
                wfRecordMapper.insert(wfRecord);
                if (userNode == null) return;
                // 创建任务
                wfAssignService.generateTask(wfCase, userNode);
            }
        });
    }

    /**
     * 处理同意的任务
     *
     * @param wfCase 流程实例
     * @param wfTask 任务信息
     * @return 用户节点
     */
    private GraphNode handleAgree(WfCase wfCase, WfTask wfTask)
    {
        // 查询当前节点
        GraphNode currentNode = GraphUtils.getNodeById(wfCase.getGraphData(), wfCase.getLastNode());
        // 判断是否完成
        if (wfAssignService.isCompleted(currentNode.getProperties(), wfTask))// 完成
        {
            // 转到下个用户节点
            GraphNode nextUserNode = GraphUtils.goToNextUserNode(wfCase.getGraphData(), currentNode, wfTask.getFormData());
            if (nextUserNode == null) wfCase.completeCase();// 为null结束流程
            else wfCase.addNode(nextUserNode.getId());// 基于用户节点创建任务
            return nextUserNode;
        }
        return null;
    }

    /**
     * 处理退回的任务
     *
     * @param wfCase 流程实例
     * @param wfTask 任务信息
     * @return 用户节点
     */
    private GraphNode handleBack(WfCase wfCase, WfTask wfTask)
    {
        // 若上个节点为开始节点，流程状态变为已退回
        if (wfCase.removeLastNode() == null)
        {
            handleBack2Editor(wfCase);
            return null;
        }
        else // 转到指定节点
        {
            // 查询上个用户节点
            GraphNode lastNode = GraphUtils.getNodeById(wfCase.getGraphData(), wfCase.getLastNode());
            // 当前节点的任务变为无效
            new LambdaUpdateChainWrapper<>(wfTaskMapper)
                    .set(WfTask::getTaskStatus, WfTask.Status.INVALID)
                    .eq(WfTask::getCaseId, wfCase.getCaseId())
                    .eq(WfTask::getTaskStatus, WfTask.Status.DEALING)
                    .eq(WfTask::getNodeId, wfTask.getNodeId())
                    .update();
            return lastNode;
        }
    }

    /**
     * 处理退回给编辑人的任务
     *
     * @param wfCase 流程实例
     */
    private void handleBack2Editor(WfCase wfCase)
    {
        // 将所有剩余没有处理的任务置为失效状态
        new LambdaUpdateChainWrapper<>(wfTaskMapper)
                .set(WfTask::getTaskStatus, WfTask.Status.INVALID)
                .eq(WfTask::getCaseId, wfCase.getCaseId())
                .eq(WfTask::getTaskStatus, WfTask.Status.DEALING)
                .update();
        // 将流程实例状态改为退回
        wfCase.returnCase();
    }
}
