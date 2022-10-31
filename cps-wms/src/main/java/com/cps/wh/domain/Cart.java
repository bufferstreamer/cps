package com.cps.wh.domain;

import com.cps.common.core.domain.BaseEntity;

/**
 * 商品出库单合集对象 wms_wh_outbound_combine
 *
 * @author cps
 * @date 2021-10-30
 */
public class Cart extends BaseEntity {
    private static final long serialVersionUID = 1L;

    private String productId;
    private String productName;
    private String skuId;
    private String skuName;
    private Long cartNum;

    public Cart() {
    }

    public Cart(String productId, String productName, String skuId, String skuName, Long cartNum) {
        this.productId = productId;
        this.productName = productName;
        this.skuId = skuId;
        this.skuName = skuName;
        this.cartNum = cartNum;
    }

    public String getProductId() {
        return productId;
    }

    public void setProductId(String productId) {
        this.productId = productId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getSkuId() {
        return skuId;
    }

    public void setSkuId(String skuId) {
        this.skuId = skuId;
    }

    public String getSkuName() {
        return skuName;
    }

    public void setSkuName(String skuName) {
        this.skuName = skuName;
    }

    public Long getCartNum() {
        return cartNum;
    }

    public void setCartNum(Long cartNum) {
        this.cartNum = cartNum;
    }

    @Override
    public String toString() {
        return "Cart{" +
                "productId='" + productId + '\'' +
                ", productName='" + productName + '\'' +
                ", skuId='" + skuId + '\'' +
                ", skuName='" + skuName + '\'' +
                ", cartNum=" + cartNum +
                '}';
    }
}
