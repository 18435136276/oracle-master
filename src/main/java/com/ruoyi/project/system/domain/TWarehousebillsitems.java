package com.ruoyi.project.system.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
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
 * 仓库明细从对象 t_warehousebillsitems
 *
 * @author ruoyi
 * @date 2022-05-10
 */
@Data
@ApiModel(value = "TWarehousebillsitems", description = "仓库明细从")
@TableName("t_warehousebillsitems")
public class TWarehousebillsitems implements Serializable
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    @ApiModelProperty("$column.columnComment")
    @TableId("f_id")
    private Long fId;

    /** PID,对应主表id */
    @Excel(name = "PID,对应主表id")
    @ApiModelProperty("PID,对应主表id")
    @TableField("f_pid")
    private Long fPid;

    /** 业务编号,保存主表的 */
    @Excel(name = "业务编号,保存主表的")
    @ApiModelProperty("业务编号,保存主表的")
    @TableField("f_billno")
    private String fBillno;

    /** 货物品名，存储id 显示名称	t_goods 中的no或 name，模糊查找选择后，存储f_id，显示name */
    @Excel(name = "货物品名，存储id 显示名称	t_goods 中的no或 name，模糊查找选择后，存储f_id，显示name")
    @ApiModelProperty("货物品名，存储id 显示名称	t_goods 中的no或 name，模糊查找选择后，存储f_id，显示name")
    @TableField("f_goodsid")
    private Long fGoodsid;

    /** 提单号 */
    @Excel(name = "提单号")
    @ApiModelProperty("提单号")
    @TableField("f_mblno")
    private String fMblno;

    /** 原始入库日期 */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @Excel(name = "原始入库日期", width = 30, dateFormat = "yyyy-MM-dd HH:mm:ss")
    @ApiModelProperty("原始入库日期")
    @TableField("f_originalbilldate")
    private Date fOriginalbilldate;

    /** 入（出）库日期 */
    @Excel(name = "入", readConverterExp = "出=")
    @ApiModelProperty("入（出）库日期")
    @TableField("f_bsdate")
    private Date fBsdate;

    /** 计费方式(数据字典) */
    @Excel(name = "计费方式(数据字典)")
    @ApiModelProperty("计费方式(数据字典)")
    @TableField("f_billingway")
    private Long fBillingway;

    /** 件数 */
    @Excel(name = "件数")
    @ApiModelProperty("件数")
    @TableField("f_qty")
    private Long fQty;

    /** 状态(数据字典),0 录入 1确认订单 */
    @Excel(name = "状态(数据字典),0 录入 1确认订单")
    @ApiModelProperty("状态(数据字典),0 录入 1确认订单")
    @TableField("f_billstatus")
    private Long fBillstatus;

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

    /** 金额 */
    @Excel(name = "金额")
    @ApiModelProperty("金额")
    @TableField("f_amt")
    private Long fAmt;

    /** 单据类型(数据字典)SJRK（入库） SJCK（实际出库） CKDB（调拨） HQZY（货权转移） */
    @Excel(name = "单据类型(数据字典)SJRK", readConverterExp = "入=库")
    @ApiModelProperty("单据类型(数据字典)SJRK（入库） SJCK（实际出库） CKDB（调拨） HQZY（货权转移）")
    @TableField("f_billtype")
    private String fBilltype;


    /** 请求参数 */
    @TableField(exist = false)
    private Map<String, Object> params;
}
