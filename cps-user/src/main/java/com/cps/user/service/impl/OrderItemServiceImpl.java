package com.cps.user.service.impl;

import java.util.List;

import com.cps.common.annotation.DataSource;
import com.cps.common.enums.DataSourceType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.cps.user.mapper.OrderItemMapper;
import com.cps.user.domain.OrderItem;
import com.cps.user.service.IOrderItemService;
import com.cps.common.core.text.Convert;

/**
 * 订单项/快照Service业务层处理
 *
 * @author cps
 * @date 2022-09-17
 */
@Service
@DataSource(value = DataSourceType.SLAVE)
public class OrderItemServiceImpl implements IOrderItemService {
    @Autowired
    private OrderItemMapper orderItemMapper;

    /**
     * 查询订单项/快照
     *
     * @param itemId 订单项/快照主键
     * @return 订单项/快照
     */
    @Override
    public OrderItem selectOrderItemByItemId(String itemId) {
        return orderItemMapper.selectOrderItemByItemId(itemId);
    }

    /**
     * 查询订单项/快照列表
     *
     * @param orderItem 订单项/快照
     * @return 订单项/快照
     */
    @Override
    public List<OrderItem> selectOrderItemList(OrderItem orderItem) {
        return orderItemMapper.selectOrderItemList(orderItem);
    }

    /**
     * 新增订单项/快照
     *
     * @param orderItem 订单项/快照
     * @return 结果
     */
    @Override
    public int insertOrderItem(OrderItem orderItem) {
            return orderItemMapper.insertOrderItem(orderItem);
    }

    /**
     * 修改订单项/快照
     *
     * @param orderItem 订单项/快照
     * @return 结果
     */
    @Override
    public int updateOrderItem(OrderItem orderItem) {
        return orderItemMapper.updateOrderItem(orderItem);
    }

    /**
     * 批量删除订单项/快照
     *
     * @param itemIds 需要删除的订单项/快照主键
     * @return 结果
     */
    @Override
    public int deleteOrderItemByItemIds(String itemIds) {
        return orderItemMapper.deleteOrderItemByItemIds(Convert.toStrArray(itemIds));
    }

    /**
     * 删除订单项/快照信息
     *
     * @param itemId 订单项/快照主键
     * @return 结果
     */
    @Override
    public int deleteOrderItemByItemId(String itemId) {
        return orderItemMapper.deleteOrderItemByItemId(itemId);
    }
}
