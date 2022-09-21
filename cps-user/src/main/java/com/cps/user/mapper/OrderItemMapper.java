package com.cps.user.mapper;

import java.util.List;

import com.cps.user.domain.OrderItem;

/**
 * 订单项/快照Mapper接口
 *
 * @author cps
 * @date 2022-09-17
 */
public interface OrderItemMapper {
    /**
     * 查询订单项/快照
     *
     * @param itemId 订单项/快照主键
     * @return 订单项/快照
     */
    public OrderItem selectOrderItemByItemId(String itemId);

    /**
     * 查询订单项/快照列表
     *
     * @param orderItem 订单项/快照
     * @return 订单项/快照集合
     */
    public List<OrderItem> selectOrderItemList(OrderItem orderItem);

    /**
     * 新增订单项/快照
     *
     * @param orderItem 订单项/快照
     * @return 结果
     */
    public int insertOrderItem(OrderItem orderItem);

    /**
     * 修改订单项/快照
     *
     * @param orderItem 订单项/快照
     * @return 结果
     */
    public int updateOrderItem(OrderItem orderItem);

    /**
     * 删除订单项/快照
     *
     * @param itemId 订单项/快照主键
     * @return 结果
     */
    public int deleteOrderItemByItemId(String itemId);

    /**
     * 批量删除订单项/快照
     *
     * @param itemIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteOrderItemByItemIds(String[] itemIds);
}
