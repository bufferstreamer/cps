package com.cps.user.service.impl;

import java.util.List;

import com.cps.common.annotation.DataSource;
import com.cps.common.enums.DataSourceType;
import com.cps.common.utils.DateUtils;
import com.cps.common.utils.ShiroUtils;
import com.cps.common.utils.uuid.IdUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.cps.user.mapper.OrdersMapper;
import com.cps.user.domain.Orders;
import com.cps.user.service.IOrdersService;
import com.cps.common.core.text.Convert;

/**
 * 订单Service业务层处理
 * 
 * @author cps
 * @date 2022-09-08
 */
@Service
@DataSource(value = DataSourceType.SLAVE)
public class OrdersServiceImpl implements IOrdersService 
{
    @Autowired
    private OrdersMapper ordersMapper;

    /**
     * 查询订单
     * 
     * @param orderId 订单主键
     * @return 订单
     */
    @Override
    public Orders selectOrdersByOrderId(String orderId)
    {
        return ordersMapper.selectOrdersByOrderId(orderId);
    }

    /**
     * 查询订单列表
     * 
     * @param orders 订单
     * @return 订单
     */
    @Override
    public List<Orders> selectOrdersList(Orders orders)
    {
        return ordersMapper.selectOrdersList(orders);
    }

    /**
     * 新增订单
     * 
     * @param orders 订单
     * @return 结果
     */
    @Override
    public int insertOrders(Orders orders)
    {
        orders.setOrderId(IdUtils.simpleUUID());
        orders.setUserId(ShiroUtils.getUserId().toString());
        orders.setCreateTime(DateUtils.getNowDate());
        orders.setDeleteStatus((long)0);
        return ordersMapper.insertOrders(orders);
    }

    /**
     * 修改订单
     * 
     * @param orders 订单
     * @return 结果
     */
    @Override
    public int updateOrders(Orders orders)
    {
        orders.setUpdateTime(DateUtils.getNowDate());
        return ordersMapper.updateOrders(orders);
    }

    /**
     * 批量删除订单
     * 
     * @param orderIds 需要删除的订单主键
     * @return 结果
     */
    @Override
    public int deleteOrdersByOrderIds(String orderIds)
    {
        return ordersMapper.deleteOrdersByOrderIds(Convert.toStrArray(orderIds));
    }

    /**
     * 删除订单信息
     * 
     * @param orderId 订单主键
     * @return 结果
     */
    @Override
    public int deleteOrdersByOrderId(String orderId)
    {
        return ordersMapper.deleteOrdersByOrderId(orderId);
    }
}
