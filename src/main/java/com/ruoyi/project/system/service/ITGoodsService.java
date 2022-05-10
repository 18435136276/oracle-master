package com.ruoyi.project.system.service;

import java.util.List;
import com.ruoyi.project.system.domain.TGoods;

/**
 * 商品详情Service接口
 * 
 * @author ruoyi
 * @date 2022-05-10
 */
public interface ITGoodsService 
{
    /**
     * 查询商品详情
     * 
     * @param fId 商品详情主键
     * @return 商品详情
     */
    public TGoods selectTGoodsByFId(Long fId);

    /**
     * 查询商品详情列表
     * 
     * @param tGoods 商品详情
     * @return 商品详情集合
     */
    public List<TGoods> selectTGoodsList(TGoods tGoods);

    /**
     * 新增商品详情
     * 
     * @param tGoods 商品详情
     * @return 结果
     */
    public int insertTGoods(TGoods tGoods);

    /**
     * 修改商品详情
     * 
     * @param tGoods 商品详情
     * @return 结果
     */
    public int updateTGoods(TGoods tGoods);

    /**
     * 批量删除商品详情
     * 
     * @param fIds 需要删除的商品详情主键集合
     * @return 结果
     */
    public int deleteTGoodsByFIds(Long[] fIds);

    /**
     * 删除商品详情信息
     * 
     * @param fId 商品详情主键
     * @return 结果
     */
    public int deleteTGoodsByFId(Long fId);
}
