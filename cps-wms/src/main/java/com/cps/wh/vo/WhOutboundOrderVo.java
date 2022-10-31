package com.cps.wh.vo;

import com.cps.common.core.domain.BaseEntity;
import com.cps.wh.domain.Cart;
import com.cps.wh.domain.WhOutboundOrder;
import com.cps.wh.domain.WhOutboundOrderSeed;
import com.cps.wh.domain.WhOutboundStockout;

import java.util.List;

/**
 * 商品出库单合集对象 wms_wh_outbound_combine
 *
 * @author cps
 * @date 2021-10-30
 */
public class WhOutboundOrderVo extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /**
     * 商品出库单主表对象
     */
    private WhOutboundOrder whOutboundOrder;

    private List<Cart> goods;

    public WhOutboundOrderVo() {
    }

    public WhOutboundOrderVo(WhOutboundOrder whOutboundOrder, List<Cart> goods) {
        this.whOutboundOrder = whOutboundOrder;
        this.goods = goods;
    }

    public WhOutboundOrder getWhOutboundOrder() {
        return whOutboundOrder;
    }

    public void setWhOutboundOrder(WhOutboundOrder whOutboundOrder) {
        this.whOutboundOrder = whOutboundOrder;
    }

    public List<Cart> getGoods() {
        return goods;
    }

    public void setGoods(List<Cart> goods) {
        this.goods = goods;
    }

    @Override
    public String toString() {
        return "WhOutboundOrderVo{" +
                "whOutboundOrder=" + whOutboundOrder +
                ", goods=" + goods +
                '}';
    }
}
