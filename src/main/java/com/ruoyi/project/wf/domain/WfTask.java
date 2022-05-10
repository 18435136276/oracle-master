package com.ruoyi.project.wf.domain;

import java.io.Serializable;
import java.util.Date;
import java.util.Map;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.mybatis.extend.MapTypeHandler;
import lombok.Data;

import javax.validation.constraints.NotNull;

/**
 * 任务管理对象 wf_task
 *
 * @author orange
 * @date 2022-01-20
 */
@Data
@TableName("wf_task")
public class WfTask implements Serializable
{
    private static final long serialVersionUID = 1L;

    /**
     * 主键
     */
    @TableId(value = "task_id")
    private Long taskId;

    /**
     * 用户ID
     */
    @TableField("user_id")
    @Excel(name = "用户ID")
    private Long userId;

    /**
     * 节点ID
     */
    @TableField("node_id")
    @Excel(name = "节点ID")
    private String nodeId;

    /**
     * 节点名称
     */
    @TableField("node_name")
    @Excel(name = "节点名称")
    private String nodeName;

    /**
     * 状态
     */
    @TableField("task_status")
    @Excel(name = "状态")
    private Integer taskStatus;

    /**
     * 实例ID
     */
    @TableField("case_id")
    @Excel(name = "实例ID")
    private Long caseId;

    /**
     * 开始时间
     */
    @TableField("add_date")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @Excel(name = "开始时间", width = 30, dateFormat = "yyyy-MM-dd HH:mm:ss")
    private Date addDate;

    /**
     * 处理时间
     */
    @TableField("end_date")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @Excel(name = "处理时间", width = 30, dateFormat = "yyyy-MM-dd HH:mm:ss")
    private Date endDate;

    /**
     * 流程ID
     */
    @TableField("process_id")
    @Excel(name = "流程ID")
    private Long processId;

    /**
     * 处理结果
     */
    @TableField("task_result")
    @Excel(name = "处理结果")
    @NotNull(message = "任务处理结果不允许为空")
    private Integer taskResult;

    /**
     * 处理意见
     */
    @TableField("task_content")
    @Excel(name = "处理意见")
    private String taskContent;

    /**
     * 流程图版本
     */
    @TableField("graph_version")
    @Excel(name = "流程图版本")
    private Integer graphVersion;

    @TableField(value = "form_data", exist = false, typeHandler = MapTypeHandler.class)
    @NotNull(message = "表单数据不允许为空")
    private Map<String, Object> formData;

    @TableField(value = "form_path", exist = false)
    private String formPath;

    @TableField(value = "process_name", exist = false)
    private String processName;

    @TableField(value = "process_code", exist = false)
    private String processCode;

    @TableField(value = "case_tag", exist = false)
    private String caseTag;

    @TableField(select = false, exist = false)
    private Map<String, Object> params;

    /**
     * 流程实例状态
     */
    public static class Status
    {
        public static final int DEALING = 0;// 待处理
        public static final int COMPLETED = 1;// 已处理
        public static final int INVALID = 2;// 已失效
    }

    /**
     * 流程实例结果
     */
    public static class Result
    {
        public static final int AUDIT = 0;// 提交
        public static final int AGREE = 1;// 同意
        public static final int BACK = 2;// 退回
        public static final int REFUSE = 3;// 驳回
    }
}
