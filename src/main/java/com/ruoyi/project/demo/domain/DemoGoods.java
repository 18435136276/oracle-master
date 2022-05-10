package com.ruoyi.project.demo.domain;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;

/**
 * ${subTable.functionName}对象 demo_goods
 *
 * @author 毛泽
 * @date 2022-04-01
 */
@Data
@ApiModel(value = "DemoGoods", description = "${subTable.functionName}")
@TableName("demo_goods")
public class DemoGoods implements Serializable
{
    private static final long serialVersionUID = 1L;

    /**
     * 主键
     */
    @ApiModelProperty("主键")
    @TableId(value = "goods_id", type = IdType.ASSIGN_ID)
    private Long goodsId;

    /**
     * 外键
     */
    @Excel(name = "外键")
    @ApiModelProperty("外键")
    @TableField("order_id")
    private Long orderId;

    /**
     * 货物编号
     */
    @Excel(name = "货物编号")
    @ApiModelProperty("货物编号")
    @TableField("goods_code")
    private String goodsCode;

    /**
     * 货物名称
     */
    @Excel(name = "货物名称")
    @ApiModelProperty("货物名称")
    @TableField("goods_name")
    private String goodsName;

    /**
     * 所属仓库
     */
    @Excel(name = "所属仓库")
    @ApiModelProperty("所属仓库")
    @TableField("goods_store")
    private String goodsStore;

    /**
     * 货物数量
     */
    @Excel(name = "货物数量")
    @ApiModelProperty("货物数量")
    @TableField("goods_num")
    private Integer goodsNum;

    /**
     * 货物单价
     */
    @Excel(name = "货物单价")
    @ApiModelProperty("货物单价")
    @TableField("goods_price")
    private Double goodsPrice;

}
