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
import com.ruoyi.project.system.mapper.TGoodsMapper;
import com.ruoyi.project.system.domain.TGoods;
import com.ruoyi.project.system.service.ITGoodsService;

/**
 * 商品详情Service业务层处理
 *
 * @author ruoyi
 * @date 2022-05-10
 */
@Service
public class TGoodsServiceImpl implements ITGoodsService
{
    @Autowired
    private TGoodsMapper tGoodsMapper;

    /**
     * 查询商品详情
     *
     * @param fId 商品详情主键
     * @return 商品详情
     */
    @Override
    public TGoods selectTGoodsByFId(Long fId)
    {
        TGoods tGoods = tGoodsMapper.selectById(fId);
        return tGoods;
    }

    /**
     * 查询商品详情列表
     *
     * @param tGoods 商品详情
     * @return 商品详情
     */
    @Override
    public List<TGoods> selectTGoodsList(TGoods tGoods)
    {
        QueryWrapper<TGoods> wrapper = Wrappers.query();
        wrapper.eq(tGoods.getFNo() != null, "f_no", tGoods.getFNo());
        wrapper.like(tGoods.getFName() != null, "f_name", tGoods.getFName());
        wrapper.eq(tGoods.getFEnam() != null, "f_enam", tGoods.getFEnam());
        wrapper.eq(tGoods.getFSpecs() != null, "f_specs", tGoods.getFSpecs());
        wrapper.eq(tGoods.getFPackagespecs() != null, "f_packagespecs", tGoods.getFPackagespecs());
        wrapper.eq(tGoods.getFColor() != null, "f_color", tGoods.getFColor());
        wrapper.eq(tGoods.getFStatus() != null, "f_status", tGoods.getFStatus());
        return tGoodsMapper.selectList(wrapper);
    }



    /**
     * 新增商品详情
     *
     * @param tGoods 商品详情
     * @return 结果
     */
    @Override
    public int insertTGoods(TGoods tGoods)
    {
        tGoods.setFId(IdGenerator.generateId());
        return tGoodsMapper.insert(tGoods);
    }

    /**
     * 修改商品详情
     *
     * @param tGoods 商品详情
     * @return 结果
     */
    @Override
    public int updateTGoods(TGoods tGoods)
    {
        return tGoodsMapper.updateById(tGoods);
    }

    /**
     * 批量删除商品详情
     *
     * @param fIds 需要删除的商品详情主键
     * @return 结果
     */
    @Override
    public int deleteTGoodsByFIds(Long[] fIds)
    {
        return tGoodsMapper.deleteBatchIds(Arrays.asList(fIds));
    }

    /**
     * 删除商品详情信息
     *
     * @param fId 商品详情主键
     * @return 结果
     */
    @Override
    public int deleteTGoodsByFId(Long fId)
    {
        return tGoodsMapper.deleteById(fId);
    }
}
