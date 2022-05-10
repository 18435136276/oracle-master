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
 * 商品详情对象 t_goods
 *
 * @author ruoyi
 * @date 2022-05-10
 */
@Data
@ApiModel(value = "TGoods", description = "商品详情")
@TableName("t_goods")
public class TGoods implements Serializable
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    @ApiModelProperty("$column.columnComment")
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

    /** 英文名称 */
    @Excel(name = "英文名称")
    @ApiModelProperty("英文名称")
    @TableField("f_enam")
    private String fEnam;

    /** 规格 */
    @Excel(name = "规格")
    @ApiModelProperty("规格")
    @TableField("f_specs")
    private String fSpecs;

    /** 品牌 */
    @Excel(name = "品牌")
    @ApiModelProperty("品牌")
    @TableField("f_packagespecs")
    private String fPackagespecs;

    /** 颜色 */
    @Excel(name = "颜色")
    @ApiModelProperty("颜色")
    @TableField("f_color")
    private String fColor;

    /** 状态 */
    @Excel(name = "状态")
    @ApiModelProperty("状态")
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
