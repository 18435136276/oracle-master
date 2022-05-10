package com.ruoyi.project.wf.domain;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.mybatis.extend.GraphDataTypeHandler;
import com.ruoyi.framework.mybatis.extend.MapTypeHandler;
import com.ruoyi.framework.mybatis.extend.ObjectListHandler;
import com.ruoyi.project.wf.domain.base.GraphData;
import lombok.Data;

import javax.validation.constraints.NotNull;

/**
 * 流程实例对象 wf_case
 *
 * @author orange
 * @date 2022-01-17
 */
@Data
@TableName("wf_case")
public class WfCase implements Serializable
{
    private static final long serialVersionUID = 1L;

    /**
     * 主键
     */
    @TableId(value = "case_id", type = IdType.ASSIGN_ID)
    private Long caseId;

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
    @TableField("graph_version")
    @NotNull(message = "流程版本不可为空")
    @Excel(name = "流程图版本")
    private Integer graphVersion;

    /**
     * 实例标签
     */
    @TableField("case_tag")
    @NotNull(message = "流程实例标签/说明不可为空")
    @Excel(name = "实例标签 ")
    private String caseTag;

    /**
     * 表单数据
     */
    @TableField(value = "form_data", typeHandler = MapTypeHandler.class)
    @NotNull(message = "表单数据不可为空")
    @Excel(name = "表单数据")
    private Map<String, Object> formData;

    /**
     * 实例状态
     */
    @TableField("case_status")
    @Excel(name = "实例状态")
    private Integer caseStatus;

    /**
     * 添加人ID
     */
    @TableField("user_id")
    @Excel(name = "添加人ID")
    private Long userId;

    /**
     * 申请时间
     */
    @TableField("add_date")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @Excel(name = "申请时间", width = 30, dateFormat = "yyyy-MM-dd HH:mm:ss")
    private Date addDate;

    /**
     * 完成时间
     */
    @TableField("end_date")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @Excel(name = "完成时间", width = 30, dateFormat = "yyyy-MM-dd HH:mm:ss")
    private Date endDate;

    /**
     * 节点流转顺序线
     */
    @TableField(value = "node_line", typeHandler = ObjectListHandler.class)
    @Excel(name = "节点流转顺序线")
    private List<String> nodeLine;

    @TableField(value = "process_name", exist = false)
    private String processName;

    @TableField(value = "process_code", exist = false)
    private String processCode;

    @TableField(value = "user_name", exist = false)
    private String userName;

    @TableField(value = "form_path", exist = false)
    private String formPath;

    @TableField(value = "graph_data", exist = false, typeHandler = GraphDataTypeHandler.class)
    private GraphData graphData;

    @TableField(exist = false, select = false)
    private List<WfRecord> wfRecords;

    /**
     * 完结流程实例
     */
    public void completeCase()
    {
        this.caseStatus = Status.COMPLETED;
        this.endDate = new Date();
        this.nodeLine = new ArrayList<>();
    }

    /**
     * 退回流程实例
     */
    public void returnCase()
    {
        this.caseStatus = Status.RETURNED;
        this.nodeLine = new ArrayList<>();
    }

    /**
     * 获取当前用户节点ID
     *
     * @return
     */
    public String getLastNode()
    {
        if (nodeLine == null || nodeLine.isEmpty()) return null;
        return nodeLine.get(nodeLine.size() - 1);
    }

    /**
     * 转到上一个用户节点ID
     *
     * @return
     */
    public String removeLastNode()
    {
        if (nodeLine == null || nodeLine.isEmpty()) return null;
        return nodeLine.get(0);
    }

    /**
     * 转到下一个用户节点ID
     *
     * @param nodeId 下个用户节点ID
     */
    public void addNode(String nodeId)
    {
        if (nodeLine == null) nodeLine = new ArrayList<>();
        nodeLine.add(nodeId);
    }

    /**
     * 流程实例状态
     */
    public static class Status
    {
        public static final int INIT = 1;// 未提交
        public static final int RETURNED = 2;// 已退回
        public static final int AUDITING = 3;// 审批中
        public static final int COMPLETED = 4;// 已完成
        public static final int REVOKED = 5;// 已注销
    }
}
