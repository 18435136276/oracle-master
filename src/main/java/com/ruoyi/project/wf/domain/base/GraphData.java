package com.ruoyi.project.wf.domain.base;

import lombok.Data;

import java.util.List;

/**
 * 流程图数据结构
 */
@Data
public class GraphData
{
    private List<GraphNode> nodes;// 节点
    private List<GraphEdge> edges;// 边
    private String startIndex;// 开始节点索引
}
