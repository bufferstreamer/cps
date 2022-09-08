package com.cps.user.service.impl;

import com.cps.common.annotation.DataSource;
import com.cps.common.core.text.Convert;
import com.cps.common.enums.DataSourceType;
import com.cps.common.enums.UserType;
import com.cps.common.utils.DateUtils;
import com.cps.common.utils.uuid.CpsIdUtils;
import com.cps.user.domain.Manager;
import com.cps.user.domain.Orders;
import com.cps.user.mapper.ManagerMapper;
import com.cps.user.mapper.OrdersMapper;
import com.cps.user.service.IManagerService;
import com.cps.user.service.OrdersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 管理员角色Service业务层处理
 * 
 * @author cps
 * @date 2022-08-18
 */
@DataSource(value = DataSourceType.SLAVE)
@Service
public class OrdersServiceImpl implements OrdersService
{
    @Autowired
    private OrdersMapper ordersMapper;


    @Override
    @DataSource(value = DataSourceType.SLAVE)
    public List<Orders> getOrders() {
        return ordersMapper.selectOrders();
    }

    @Override
    @DataSource(value = DataSourceType.SLAVE)
    public List<Orders> getOrdersByUser(String userId) {
        return ordersMapper.selectOrdersByUser(userId);
    }
}
