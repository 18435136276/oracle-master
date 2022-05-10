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
import com.ruoyi.project.system.mapper.TWarehousebillsMapper;
import com.ruoyi.project.system.domain.TWarehousebills;
import com.ruoyi.project.system.service.ITWarehousebillsService;

/**
 * 仓库主(出入库)Service业务层处理
 *
 * @author ruoyi
 * @date 2022-05-10
 */
@Service
public class TWarehousebillsServiceImpl implements ITWarehousebillsService
{
    @Autowired
    private TWarehousebillsMapper tWarehousebillsMapper;

    /**
     * 查询仓库主(出入库)
     *
     * @param fId 仓库主(出入库)主键
     * @return 仓库主(出入库)
     */
    @Override
    public TWarehousebills selectTWarehousebillsByFId(Long fId)
    {
        TWarehousebills tWarehousebills = tWarehousebillsMapper.selectById(fId);
        return tWarehousebills;
    }

    /**
     * 查询仓库主(出入库)列表
     *
     * @param tWarehousebills 仓库主(出入库)
     * @return 仓库主(出入库)
     */
    @Override
    public List<TWarehousebills> selectTWarehousebillsList(TWarehousebills tWarehousebills)
    {
        QueryWrapper<TWarehousebills> wrapper = Wrappers.query();
        wrapper.eq(tWarehousebills.getFContacts() != null, "f_contacts", tWarehousebills.getFContacts());
        wrapper.eq(tWarehousebills.getFTel() != null, "f_tel", tWarehousebills.getFTel());
        wrapper.eq(tWarehousebills.getFCorpid() != null, "f_corpid", tWarehousebills.getFCorpid());
        wrapper.eq(tWarehousebills.getFWarehouseid() != null, "f_warehouseid", tWarehousebills.getFWarehouseid());
        wrapper.eq(tWarehousebills.getFStorekeeper() != null, "f_storekeeper", tWarehousebills.getFStorekeeper());
        wrapper.eq(tWarehousebills.getFChargedate() != null, "f_chargedate", tWarehousebills.getFChargedate());
        wrapper.eq(tWarehousebills.getFBsdate() != null, "f_bsdate", tWarehousebills.getFBsdate());
        wrapper.eq(tWarehousebills.getFBillingway() != null, "f_billingway", tWarehousebills.getFBillingway());
        wrapper.eq(tWarehousebills.getFTrademodeid() != null, "f_trademodeid", tWarehousebills.getFTrademodeid());
        wrapper.eq(tWarehousebills.getFSbu() != null, "f_sbu", tWarehousebills.getFSbu());
        wrapper.eq(tWarehousebills.getFFeetunit() != null, "f_feetunit", tWarehousebills.getFFeetunit());
        wrapper.eq(tWarehousebills.getFMblno() != null, "f_mblno", tWarehousebills.getFMblno());
        wrapper.eq(tWarehousebills.getFBilltype() != null, "f_billtype", tWarehousebills.getFBilltype());
        wrapper.eq(tWarehousebills.getFBillstatus() != null, "f_billstatus", tWarehousebills.getFBillstatus());
        wrapper.eq(tWarehousebills.getFServiceitems() != null, "f_serviceitems", tWarehousebills.getFServiceitems());
        wrapper.eq(tWarehousebills.getFInvoceobj() != null, "f_invoceobj", tWarehousebills.getFInvoceobj());
        wrapper.like(tWarehousebills.getFShippername() != null, "f_shippername", tWarehousebills.getFShippername());
        wrapper.eq(tWarehousebills.getFShipperattn() != null, "f_shipperattn", tWarehousebills.getFShipperattn());
        wrapper.eq(tWarehousebills.getFShippertel() != null, "f_shippertel", tWarehousebills.getFShippertel());
        wrapper.like(tWarehousebills.getFConsigneername() != null, "f_consigneername", tWarehousebills.getFConsigneername());
        wrapper.eq(tWarehousebills.getFConsigneeattn() != null, "f_consigneeattn", tWarehousebills.getFConsigneeattn());
        wrapper.eq(tWarehousebills.getFConsigneetel() != null, "f_consigneetel", tWarehousebills.getFConsigneetel());
        wrapper.eq(tWarehousebills.getFInsurance() != null, "f_insurance", tWarehousebills.getFInsurance());
        wrapper.eq(tWarehousebills.getFInsuranceamt() != null, "f_insuranceamt", tWarehousebills.getFInsuranceamt());
        wrapper.eq(tWarehousebills.getFPaymode() != null, "f_paymode", tWarehousebills.getFPaymode());
        wrapper.eq(tWarehousebills.getFMoney() != null, "f_money", tWarehousebills.getFMoney());
        wrapper.eq(tWarehousebills.getFPurchase() != null, "f_purchase", tWarehousebills.getFPurchase());
        wrapper.eq(tWarehousebills.getFReason() != null, "f_reason", tWarehousebills.getFReason());
        return tWarehousebillsMapper.selectList(wrapper);
    }



    /**
     * 新增仓库主(出入库)
     *
     * @param tWarehousebills 仓库主(出入库)
     * @return 结果
     */
    @Override
    public int insertTWarehousebills(TWarehousebills tWarehousebills)
    {
        tWarehousebills.setFId(IdGenerator.generateId());
        return tWarehousebillsMapper.insert(tWarehousebills);
    }

    /**
     * 修改仓库主(出入库)
     *
     * @param tWarehousebills 仓库主(出入库)
     * @return 结果
     */
    @Override
    public int updateTWarehousebills(TWarehousebills tWarehousebills)
    {
        return tWarehousebillsMapper.updateById(tWarehousebills);
    }

    /**
     * 批量删除仓库主(出入库)
     *
     * @param fIds 需要删除的仓库主(出入库)主键
     * @return 结果
     */
    @Override
    public int deleteTWarehousebillsByFIds(Long[] fIds)
    {
        return tWarehousebillsMapper.deleteBatchIds(Arrays.asList(fIds));
    }

    /**
     * 删除仓库主(出入库)信息
     *
     * @param fId 仓库主(出入库)主键
     * @return 结果
     */
    @Override
    public int deleteTWarehousebillsByFId(Long fId)
    {
        return tWarehousebillsMapper.deleteById(fId);
    }
}
