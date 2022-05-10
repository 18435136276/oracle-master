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
import com.ruoyi.project.system.mapper.TWarehousebillsitemsMapper;
import com.ruoyi.project.system.domain.TWarehousebillsitems;
import com.ruoyi.project.system.service.ITWarehousebillsitemsService;

/**
 * 仓库明细从Service业务层处理
 *
 * @author ruoyi
 * @date 2022-05-10
 */
@Service
public class TWarehousebillsitemsServiceImpl implements ITWarehousebillsitemsService
{
    @Autowired
    private TWarehousebillsitemsMapper tWarehousebillsitemsMapper;

    /**
     * 查询仓库明细从
     *
     * @param fId 仓库明细从主键
     * @return 仓库明细从
     */
    @Override
    public TWarehousebillsitems selectTWarehousebillsitemsByFId(Long fId)
    {
        TWarehousebillsitems tWarehousebillsitems = tWarehousebillsitemsMapper.selectById(fId);
        return tWarehousebillsitems;
    }

    /**
     * 查询仓库明细从列表
     *
     * @param tWarehousebillsitems 仓库明细从
     * @return 仓库明细从
     */
    @Override
    public List<TWarehousebillsitems> selectTWarehousebillsitemsList(TWarehousebillsitems tWarehousebillsitems)
    {
        QueryWrapper<TWarehousebillsitems> wrapper = Wrappers.query();
        wrapper.eq(tWarehousebillsitems.getFPid() != null, "f_pid", tWarehousebillsitems.getFPid());
        wrapper.eq(tWarehousebillsitems.getFBillno() != null, "f_billno", tWarehousebillsitems.getFBillno());
        wrapper.eq(tWarehousebillsitems.getFGoodsid() != null, "f_goodsid", tWarehousebillsitems.getFGoodsid());
        wrapper.eq(tWarehousebillsitems.getFMblno() != null, "f_mblno", tWarehousebillsitems.getFMblno());
        wrapper.eq(tWarehousebillsitems.getFOriginalbilldate() != null, "f_originalbilldate", tWarehousebillsitems.getFOriginalbilldate());
        wrapper.eq(tWarehousebillsitems.getFBsdate() != null, "f_bsdate", tWarehousebillsitems.getFBsdate());
        wrapper.eq(tWarehousebillsitems.getFBillingway() != null, "f_billingway", tWarehousebillsitems.getFBillingway());
        wrapper.eq(tWarehousebillsitems.getFQty() != null, "f_qty", tWarehousebillsitems.getFQty());
        wrapper.eq(tWarehousebillsitems.getFBillstatus() != null, "f_billstatus", tWarehousebillsitems.getFBillstatus());
        wrapper.eq(tWarehousebillsitems.getFAmt() != null, "f_amt", tWarehousebillsitems.getFAmt());
        wrapper.eq(tWarehousebillsitems.getFBilltype() != null, "f_billtype", tWarehousebillsitems.getFBilltype());
        return tWarehousebillsitemsMapper.selectList(wrapper);
    }



    /**
     * 新增仓库明细从
     *
     * @param tWarehousebillsitems 仓库明细从
     * @return 结果
     */
    @Override
    public int insertTWarehousebillsitems(TWarehousebillsitems tWarehousebillsitems)
    {
        tWarehousebillsitems.setFId(IdGenerator.generateId());
        return tWarehousebillsitemsMapper.insert(tWarehousebillsitems);
    }

    /**
     * 修改仓库明细从
     *
     * @param tWarehousebillsitems 仓库明细从
     * @return 结果
     */
    @Override
    public int updateTWarehousebillsitems(TWarehousebillsitems tWarehousebillsitems)
    {
        return tWarehousebillsitemsMapper.updateById(tWarehousebillsitems);
    }

    /**
     * 批量删除仓库明细从
     *
     * @param fIds 需要删除的仓库明细从主键
     * @return 结果
     */
    @Override
    public int deleteTWarehousebillsitemsByFIds(Long[] fIds)
    {
        return tWarehousebillsitemsMapper.deleteBatchIds(Arrays.asList(fIds));
    }

    /**
     * 删除仓库明细从信息
     *
     * @param fId 仓库明细从主键
     * @return 结果
     */
    @Override
    public int deleteTWarehousebillsitemsByFId(Long fId)
    {
        return tWarehousebillsitemsMapper.deleteById(fId);
    }
}
