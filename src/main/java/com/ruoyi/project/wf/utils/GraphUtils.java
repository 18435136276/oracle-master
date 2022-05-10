package com.ruoyi.project.wf.utils;

import com.alibaba.fastjson.JSON;
import com.ruoyi.common.exception.wf.GraphDataException;
import com.ruoyi.common.utils.MessageUtils;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.common.utils.script.JavaScriptUtils;
import com.ruoyi.project.wf.domain.base.GraphData;
import com.ruoyi.project.wf.domain.base.GraphEdge;
import com.ruoyi.project.wf.domain.base.GraphNode;
import com.ruoyi.project.wf.invoke.IServiceTaskHandler;
import com.ruoyi.project.wf.service.WfAssignService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.script.ScriptException;
import java.util.*;

/**
 * 流程图处理工具类
 *
 * @author orange
 * @date 2022-01-17
 */
public class GraphUtils
{
    private static final Logger logger = LoggerFactory.getLogger(GraphUtils.class);

    /**
     * 流程图执行到下一个用户节点并返回此节点
     *
     * @param data        流程图数据
     * @param currentNode 当前节点
     * @param formData    表单数据
     * @return 下个用户节点，为null说明执行到了结束
     */
    public static GraphNode goToNextUserNode(GraphData data, GraphNode currentNode, Map<String, Object> formData)
    {
        GraphNode nextNode = getNextNode(data, currentNode, formData);
        switch (nextNode.getType())
        {
            case "serviceTask":
                handleServiceTask(nextNode.getInvoke(), formData,
                        JSON.parseObject(currentNode.getProperties().getParams()));// 执行任务
            case "start":
            case "condition":
                return goToNextUserNode(data, nextNode, formData);
            case "end":
                return null;
            case "userTask":
                return nextNode;
            default:
                throw new GraphDataException(MessageUtils.message("wf.graph.type.invalid"));
        }
    }


    /**
     * 寻找流程图下个节点
     *
     * @param data        流程图数据
     * @param currentNode 当前节点
     * @param formData    表单数据
     * @return 下个节点
     */
    public static GraphNode getNextNode(GraphData data, GraphNode currentNode, Map<String, Object> formData)
    {
        // 选中的边
        GraphEdge selectEdge = data.getEdges()
                .stream()
                .filter(edge -> "condition".equals(currentNode.getType())
                        // 当节点为条件节点时
                        ? edge.getSourceNodeId().equals(currentNode.getId()) // 从当前节点出发
                        && computeCondition(edge.getProperties().getCondition(), formData)// 判断条件为true
                        // 当节点为其他节点时，从当前节点出发的边
                        : edge.getSourceNodeId().equals(currentNode.getId())
                )
                .findAny()
                .orElse(null);
        if (selectEdge == null) throw new GraphDataException(MessageUtils.message("wf.graph.next.no"));
        // 下个节点ID
        return getNodeById(data, selectEdge.getTargetNodeId());
    }

    /**
     * 通过节点ID寻找节点
     *
     * @param data   流程图数据
     * @param nodeId 当前节点ID
     * @return 当前节点
     */
    public static GraphNode getNodeById(GraphData data, String nodeId)
    {
        GraphNode currentNode = data.getNodes()
                .stream()
                .filter(node -> Objects.equals(nodeId, node.getId()))// 当前节点ID不为空取当前节点
                .findAny()
                .orElse(null);
        if (currentNode == null) throw new GraphDataException(MessageUtils.message("wf.graph.node.invalid"));
        return currentNode;
    }

    /**
     * 寻找开始节点
     *
     * @param data 流程图数据
     * @return 开始节点
     */
    public static GraphNode getStartNode(GraphData data)
    {
        GraphNode startNode = data.getNodes()
                .stream()
                .filter(node -> "start".equals(node.getType()))// 开始节点
                .findAny()
                .orElse(null);
        if (startNode == null) throw new GraphDataException(MessageUtils.message("wf.graph.start.no"));
        return startNode;
    }

    /**
     * 寻找结束节点
     *
     * @param data 流程图数据
     * @return 结束节点
     */
    public static GraphNode getEndNode(GraphData data)
    {
        GraphNode endNode = data.getNodes()
                .stream()
                .filter(node -> "end".equals(node.getType()))// 结束节点
                .findAny()
                .orElse(null);
        if (endNode == null) throw new GraphDataException(MessageUtils.message("wf.graph.end.no"));
        return endNode;
    }

    /**
     * 验证流程图合法性
     *
     * @param data 流程图数据
     */
    public static void validate(GraphData data)
    {
        if (data == null || data.getNodes() == null || data.getEdges() == null)
            throw new GraphDataException(MessageUtils.message("wf.graph.invalid"));
        int startCount = 0, endCount = 0;
        for (GraphNode node : data.getNodes())
        {
            GraphNode.GraphNodeProperties properties = node.getProperties();
            switch (node.getType())
            {
                case "start":
                    startCount++;
                    break;
                case "end":
                    endCount++;
                    break;
                case "userTask":
                    // 受理方式，受理对象，受理策略不能为空
                    if (properties.getMode() == null || properties.getStrategy() == null)
                        throw new GraphDataException(
                                MessageUtils.message("wf.graph.userTask.require", node.getText().getValue()));
                    // 受理方式为自定义时，执行类不允许为空
                    if (properties.getMode() == WfAssignService.Mode.CUSTOM && StringUtils.isEmpty(properties.getInvoke()))
                        throw new GraphDataException(
                                MessageUtils.message("wf.graph.userTask.invoke.require", node.getText().getValue()));
                    // 受理方式为其他时，受理对象不允许为空
                    if (properties.getMode() != WfAssignService.Mode.CUSTOM && StringUtils.isEmpty(properties.getAssign()))
                        throw new GraphDataException(
                                MessageUtils.message("wf.graph.userTask.assign.require", node.getText().getValue()));
                    // 完成策略为比率时，比率不允许为空
                    if (properties.getStrategy() == WfAssignService.Strategy.RATE && properties.getRate() == null)
                        throw new GraphDataException(
                                MessageUtils.message("wf.graph.userTask.rate.require", node.getText().getValue()));
                    // 完成策略数量时，数量不允许为空
                    if (properties.getStrategy() == WfAssignService.Strategy.COUNT && properties.getCount() == null)
                        throw new GraphDataException(
                                MessageUtils.message("wf.graph.userTask.count.require", node.getText().getValue()));
                    break;
                case "serviceTask":
                    // 系统任务执行类不允许为空
                    if (StringUtils.isEmpty(properties.getInvoke()))
                        throw new GraphDataException(
                                MessageUtils.message("wf.graph.serviceTask.invoke.require", node.getText().getValue()));
                    break;
                case "condition":
                    // 条件边的条件不能为空
                    for (GraphEdge edge : data.getEdges())
                    {
                        if (edge.getSourceNodeId().equals(node.getId())
                                && StringUtils.isEmpty(edge.getProperties().getCondition()))
                            throw new GraphDataException(
                                    MessageUtils.message("wf.graph.condition.require", edge.getText().getValue()));
                    }
                    break;
                default:
                    throw new GraphDataException(MessageUtils.message("wf.graph.type.invalid"));
            }
        }
        if (startCount != 1) throw new GraphDataException(
                MessageUtils.message("wf.graph.start.no"));
        if (endCount != 1) throw new GraphDataException(
                MessageUtils.message("wf.graph.end.no"));
    }

    /**
     * 计算条件
     *
     * @param condition 条件表达式
     * @param formData  表单数据
     * @return 计算结果
     */
    private static boolean computeCondition(String condition, Map<String, Object> formData)
    {
        // 无条件时直接返回true
        if (condition == null || condition.isEmpty()) return false;
        // 执行脚本返回结果
        try
        {
            return (boolean) JavaScriptUtils.executeForAttribute("formData", formData, condition);
        } catch (ScriptException e)
        {
            logger.error("javaScript判断脚本执行失败", e);
            throw new GraphDataException(MessageUtils.message("wf.graph.condition.invalid"));
        }
    }

    /**
     * 处理系统任务
     *
     * @param className 自定义类名
     * @param formData  表单数据
     * @param params    节点参数
     */
    private static void handleServiceTask(String className, Map<String, Object> formData, Map<String, Object> params)
    {
        try
        {
            // 创建类加载器
            Class<?> handlerClass = Class.forName(className);
            // 反射一个实例并执行，返回是否执行成功
            ((IServiceTaskHandler) handlerClass.newInstance()).invoke(formData, params);
        } catch (Exception e)
        {
            logger.error("系统任务节点执行失败 [" + className + "]", e);
        }
    }
}
