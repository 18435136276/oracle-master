package com.ruoyi.project.wf.domain;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.handlers.JacksonTypeHandler;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.ser.std.ToStringSerializer;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.BaseEntity;
import lombok.*;
import org.apache.ibatis.type.JdbcType;

import javax.validation.constraints.NotNull;
import java.io.Serializable;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * 流程定义对象 wf_process
 *
 * @author orange
 * @date 2022-01-17
 */
@Data
@TableName("wf_process")
public class WfProcess implements Serializable
{

    private static final long serialVersionUID = 1L;

    /**
     * 主键
     */
    @TableId(value = "process_id", type = IdType.ASSIGN_ID)
    private Long processId;

    /**
     * 名称
     */
    @TableField(value = "process_name")
    @NotNull(message = "流程名称不允许为空")
    @Excel(name = "名称")
    private String processName;

    /**
     * 标识
     */
    @TableField(value = "process_code")
    @NotNull(message = "流程标识不允许为空")
    @Excel(name = "标识")
    private String processCode;

    /**
     * 说明
     */
    @TableField(value = "process_des")
    @Excel(name = "说明")
    private String processDes;

    /**
     * 版本
     */
    @TableField(value = "graph_version")
    @Excel(name = "版本")
    private Integer graphVersion;

    /**
     * 是否启用
     */
    @TableField(value = "process_enable")
    @Excel(name = "是否启用")
    private Integer processEnable;

    /**
     * 组件路径
     */
    @TableField(value = "form_path")
    @NotNull(message = "组件路径不允许为空")
    @Excel(name = "组件路径")
    private String formPath;

    /**
     * 表单数据
     */
    @TableField(value = "form_data")
    @NotNull(message = "表单数据不可为空")
    @Excel(name = "表单数据")
    private String formData;

    /**
     * 流程封面
     */
    @TableField(value = "process_cover")
    @Excel(name = "封面图片")
    private String processCover;

    /**
     * 创建时间
     */
    @TableField(value = "add_date")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @Excel(name = "创建时间", width = 30, dateFormat = "yyyy-MM-dd HH:mm:ss")
    private Date addDate;

    /**
     * 修改时间
     */
    @TableField(value = "update_date")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @Excel(name = "修改时间", width = 30, dateFormat = "yyyy-MM-dd HH:mm:ss")
    private Date updateDate;

    /**
     * 流程状态
     */
    public static class ENABLED
    {
        public static final int YES = 0;// 可用
        public static final int NO = 1;// 不可用
    }
}


