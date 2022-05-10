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
 * 客户对象 t_corps
 *
 * @author ruoyi
 * @date 2022-05-10
 */
@Data
@ApiModel(value = "TCorps", description = "客户")
@TableName("t_corps")
public class TCorps implements Serializable
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

    /** 简称 */
    @Excel(name = "简称")
    @ApiModelProperty("简称")
    @TableField("f_cname")
    private String fCname;

    /** 名称 */
    @Excel(name = "名称")
    @ApiModelProperty("名称")
    @TableField("f_name")
    private String fName;

    /** 英文名称 */
    @Excel(name = "英文名称")
    @ApiModelProperty("英文名称")
    @TableField("f_ename")
    private String fEname;

    /** 电话 */
    @Excel(name = "电话")
    @ApiModelProperty("电话")
    @TableField("f_tel")
    private String fTel;

    /** 传真 */
    @Excel(name = "传真")
    @ApiModelProperty("传真")
    @TableField("f_fax")
    private String fFax;

    /** 邮箱 */
    @Excel(name = "邮箱")
    @ApiModelProperty("邮箱")
    @TableField("f_email")
    private String fEmail;

    /** 联系人 */
    @Excel(name = "联系人")
    @ApiModelProperty("联系人")
    @TableField("f_manage")
    private String fManage;

    /** 地址 */
    @Excel(name = "地址")
    @ApiModelProperty("地址")
    @TableField("f_addr")
    private String fAddr;

    /** 英文地址 */
    @Excel(name = "英文地址")
    @ApiModelProperty("英文地址")
    @TableField("f_eaddr")
    private String fEaddr;

    /** 省 */
    @Excel(name = "省")
    @ApiModelProperty("省")
    @TableField("f_province")
    private String fProvince;

    /** 市 */
    @Excel(name = "市")
    @ApiModelProperty("市")
    @TableField("f_city")
    private String fCity;

    /** 结算方式,结算表票结、月结 */
    @Excel(name = "结算方式,结算表票结、月结")
    @ApiModelProperty("结算方式,结算表票结、月结")
    @TableField("f_stltypeid")
    private Long fStltypeid;

    /** 结费天数 */
    @Excel(name = "结费天数")
    @ApiModelProperty("结费天数")
    @TableField("f_stldays")
    private Long fStldays;

    /** 税号 */
    @Excel(name = "税号")
    @ApiModelProperty("税号")
    @TableField("f_tax")
    private String fTax;

    /** 开票电话 */
    @Excel(name = "开票电话")
    @ApiModelProperty("开票电话")
    @TableField("f_invtel")
    private String fInvtel;

    /** 开票地址 */
    @Excel(name = "开票地址")
    @ApiModelProperty("开票地址")
    @TableField("f_invaddr")
    private String fInvaddr;

    /** 本位币账号 */
    @Excel(name = "本位币账号")
    @ApiModelProperty("本位币账号")
    @TableField("f_bankno")
    private String fBankno;

    /** 本位币银行 */
    @Excel(name = "本位币银行")
    @ApiModelProperty("本位币银行")
    @TableField("f_bankname")
    private String fBankname;

    /** 外币账号 */
    @Excel(name = "外币账号")
    @ApiModelProperty("外币账号")
    @TableField("f_ubankno")
    private String fUbankno;

    /** 外币银行 */
    @Excel(name = "外币银行")
    @ApiModelProperty("外币银行")
    @TableField("f_ubankname")
    private String fUbankname;

    /** 状态默认0有效1无效 */
    @Excel(name = "状态默认0有效1无效")
    @ApiModelProperty("状态默认0有效1无效")
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

    /** 客户类别(拼接起来的) */
    @Excel(name = "客户类别(拼接起来的)")
    @ApiModelProperty("客户类别(拼接起来的)")
    @TableField("f_typename")
    private String fTypename;

    /** 登陆账号 */
    @Excel(name = "登陆账号")
    @ApiModelProperty("登陆账号")
    @TableField("login_account")
    private String loginAccount;

    /** 信用等级 */
    @Excel(name = "信用等级")
    @ApiModelProperty("信用等级")
    @TableField("credit_lv")
    private String creditLv;

    /** 账期天数(订单结束后最迟结款天数)  */
    @Excel(name = "账期天数(订单结束后最迟结款天数) ")
    @ApiModelProperty("账期天数(订单结束后最迟结款天数) ")
    @TableField("payment_days")
    private Long paymentDays;

    /** 公司车辆数 */
    @Excel(name = "公司车辆数")
    @ApiModelProperty("公司车辆数")
    @TableField("car_num")
    private Long carNum;

    /** 总公司 */
    @Excel(name = "总公司")
    @ApiModelProperty("总公司")
    @TableField("head_office")
    private String headOffice;

    /** 注册资本 */
    @Excel(name = "注册资本")
    @ApiModelProperty("注册资本")
    @TableField("registerd_capital")
    private String registerdCapital;

    /** 法人 */
    @Excel(name = "法人")
    @ApiModelProperty("法人")
    @TableField("legal_person")
    private String legalPerson;

    /** 所属行业 */
    @Excel(name = "所属行业")
    @ApiModelProperty("所属行业")
    @TableField("insdustry")
    private String insdustry;

    /** 社会统一信用代码 */
    @Excel(name = "社会统一信用代码")
    @ApiModelProperty("社会统一信用代码")
    @TableField("credit_num")
    private String creditNum;

    /** 纳税人识别号 */
    @Excel(name = "纳税人识别号")
    @ApiModelProperty("纳税人识别号")
    @TableField("taxpayer_num")
    private String taxpayerNum;

    /** 工商注册号 */
    @Excel(name = "工商注册号")
    @ApiModelProperty("工商注册号")
    @TableField("industry_commerce_num")
    private String industryCommerceNum;

    /** 组织机构代码 */
    @Excel(name = "组织机构代码")
    @ApiModelProperty("组织机构代码")
    @TableField("organization_num")
    private String organizationNum;

    /** 登记机关 */
    @Excel(name = "登记机关")
    @ApiModelProperty("登记机关")
    @TableField("register_organization")
    private String registerOrganization;

    /** 成立日期 */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @Excel(name = "成立日期", width = 30, dateFormat = "yyyy-MM-dd HH:mm:ss")
    @ApiModelProperty("成立日期")
    @TableField("date_of_establishment")
    private Date dateOfEstablishment;

    /** 营业期限 */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @Excel(name = "营业期限", width = 30, dateFormat = "yyyy-MM-dd HH:mm:ss")
    @ApiModelProperty("营业期限")
    @TableField("business_deadline")
    private Date businessDeadline;

    /** 营业区域 */
    @Excel(name = "营业区域")
    @ApiModelProperty("营业区域")
    @TableField("business_area")
    private String businessArea;

    /** 审核年检日期 */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @Excel(name = "审核年检日期", width = 30, dateFormat = "yyyy-MM-dd HH:mm:ss")
    @ApiModelProperty("审核年检日期")
    @TableField("annual_date")
    private Date annualDate;

    /** 注册地址 */
    @Excel(name = "注册地址")
    @ApiModelProperty("注册地址")
    @TableField("registerd_address")
    private String registerdAddress;

    /** 经营范围 */
    @Excel(name = "经营范围")
    @ApiModelProperty("经营范围")
    @TableField("manage_scope")
    private String manageScope;


    /** 请求参数 */
    @TableField(exist = false)
    private Map<String, Object> params;
}
