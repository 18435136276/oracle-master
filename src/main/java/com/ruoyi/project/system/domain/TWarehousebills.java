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
 * 仓库主(出入库)对象 t_warehousebills
 *
 * @author ruoyi
 * @date 2022-05-10
 */
@Data
@ApiModel(value = "TWarehousebills", description = "仓库主(出入库)")
@TableName("t_warehousebills")
public class TWarehousebills implements Serializable
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    @ApiModelProperty("$column.columnComment")
    @TableId("f_id")
    private Long fId;

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

    /** 客户名称，t_corps 中的no或 name，模糊查找选择后，存储id，显示name */
    @Excel(name = "客户名称，t_corps 中的no或 name，模糊查找选择后，存储id，显示name")
    @ApiModelProperty("客户名称，t_corps 中的no或 name，模糊查找选择后，存储id，显示name")
    @TableField("f_corpid")
    private Long fCorpid;

    /** 仓库 */
    @Excel(name = "仓库")
    @ApiModelProperty("仓库")
    @TableField("f_warehouseid")
    private Long fWarehouseid;

    /** 仓管人 */
    @Excel(name = "仓管人")
    @ApiModelProperty("仓管人")
    @TableField("f_storekeeper")
    private String fStorekeeper;

    /** 仓储计费日期 */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @Excel(name = "仓储计费日期", width = 30, dateFormat = "yyyy-MM-dd HH:mm:ss")
    @ApiModelProperty("仓储计费日期")
    @TableField("f_chargedate")
    private Date fChargedate;

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

    /** 出库类别(字典表) */
    @Excel(name = "出库类别(字典表)")
    @ApiModelProperty("出库类别(字典表)")
    @TableField("f_trademodeid")
    private Long fTrademodeid;

    /** 开票公司(客户列表) */
    @Excel(name = "开票公司(客户列表)")
    @ApiModelProperty("开票公司(客户列表)")
    @TableField("f_sbu")
    private Long fSbu;

    /** 计费单位(数据字典),下拉选择毛重或净重 */
    @Excel(name = "计费单位(数据字典),下拉选择毛重或净重")
    @ApiModelProperty("计费单位(数据字典),下拉选择毛重或净重")
    @TableField("f_feetunit")
    private String fFeetunit;

    /** 提单号 */
    @Excel(name = "提单号")
    @ApiModelProperty("提单号")
    @TableField("f_mblno")
    private String fMblno;

    /** 单据类型(数据字典)SJRK（入库） SJCK（实际出库） CKDB（调拨） HQZY（货权转移）TWTG(货物通关) */
    @Excel(name = "单据类型(数据字典)SJRK", readConverterExp = "入=库")
    @ApiModelProperty("单据类型(数据字典)SJRK（入库） SJCK（实际出库） CKDB（调拨） HQZY（货权转移）TWTG(货物通关)")
    @TableField("f_billtype")
    private String fBilltype;

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

    /** 运输条款 */
    @Excel(name = "运输条款")
    @ApiModelProperty("运输条款")
    @TableField("f_serviceitems")
    private String fServiceitems;

    /** 开票人 */
    @Excel(name = "开票人")
    @ApiModelProperty("开票人")
    @TableField("f_invoceobj")
    private String fInvoceobj;

    /** 发货人全称 */
    @Excel(name = "发货人全称")
    @ApiModelProperty("发货人全称")
    @TableField("f_shippername")
    private String fShippername;

    /** 发货联系人 */
    @Excel(name = "发货联系人")
    @ApiModelProperty("发货联系人")
    @TableField("f_shipperattn")
    private String fShipperattn;

    /** 发货人电话 */
    @Excel(name = "发货人电话")
    @ApiModelProperty("发货人电话")
    @TableField("f_shippertel")
    private String fShippertel;

    /** 收货人全称 */
    @Excel(name = "收货人全称")
    @ApiModelProperty("收货人全称")
    @TableField("f_consigneername")
    private String fConsigneername;

    /** 发货联系人 */
    @Excel(name = "发货联系人")
    @ApiModelProperty("发货联系人")
    @TableField("f_consigneeattn")
    private String fConsigneeattn;

    /** 收货人电话 */
    @Excel(name = "收货人电话")
    @ApiModelProperty("收货人电话")
    @TableField("f_consigneetel")
    private String fConsigneetel;

    /** 是否办理保险 */
    @Excel(name = "是否办理保险")
    @ApiModelProperty("是否办理保险")
    @TableField("f_insurance")
    private String fInsurance;

    /** 保险金额 */
    @Excel(name = "保险金额")
    @ApiModelProperty("保险金额")
    @TableField("f_insuranceamt")
    private Long fInsuranceamt;

    /** 付款方式 */
    @Excel(name = "付款方式")
    @ApiModelProperty("付款方式")
    @TableField("f_paymode")
    private Long fPaymode;

    /** 金额合计 */
    @Excel(name = "金额合计")
    @ApiModelProperty("金额合计")
    @TableField("f_money")
    private Long fMoney;

    /** 采购人 */
    @Excel(name = "采购人")
    @ApiModelProperty("采购人")
    @TableField("f_purchase")
    private Long fPurchase;

    /** 拒绝理由 */
    @Excel(name = "拒绝理由")
    @ApiModelProperty("拒绝理由")
    @TableField("f_reason")
    private String fReason;


    /** 请求参数 */
    @TableField(exist = false)
    private Map<String, Object> params;
}
