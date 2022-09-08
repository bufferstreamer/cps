package com.cps.user.mapper;

import com.cps.user.domain.Orders;

import java.util.List;

/**
 * 管理订单接口
 * 
 * @author cps
 * @date 2022-08-18
 */
public interface OrdersMapper
{
   public List<Orders> selectOrders();

   public List<Orders> selectOrdersByUser(String userId);
}
