package com.ruoyi.project.wf.service;

import com.baomidou.mybatisplus.extension.conditions.query.LambdaQueryChainWrapper;
import com.ruoyi.common.exception.ServiceException;
import com.ruoyi.common.utils.IdGenerator;
import com.ruoyi.common.utils.MessageUtils;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.project.system.domain.SysMessage;
import com.ruoyi.project.system.mapper.SysMessageMapper;
import com.ruoyi.project.wf.domain.WfCase;
import com.ruoyi.project.wf.domain.WfTask;
import com.ruoyi.project.wf.domain.base.GraphNode;
import com.ruoyi.project.wf.invoke.IAssignHandler;
import com.ruoyi.project.wf.mapper.WfAssignMapper;
import com.ruoyi.project.wf.mapper.WfTaskMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * 用户分配工具类
 */
@Service
public class WfAssignService
{
    private static final Logger logger = LoggerFactory.getLogger(WfAssignService.class);

    @Autowired
    private WfAssignMapper wfAssignMapper;
    @Autowired
    private WfTaskMapper wfTaskMapper;
    @Autowired
    private SysMessageMapper sysMessageMapper;

    /**
     * 处理用户分配
     *
     * @param properties 流转属性
     * @param formData   表单数据
     * @return 分配好的用户ID
     */
    public List<Long> assignUser(GraphNode.GraphNodeProperties properties, Map<String, Object> formData)
    {
        List<Long> userIds;
        // 若为4，则执行自定义分配类
        if (properties.getMode() == Mode.CUSTOM) userIds = customAssignUser(properties.getInvoke(), formData);
        else userIds = normalAssign(properties);// 其他模式正常
        return userIds;
    }

    /**
     * 验证此节点所有任务是否已完成
     *
     * @param properties 节点属性
     * @param wfTask     用户任务
     * @return 是否完成
     */
    public boolean isCompleted(GraphNode.GraphNodeProperties properties, WfTask wfTask)
    {
        // 节点所有任务数量
        int count = new LambdaQueryChainWrapper<>(wfTaskMapper)
                .eq(WfTask::getCaseId, wfTask.getCaseId())
                .eq(WfTask::getNodeId, wfTask.getNodeId())
                .count();
        // 节点已同意任务数量
        int agreeCount = new LambdaQueryChainWrapper<>(wfTaskMapper)
                .eq(WfTask::getCaseId, wfTask.getCaseId())
                .eq(WfTask::getNodeId, wfTask.getNodeId())
                .eq(WfTask::getTaskStatus, WfTask.Status.COMPLETED)
                .eq(WfTask::getTaskResult, WfTask.Result.AGREE)
                .count() + 1;
        switch (properties.getStrategy())
        {
            case Strategy.ALL:
                return agreeCount == count;
            case Strategy.RATE:
                return agreeCount / count >= properties.getRate() / 100;
            case Strategy.COUNT:
                return agreeCount >= properties.getCount();
            default:
                logger.error("非法的完成策略标识......");
                return false;
        }
    }


    /**
     * 创建任务节点
     *
     * @param wfCase   流程实例
     * @param userNode 用户节点
     */
    public void generateTask(WfCase wfCase, GraphNode userNode)
    {
        // 查询所需用户
        List<Long> userIds = assignUser(userNode.getProperties(), wfCase.getFormData());
        // 创建任务节点
        if (userIds == null || userIds.isEmpty()) throw new ServiceException(MessageUtils.message("wf.task.empty"));
        userIds.forEach(id -> createWfTask(wfCase, userNode, id));
    }

    /**
     * 处理自定义用户分配
     *
     * @param className 自定义类名
     * @param formData  表单数据
     * @return 分配好的用户ID
     */
    private List<Long> customAssignUser(String className, Map<String, Object> formData)
    {
        try
        {
            // 创建类加载器
            System.out.println(className);
            Class<?> handlerClass = Class.forName(className);
            // 反射一个实例并执行，返回是否执行成功
            return ((IAssignHandler) handlerClass.newInstance()).invoke(formData);
        } catch (Exception e)
        {
            logger.error("自定义用户用户类执行失败 [" + className + "]......");
            return null;
        }
    }

    /**
     * 处理普通用户分配
     *
     * @param properties 流转属性
     * @return 用户ID
     */
    private List<Long> normalAssign(GraphNode.GraphNodeProperties properties)
    {
        int mode = properties.getMode();// 受理模式
        //int range = properties.getRange();// 受理范围
        List<Long> assign = properties.getAssign();// 处理人
        // 查询所有可用的用户
        if (mode == Mode.ROlE) assign = wfAssignMapper.selectUserIdsByRoleIds(assign);
        else if (mode == Mode.POST) assign = wfAssignMapper.selectUserIdsByPostIds(assign);
        return assign;
    }

    /**
     * 创建一个任务
     */
    private void createWfTask(WfCase wfCase, GraphNode userNode, Long userId)
    {
        // 添加任务
        WfTask wfTask = new WfTask();
        wfTask.setTaskId(IdGenerator.generateId());
        wfTask.setUserId(userId);
        wfTask.setProcessId(wfCase.getProcessId());
        wfTask.setProcessName(wfCase.getProcessName());
        wfTask.setNodeId(userNode.getId());
        wfTask.setAddDate(new Date());
        wfTask.setTaskStatus(WfTask.Status.DEALING);
        wfTask.setNodeName(userNode.getText().getValue());
        wfTask.setCaseId(wfCase.getCaseId());
        wfTask.setGraphVersion(wfCase.getGraphVersion());
        if (wfTaskMapper.insert(wfTask) != 1) return;
        // 添加消息
        SysMessage message = new SysMessage();
        message.setMessageType(SysMessage.Type.TASK);
        message.setUserId(wfTask.getUserId());
        message.setDataId(wfTask.getTaskId());
        message.setMessageDate(new Date());
        message.setMessageNoted("N");
        message.setMessageContent(formatMessageContent(wfCase, userNode));
        sysMessageMapper.insert(message);
    }

    /**
     * 格式化消息
     */
    private String formatMessageContent(WfCase wfCase, GraphNode userNode)
    {
        // 格式化消息内容
        /*
         * 格式化默认值
         * 流程名称：[processName]
         * 实例说明：[caseDes]
         * 当前节点：[taskName]
         * 申请人：[auditUser]
         */
        return userNode.getProperties().getMessage()
                .replace("[processName]", wfCase.getProcessName())
                .replace("[caseDes]", wfCase.getCaseTag())
                .replace("[taskName]", userNode.getText().getValue())
                .replace("[auditUser]", wfCase.getUserName());
    }

    /**
     * 受理模式
     */
    public static class Mode
    {
        public static final int USER = 1;// 按用户分配
        public static final int ROlE = 2;// 按角色分配
        public static final int POST = 3;// 按岗位分配
        public static final int CUSTOM = 4;// 自定义
    }

    /**
     * 完成策略
     */
    public static class Strategy
    {
        public static final int ALL = 1;// 全部完成
        public static final int RATE = 2;// 百分比
        public static final int COUNT = 3;// 指定数量
    }
}
