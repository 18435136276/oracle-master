package com.ruoyi.project.system.service.impl;

import java.util.List;
import java.util.Arrays;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.conditions.query.QueryChainWrapper;
import java.util.Map;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.common.utils.IdGenerator;
import com.ruoyi.project.system.mapper.TCorpsMapper;
import com.ruoyi.project.system.domain.TCorps;
import com.ruoyi.project.system.service.ITCorpsService;

/**
 * 客户Service业务层处理
 *
 * @author ruoyi
 * @date 2022-05-10
 */
@Service
public class TCorpsServiceImpl implements ITCorpsService
{
    @Autowired
    private TCorpsMapper tCorpsMapper;

    /**
     * 查询客户
     *
     * @param fId 客户主键
     * @return 客户
     */
    @Override
    public TCorps selectTCorpsByFId(Long fId)
    {
        TCorps tCorps = tCorpsMapper.selectById(fId);
        return tCorps;
    }

    /**
     * 查询客户列表
     *
     * @param tCorps 客户
     * @return 客户
     */
    @Override
    public List<TCorps> selectTCorpsList(TCorps tCorps)
    {
        QueryWrapper<TCorps> wrapper = Wrappers.query();
        wrapper.eq(tCorps.getFNo() != null, "f_no", tCorps.getFNo());
        wrapper.like(tCorps.getFCname() != null, "f_cname", tCorps.getFCname());
        wrapper.like(tCorps.getFName() != null, "f_name", tCorps.getFName());
        wrapper.like(tCorps.getFEname() != null, "f_ename", tCorps.getFEname());
        wrapper.eq(tCorps.getFTel() != null, "f_tel", tCorps.getFTel());
        wrapper.eq(tCorps.getFFax() != null, "f_fax", tCorps.getFFax());
        wrapper.eq(tCorps.getFEmail() != null, "f_email", tCorps.getFEmail());
        wrapper.eq(tCorps.getFManage() != null, "f_manage", tCorps.getFManage());
        wrapper.eq(tCorps.getFAddr() != null, "f_addr", tCorps.getFAddr());
        wrapper.eq(tCorps.getFEaddr() != null, "f_eaddr", tCorps.getFEaddr());
        wrapper.eq(tCorps.getFProvince() != null, "f_province", tCorps.getFProvince());
        wrapper.eq(tCorps.getFCity() != null, "f_city", tCorps.getFCity());
        wrapper.eq(tCorps.getFStltypeid() != null, "f_stltypeid", tCorps.getFStltypeid());
        wrapper.eq(tCorps.getFStldays() != null, "f_stldays", tCorps.getFStldays());
        wrapper.eq(tCorps.getFTax() != null, "f_tax", tCorps.getFTax());
        wrapper.eq(tCorps.getFInvtel() != null, "f_invtel", tCorps.getFInvtel());
        wrapper.eq(tCorps.getFInvaddr() != null, "f_invaddr", tCorps.getFInvaddr());
        wrapper.eq(tCorps.getFBankno() != null, "f_bankno", tCorps.getFBankno());
        wrapper.like(tCorps.getFBankname() != null, "f_bankname", tCorps.getFBankname());
        wrapper.eq(tCorps.getFUbankno() != null, "f_ubankno", tCorps.getFUbankno());
        wrapper.like(tCorps.getFUbankname() != null, "f_ubankname", tCorps.getFUbankname());
        wrapper.eq(tCorps.getFStatus() != null, "f_status", tCorps.getFStatus());
        wrapper.like(tCorps.getFTypename() != null, "f_typename", tCorps.getFTypename());
        wrapper.eq(tCorps.getLoginAccount() != null, "login_account", tCorps.getLoginAccount());
        wrapper.eq(tCorps.getCreditLv() != null, "credit_lv", tCorps.getCreditLv());
        wrapper.eq(tCorps.getPaymentDays() != null, "payment_days", tCorps.getPaymentDays());
        wrapper.eq(tCorps.getCarNum() != null, "car_num", tCorps.getCarNum());
        wrapper.eq(tCorps.getHeadOffice() != null, "head_office", tCorps.getHeadOffice());
        wrapper.eq(tCorps.getRegisterdCapital() != null, "registerd_capital", tCorps.getRegisterdCapital());
        wrapper.eq(tCorps.getLegalPerson() != null, "legal_person", tCorps.getLegalPerson());
        wrapper.eq(tCorps.getInsdustry() != null, "insdustry", tCorps.getInsdustry());
        wrapper.eq(tCorps.getCreditNum() != null, "credit_num", tCorps.getCreditNum());
        wrapper.eq(tCorps.getTaxpayerNum() != null, "taxpayer_num", tCorps.getTaxpayerNum());
        wrapper.eq(tCorps.getIndustryCommerceNum() != null, "industry_commerce_num", tCorps.getIndustryCommerceNum());
        wrapper.eq(tCorps.getOrganizationNum() != null, "organization_num", tCorps.getOrganizationNum());
        wrapper.eq(tCorps.getRegisterOrganization() != null, "register_organization", tCorps.getRegisterOrganization());
        wrapper.eq(tCorps.getDateOfEstablishment() != null, "date_of_establishment", tCorps.getDateOfEstablishment());
        wrapper.eq(tCorps.getBusinessDeadline() != null, "business_deadline", tCorps.getBusinessDeadline());
        wrapper.eq(tCorps.getBusinessArea() != null, "business_area", tCorps.getBusinessArea());
        wrapper.eq(tCorps.getAnnualDate() != null, "annual_date", tCorps.getAnnualDate());
        wrapper.eq(tCorps.getRegisterdAddress() != null, "registerd_address", tCorps.getRegisterdAddress());
        wrapper.eq(tCorps.getManageScope() != null, "manage_scope", tCorps.getManageScope());
        return tCorpsMapper.selectList(wrapper);
    }



    /**
     * 新增客户
     *
     * @param tCorps 客户
     * @return 结果
     */
    @Override
    public int insertTCorps(TCorps tCorps)
    {
        tCorps.setFId(IdGenerator.generateId());
        return tCorpsMapper.insert(tCorps);
    }

    /**
     * 修改客户
     *
     * @param tCorps 客户
     * @return 结果
     */
    @Override
    public int updateTCorps(TCorps tCorps)
    {
        return tCorpsMapper.updateById(tCorps);
    }

    /**
     * 批量删除客户
     *
     * @param fIds 需要删除的客户主键
     * @return 结果
     */
    @Override
    public int deleteTCorpsByFIds(Long[] fIds)
    {
        return tCorpsMapper.deleteBatchIds(Arrays.asList(fIds));
    }

    /**
     * 删除客户信息
     *
     * @param fId 客户主键
     * @return 结果
     */
    @Override
    public int deleteTCorpsByFId(Long fId)
    {
        return tCorpsMapper.deleteById(fId);
    }
}
