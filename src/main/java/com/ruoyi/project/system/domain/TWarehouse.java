package com.ruoyi.project.system.domain;

import java.util.Date;
import java.util.Map;
import java.io.Serializable;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;

/**
 * 仓库对象 t_warehouse
 *
 * @author ruoyi
 * @date 2022-05-10
 */
@Data
@ApiModel(value = "TWarehouse", description = "仓库")
@TableName("t_warehouse")
public class TWarehouse implements Serializable
{
    private static final long serialVersionUID = 1L;

    /** 主键 */
    @ApiModelProperty("主键")
    @TableId("f_id")
    private Long fId;

    /** 编号 */
    @Excel(name = "编号")
    @ApiModelProperty("编号")
    @TableField("f_no")
    private String fNo;

    /** 名称 */
    @Excel(name = "名称")
    @ApiModelProperty("名称")
    @TableField("f_name")
    private String fName;

    /** 地址 */
    @Excel(name = "地址")
    @ApiModelProperty("地址")
    @TableField("f_addr")
    private String fAddr;

    /** 库容 */
    @Excel(name = "库容")
    @ApiModelProperty("库容")
    @TableField("f_totalgross")
    private Long fTotalgross;

    /** 联系人 */
    @Excel(name = "联系人")
    @ApiModelProperty("联系人")
    @TableField("f_contacts")
    private String fContacts;

    /** 电话 */
    @Excel(name = "电话")
    @ApiModelProperty("电话")
    @TableField("f_tel")
    private String fTel;

    /** 状态，默认 0,正常 1停用下拉选择 */
    @Excel(name = "状态，默认 0,正常 1停用下拉选择")
    @ApiModelProperty("状态，默认 0,正常 1停用下拉选择")
    @TableField("f_status")
    private String fStatus;

    /** 删除状态 */
    @ApiModelProperty("删除状态")
    @TableField("del_flag")
    private String delFlag;

    /** 创建者 */
    @ApiModelProperty("创建者")
    @TableField("create_by")
    private String createBy;

    /** 创建时间 */
    @ApiModelProperty("创建时间")
    @TableField("create_time")
    private Date createTime;

    /** 更新者 */
    @ApiModelProperty("更新者")
    @TableField("update_by")
    private String updateBy;

    /** 更新时间 */
    @ApiModelProperty("更新时间")
    @TableField("update_time")
    private Date updateTime;

    /** 备注 */
    @Excel(name = "备注")
    @ApiModelProperty("备注")
    @TableField("remark")
    private String remark;


    /** 请求参数 */
    @TableField(exist = false)
    private Map<String, Object> params;
}
