package com.cps.user.service;

import com.cps.user.domain.Orders;

import java.util.List;

/**
 * 订单Service接口
 *
 * @author cps
 * @date 2022-09-08
 */
public interface IOrdersService {
    /**
     * 查询订单
     *
     * @param orderId 订单主键
     * @return 订单
     */
    public Orders selectOrdersByOrderId(String orderId);

    /**
     * 查询订单列表
     *
     * @param orders 订单
     * @return 订单集合
     */
    public List<Orders> selectOrdersList(Orders orders);

    /**
     * 新增订单
     *
     * @param orders 订单
     * @return 结果
     */
    public int insertOrders(Orders orders);

    /**
     * 修改订单
     *
     * @param orders 订单
     * @return 结果
     */
    public int updateOrders(Orders orders);

    /**
     * 批量删除订单
     *
     * @param orderIds 需要删除的订单主键集合
     * @return 结果
     */
    public int deleteOrdersByOrderIds(String orderIds);

    /**
     * 删除订单信息
     *
     * @param orderId 订单主键
     * @return 结果
     */
    public int deleteOrdersByOrderId(String orderId);
}
