package com.ruoyi.project.wf.domain.base;

import lombok.Data;

import java.util.List;

/**
 * 边
 *
 * @author orange
 */
@Data
public class GraphEdge
{
    private String id;
    private String type;
    private GraphText text;
    private String sourceNodeId;
    private String targetNodeId;
    private WfEdgePoint startPoint;
    private WfEdgePoint endPoint;
    private List<WfEdgePoint> pointsList;
    private Properties properties;

    @Data
    public static class WfEdgePoint
    {
        private Double x;
        private Double y;
    }

    @Data
    public static class Properties
    {
        private String condition;
    }
}
