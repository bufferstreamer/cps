package com.cps.wh.service;

import com.cps.wh.model.OrderModel;

/**
 * 单据精灵Service类
 */
public interface IWhOrderService {

    /**
     * 新增编辑单据精灵
     *
     * @param orderModel 单据信息数据
     * @return
     */
    public int edit(OrderModel orderModel);

}
