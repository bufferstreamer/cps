package com.cps.user.service;

import com.cps.user.domain.Manager;
import com.cps.user.domain.Orders;

import java.util.List;

/**
 * 管理员角色Service接口
 * 
 * @author cps
 * @date 2022-08-18
 */
public interface OrdersService
{
    public List<Orders> getOrders();

    public List<Orders> getOrdersByUser(String userId);
}
