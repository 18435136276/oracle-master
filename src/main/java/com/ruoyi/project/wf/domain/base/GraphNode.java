package com.ruoyi.project.wf.domain.base;

import lombok.Data;

import java.util.List;

/**
 * 流程节点
 *
 * @author orange
 */
@Data
public class GraphNode
{
    private String id;// ID
    private String type;// 类型
    private Double x;// 坐标X
    private Double y;// 坐标Y
    private GraphText text;// 显示文本
    private String invoke;// 执行类
    private Integer status;// 处理状态
    private GraphNodeProperties properties;// 流转属性

    @Data
    public static class GraphNodeProperties
    {
        private String name;// 节点名称
        private Integer active;// 存活时长
        private Integer mode;// 受理模式
        //private Integer range;// 受理范围
        private List<Long> assign;// 受理人
        private String invoke;// 自定义受理分配 || 自定义执行类
        private Integer strategy;// 完成策略
        private Integer rate;// 百分比
        private Integer count;// 完成数量
        private String message;// 提示消息
        private String params;// 节点参数
    }
}
