package com.ruoyi.project.wf.domain;

import java.io.Serializable;
import java.util.Date;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.ser.std.ToStringSerializer;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.mybatis.extend.GraphDataTypeHandler;
import com.ruoyi.project.wf.domain.base.GraphData;
import lombok.Data;

import javax.validation.constraints.NotNull;

/**
 * 流程图信息对象 wf_graph
 *
 * @author ruoyi
 * @date 2022-03-10
 */
@Data
@TableName("wf_graph")
public class WfGraph implements Serializable
{
    private static final long serialVersionUID = 1L;

    /**
     * 主键
     */
    @TableId(value = "graph_id", type = IdType.ASSIGN_ID)
    @JsonSerialize(using = ToStringSerializer.class)
    private Long graphId;

    /**
     * 流程ID
     */
    @TableField("process_id")
    @NotNull(message = "流程ID不可为空")
    @Excel(name = "流程ID")
    private Long processId;

    /**
     * 流程图版本
     */
    @TableField(value = "graph_version")
    @Excel(name = "流程图版本")
    private Integer graphVersion;

    /**
     * 流程图数据
     */
    @TableField(value = "graph_data", typeHandler = GraphDataTypeHandler.class)
    @NotNull(message = "流程图数据不可为空")
    @Excel(name = "流程图数据")
    private GraphData graphData;

    /**
     * 版本标签
     */
    @TableField("graph_tag")
    @NotNull(message = "流程图版本标签不可为空")
    @Excel(name = "版本标签")
    private String graphTag;

    /**
     * 添加日期
     */
    @TableField("add_date")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @Excel(name = "添加日期", width = 30, dateFormat = "yyyy-MM-dd HH:mm:ss")
    private Date addDate;
}
