package com.ruoyi.project.demo.service;

import java.util.List;
import com.ruoyi.project.demo.domain.DemoOrder;

/**
 * 订单管理Service接口
 * 
 * @author 毛泽
 * @date 2022-04-01
 */
public interface IDemoOrderService 
{
    /**
     * 查询订单管理
     * 
     * @param orderId 订单管理主键
     * @return 订单管理
     */
    public DemoOrder selectDemoOrderByOrderId(Long orderId);

    /**
     * 查询订单管理列表
     * 
     * @param demoOrder 订单管理
     * @return 订单管理集合
     */
    public List<DemoOrder> selectDemoOrderList(DemoOrder demoOrder);

    /**
     * 新增订单管理
     * 
     * @param demoOrder 订单管理
     * @return 结果
     */
    public int insertDemoOrder(DemoOrder demoOrder);

    /**
     * 修改订单管理
     * 
     * @param demoOrder 订单管理
     * @return 结果
     */
    public int updateDemoOrder(DemoOrder demoOrder);

    /**
     * 批量删除订单管理
     * 
     * @param orderIds 需要删除的订单管理主键集合
     * @return 结果
     */
    public int deleteDemoOrderByOrderIds(Long[] orderIds);

    /**
     * 删除订单管理信息
     * 
     * @param orderId 订单管理主键
     * @return 结果
     */
    public int deleteDemoOrderByOrderId(Long orderId);
}
