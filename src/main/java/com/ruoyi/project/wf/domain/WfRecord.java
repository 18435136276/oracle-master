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
import com.ruoyi.framework.web.domain.BaseEntity;
import lombok.Builder;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 流程处理记录对象 wf_record
 *
 * @author orange
 * @date 2022-01-21
 */
@Data
@TableName("wf_record")
public class WfRecord implements Serializable
{
    private static final long serialVersionUID = 1L;

    /**
     * 主键
     */
    @TableId(value = "record_id", type = IdType.ASSIGN_ID)
    private Long recordId;

    /**
     * 流程实例ID
     */
    @TableField("case_id")
    @Excel(name = "流程实例ID")
    private Long caseId;

    /**
     * 任务ID
     */
    @TableField("task_id")
    @Excel(name = "任务ID")
    private Long taskId;

    /**
     * 操作人
     */
    @TableField("user_name")
    @Excel(name = "操作人")
    private String userName;

    /**
     * 节点名称
     */
    @TableField("node_name")
    @Excel(name = "节点")
    private String nodeName;

    /**
     * 处理时间
     */
    @TableField("add_date")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @Excel(name = "处理时间", width = 30, dateFormat = "yyyy-MM-dd HH:mm:ss")
    private Date addDate;

    /**
     * 处理意见
     */
    @TableField("record_content")
    @Excel(name = "处理意见")
    private String recordContent;

    /**
     * 、处理结果
     */
    @TableField("record_result")
    @Excel(name = "处理结果")
    private Integer recordResult;
}
