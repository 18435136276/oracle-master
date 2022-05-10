package com.ruoyi.project.system.domain;

import java.util.Date;

import com.baomidou.mybatisplus.annotation.IdType;
import com.fasterxml.jackson.annotation.JsonFormat;

import java.util.Map;
import java.io.Serializable;

import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;

/**
 * 系统消息对象 sys_message
 *
 * @author ruoyi
 * @date 2022-04-08
 */
@Data
@TableName("sys_message")
public class SysMessage implements Serializable
{
    private static final long serialVersionUID = 1L;

    /**
     * 主键
     */
    @TableId(value = "message_id", type = IdType.ASSIGN_ID)
    private Long messageId;

    /**
     * 消息内容
     */
    @Excel(name = "消息内容")
    @TableField("message_content")
    private String messageContent;

    /**
     * 消息时间
     */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @Excel(name = "消息时间", width = 30, dateFormat = "yyyy-MM-dd HH:mm:ss")
    @TableField("message_date")
    private Date messageDate;

    /**
     * 通知用户ID
     */
    @Excel(name = "通知用户ID")
    @TableField("user_id")
    private Long userId;

    /**
     * 通知用户
     */
    @Excel(name = "通知用户")
    @TableField(value = "message_user", exist = false)
    private String messageUser;

    /**
     * 消息类型
     */
    @Excel(name = "消息类型")
    @TableField("message_type")
    private String messageType;

    /**
     * 关联数据ID
     */
    @Excel(name = "关联数据ID")
    @TableField("data_id")
    private Long dataId;

    /**
     * 已阅
     */
    @Excel(name = "已阅")
    @TableField("message_noted")
    private String messageNoted;

    /**
     * 请求参数
     */
    @TableField(exist = false)
    private Map<String, Object> params;

    /**
     * 消息类型
     */
    public static class Type
    {
        public static final String TASK = "task";
        public static final String MSG = "msg";
        public static final String NOTICE = "notice";
        public static final String WARN = "WARN";
    }
}
