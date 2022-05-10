package com.ruoyi.project.demo.domain;

import java.util.Map;
import java.io.Serializable;

import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.TreeEntity;

/**
 * 地域信息对象 demo_area
 *
 * @author 毛泽
 * @date 2022-04-02
 */
@Data
@ApiModel(value = "DemoArea", description = "地域信息")
@TableName("demo_area")
public class DemoArea implements Serializable
{
    private static final long serialVersionUID = 1L;

    /**
     * 主键
     */
    @ApiModelProperty("主键")
    @TableId("area_id")
    private Long areaId;

    /**
     * 地域名称
     */
    @Excel(name = "地域名称")
    @ApiModelProperty("地域名称")
    @TableField("area_name")
    private String areaName;

    /**
     * 地域编码
     */
    @Excel(name = "地域编码")
    @ApiModelProperty("地域编码")
    @TableField("area_code")
    private Long areaCode;

    /**
     * 地域面积
     */
    @Excel(name = "地域面积")
    @ApiModelProperty("地域面积")
    @TableField("area_size")
    private Long areaSize;

    /**
     * 邮编
     */
    @Excel(name = "邮编")
    @ApiModelProperty("邮编")
    @TableField("area_post")
    private Long areaPost;

    /**
     * 地域等级
     */
    @Excel(name = "地域等级")
    @ApiModelProperty("地域等级")
    @TableField("area_level")
    private Integer areaLevel;

    /**
     * 父节点ID
     */
    @ApiModelProperty("父节点ID")
    @TableField("parent_id")
    private Long parentId;


    /**
     * 请求参数
     */
    @TableField(exist = false)
    private Map<String, Object> params;
}
