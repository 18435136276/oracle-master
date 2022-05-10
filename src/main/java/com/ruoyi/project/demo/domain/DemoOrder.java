package com.ruoyi.project.demo.domain;

import java.util.List;
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
 * 订单管理对象 demo_order
 *
 * @author 毛泽
 * @date 2022-04-01
 */
@Data
@ApiModel(value = "DemoOrder", description = "订单管理")
@TableName("demo_order")
public class DemoOrder implements Serializable
{
    private static final long serialVersionUID = 1L;

    /**
     * 主键
     */
    @ApiModelProperty("${comment}")
    @TableId("order_id")
    private Long orderId;

    /**
     * 订单编号
     */
    @Excel(name = "订单编号")
    @ApiModelProperty("订单编号")
    @TableField("order_code")
    private String orderCode;

    /**
     * 订单金额
     */
    @Excel(name = "订单金额")
    @ApiModelProperty("订单金额")
    @TableField("order_money")
    private Double orderMoney;

    /**
     * 配送地址
     */
    @Excel(name = "配送地址")
    @ApiModelProperty("配送地址")
    @TableField("order_address")
    private String orderAddress;

    /**
     * 创建时间
     */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @Excel(name = "创建时间", width = 30, dateFormat = "yyyy-MM-dd HH:mm:ss")
    @ApiModelProperty("创建时间")
    @TableField("order_date")
    private Date orderDate;

    /**
     * 收件人
     */
    @Excel(name = "收件人")
    @ApiModelProperty("收件人")
    @TableField("order_user")
    private String orderUser;

    /**
     * 联系方式
     */
    @Excel(name = "联系方式")
    @ApiModelProperty("联系方式")
    @TableField("order_phone")
    private String orderPhone;

    /**
     * $table.subTable.functionName信息
     */
    @TableField(exist = false)
    private List<DemoGoods> demoGoodsList;

    /**
     * 请求参数
     */
    @TableField(exist = false)
    private Map<String, Object> params;
}
