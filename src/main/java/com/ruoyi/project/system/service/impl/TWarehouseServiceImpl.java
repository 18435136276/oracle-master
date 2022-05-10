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
import com.ruoyi.project.system.mapper.TWarehouseMapper;
import com.ruoyi.project.system.domain.TWarehouse;
import com.ruoyi.project.system.service.ITWarehouseService;

/**
 * 仓库Service业务层处理
 *
 * @author ruoyi
 * @date 2022-05-10
 */
@Service
public class TWarehouseServiceImpl implements ITWarehouseService
{
    @Autowired
    private TWarehouseMapper tWarehouseMapper;

    /**
     * 查询仓库
     *
     * @param fId 仓库主键
     * @return 仓库
     */
    @Override
    public TWarehouse selectTWarehouseByFId(Long fId)
    {
        TWarehouse tWarehouse = tWarehouseMapper.selectById(fId);
        return tWarehouse;
    }

    /**
     * 查询仓库列表
     *
     * @param tWarehouse 仓库
     * @return 仓库
     */
    @Override
    public List<TWarehouse> selectTWarehouseList(TWarehouse tWarehouse)
    {
        QueryWrapper<TWarehouse> wrapper = Wrappers.query();
        wrapper.eq(tWarehouse.getFNo() != null, "f_no", tWarehouse.getFNo());
        wrapper.like(tWarehouse.getFName() != null, "f_name", tWarehouse.getFName());
        wrapper.eq(tWarehouse.getFAddr() != null, "f_addr", tWarehouse.getFAddr());
        wrapper.eq(tWarehouse.getFTotalgross() != null, "f_totalgross", tWarehouse.getFTotalgross());
        wrapper.eq(tWarehouse.getFContacts() != null, "f_contacts", tWarehouse.getFContacts());
        wrapper.eq(tWarehouse.getFTel() != null, "f_tel", tWarehouse.getFTel());
        wrapper.eq(tWarehouse.getFStatus() != null, "f_status", tWarehouse.getFStatus());
        return tWarehouseMapper.selectList(wrapper);
    }



    /**
     * 新增仓库
     *
     * @param tWarehouse 仓库
     * @return 结果
     */
    @Override
    public int insertTWarehouse(TWarehouse tWarehouse)
    {
        tWarehouse.setFId(IdGenerator.generateId());
        return tWarehouseMapper.insert(tWarehouse);
    }

    /**
     * 修改仓库
     *
     * @param tWarehouse 仓库
     * @return 结果
     */
    @Override
    public int updateTWarehouse(TWarehouse tWarehouse)
    {
        return tWarehouseMapper.updateById(tWarehouse);
    }

    /**
     * 批量删除仓库
     *
     * @param fIds 需要删除的仓库主键
     * @return 结果
     */
    @Override
    public int deleteTWarehouseByFIds(Long[] fIds)
    {
        return tWarehouseMapper.deleteBatchIds(Arrays.asList(fIds));
    }

    /**
     * 删除仓库信息
     *
     * @param fId 仓库主键
     * @return 结果
     */
    @Override
    public int deleteTWarehouseByFId(Long fId)
    {
        return tWarehouseMapper.deleteById(fId);
    }
}
