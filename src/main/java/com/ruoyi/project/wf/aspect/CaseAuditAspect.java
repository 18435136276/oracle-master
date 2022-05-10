package com.ruoyi.project.wf.aspect;

import com.ruoyi.common.utils.SecurityUtils;
import com.ruoyi.framework.manager.AsyncManager;
import com.ruoyi.project.wf.domain.WfCase;
import com.ruoyi.project.wf.domain.WfRecord;
import com.ruoyi.project.wf.domain.base.GraphNode;
import com.ruoyi.project.wf.mapper.WfRecordMapper;
import com.ruoyi.project.wf.service.WfAssignService;
import com.ruoyi.project.wf.utils.GraphUtils;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.Date;
import java.util.TimerTask;

/**
 * 流程实例提交切面
 *
 * @author 毛泽
 * @date 2022.4.22
 */
@Aspect
@Component
public class CaseAuditAspect
{
    @Autowired
    private WfRecordMapper wfRecordMapper;
    @Autowired
    private WfAssignService wfAssignService;

    /**
     * 流程实例提交的切点
     */
    @Pointcut("execution(* com.ruoyi.project.wf.service.IWfCaseService.auditInnerUpdate(..))")
    public void caseAuditPointCut()
    {
    }

    /**
     * 流程实例提交环绕
     *
     * @param point 切点
     */
    @Around(value = "caseAuditPointCut()")
    public Object around(ProceedingJoinPoint point) throws Throwable
    {
        WfCase wfCase = (WfCase) point.getArgs()[0];
        String username = SecurityUtils.getUsername();
        // 方法执行前
        GraphNode userNode = beforeProceed(wfCase);
        // 执行方法
        Object res = point.proceed(new Object[]{wfCase});
        // 方法执行后
        afterProceed(wfCase, userNode, username);
        return res;
    }

    /**
     * 在切点方法执行前
     *
     * @param wfCase 流程实例
     * @return 下个用户节点
     */
    private GraphNode beforeProceed(WfCase wfCase)
    {
        // 查询开始节点
        GraphNode currentNode = GraphUtils.getStartNode(wfCase.getGraphData());
        // 转到下个用户节点
        GraphNode userNode = GraphUtils.goToNextUserNode(wfCase.getGraphData(), currentNode, wfCase.getFormData());
        if (userNode == null) wfCase.completeCase();// 为null结束流程
        else
        {
            wfCase.setCaseStatus(WfCase.Status.AUDITING);
            wfCase.addNode(userNode.getId());// 基于用户节点创建任务
        }
        return userNode;
    }

    /**
     * 在切点方法执行后
     *
     * @param wfCase 流程实例
     */
    private void afterProceed(WfCase wfCase, GraphNode userNode, String userName)
    {
        // 异步执行
        AsyncManager.me().execute(new TimerTask()
        {
            @Override
            public void run()
            {
                // 操作记录
                WfRecord wfRecord = new WfRecord();
                wfRecord.setUserName(userName);
                wfRecord.setCaseId(wfCase.getCaseId());
                wfRecord.setRecordResult(0);
                wfRecord.setNodeName("开始");
                wfRecord.setAddDate(new Date());
                wfRecordMapper.insert(wfRecord);
                if (userNode == null) return;
                // 创建任务
                wfAssignService.generateTask(wfCase, userNode);
            }
        });
    }
}
