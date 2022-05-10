package com.ruoyi.project.demo.service.impl;

import java.sql.Timestamp;
import java.util.*;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.conditions.query.QueryChainWrapper;
import com.ruoyi.common.utils.IdGenerator;
import com.ruoyi.project.demo.mapper.DemoGoodsMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ruoyi.common.utils.StringUtils;
import org.springframework.transaction.annotation.Transactional;
import com.ruoyi.project.demo.domain.DemoGoods;
import com.ruoyi.project.demo.mapper.DemoOrderMapper;
import com.ruoyi.project.demo.domain.DemoOrder;
import com.ruoyi.project.demo.service.IDemoOrderService;

/**
 * 订单管理Service业务层处理
 *
 * @author 毛泽
 * @date 2022-04-01
 */
@Service
public class DemoOrderServiceImpl implements IDemoOrderService
{
    @Autowired
    private DemoOrderMapper demoOrderMapper;
    @Autowired
    private DemoGoodsMapper demoGoodsMapper;

    /**
     * 查询订单管理
     *
     * @param orderId 订单管理主键
     * @return 订单管理
     */
    @Override
    public DemoOrder selectDemoOrderByOrderId(Long orderId)
    {
        DemoOrder demoOrder = demoOrderMapper.selectById(orderId);
        List<DemoGoods> demoGoodsList = new QueryChainWrapper<>(demoGoodsMapper)
                .eq("order_id", orderId)
                .list();
        demoOrder.setDemoGoodsList(demoGoodsList);
        return demoOrder;
    }

    /**
     * 查询订单管理列表
     *
     * @param demoOrder 订单管理
     * @return 订单管理
     */
    @Override
    public List<DemoOrder> selectDemoOrderList(DemoOrder demoOrder)
    {
        QueryWrapper<DemoOrder> wrapper = Wrappers.query();
        wrapper.like(demoOrder.getOrderCode() != null, "order_code", demoOrder.getOrderCode());
        Map<String, Object> params = demoOrder.getParams();
        if (params != null && params.get("beginOrderDate") != null && params.get("endOrderDate") != null)
        {
            wrapper.apply("order_date >= TO_DATE({0}, 'yyyy-MM-dd')", params.get("beginOrderDate"));
            wrapper.apply("order_date <= TO_DATE({0}, 'yyyy-MM-dd')", params.get("endOrderDate"));
        }
        wrapper.like(demoOrder.getOrderUser() != null, "order_user", demoOrder.getOrderUser());
        return demoOrderMapper.selectList(wrapper);
    }

    /**
     * 新增订单管理
     *
     * @param demoOrder 订单管理
     * @return 结果
     */
    @Transactional
    @Override
    public int insertDemoOrder(DemoOrder demoOrder)
    {
        demoOrder.setOrderId(IdGenerator.generateId());
        double money = 0;
        for (DemoGoods demoGoods : demoOrder.getDemoGoodsList())
        {
            money += demoGoods.getGoodsNum() * demoGoods.getGoodsPrice();
            demoGoods.setOrderId(demoOrder.getOrderId());
            demoGoodsMapper.insert(demoGoods);
        }
        demoOrder.setOrderMoney(money);
        demoOrder.setOrderDate(new Date());
        demoOrder.setOrderCode(System.currentTimeMillis() + "");
        return demoOrderMapper.insert(demoOrder);
    }

    /**
     * 修改订单管理
     *
     * @param demoOrder 订单管理
     * @return 结果
     */
    @Transactional
    @Override
    public int updateDemoOrder(DemoOrder demoOrder)
    {
        QueryWrapper<DemoGoods> wrapper = Wrappers.query();
        wrapper.eq("order_id", demoOrder.getOrderId());
        demoGoodsMapper.delete(wrapper);
        double money = 0;
        for (DemoGoods demoGoods : demoOrder.getDemoGoodsList())
        {
            money += demoGoods.getGoodsNum() * demoGoods.getGoodsPrice();
            demoGoods.setOrderId(demoOrder.getOrderId());
            demoGoodsMapper.insert(demoGoods);
        }
        demoOrder.setOrderMoney(money);
        return demoOrderMapper.updateById(demoOrder);
    }

    /**
     * 批量删除订单管理
     *
     * @param orderIds 需要删除的订单管理主键
     * @return 结果
     */
    @Transactional
    @Override
    public int deleteDemoOrderByOrderIds(Long[] orderIds)
    {
        QueryWrapper<DemoGoods> wrapper = Wrappers.query();
        wrapper.in("order_id", Arrays.asList(orderIds));
        demoGoodsMapper.delete(wrapper);
        return demoOrderMapper.deleteBatchIds(Arrays.asList(orderIds));
    }

    /**
     * 删除订单管理信息
     *
     * @param orderId 订单管理主键
     * @return 结果
     */
    @Transactional
    @Override
    public int deleteDemoOrderByOrderId(Long orderId)
    {
        QueryWrapper<DemoGoods> wrapper = Wrappers.query();
        wrapper.eq("order_id", orderId);
        demoGoodsMapper.delete(wrapper);
        return demoOrderMapper.deleteById(orderId);
    }
}
