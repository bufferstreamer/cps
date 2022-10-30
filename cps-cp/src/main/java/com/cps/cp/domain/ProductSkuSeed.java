package com.cps.cp.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.cps.common.annotation.Excel;
import com.cps.common.core.domain.BaseEntity;

/**
 * sku子表对象 product_sku_seed
 *
 * @author cps
 * @date 2022-10-26
 */
public class ProductSkuSeed extends BaseEntity
        {
private static final long serialVersionUID=1L;

            @Override
            public String toString() {
                return "ProductSkuSeed{" +
                        "id='" + id + '\'' +
                        ", skuId='" + skuId + '\'' +
                        ", productId='" + productId + '\'' +
                        ", skuName='" + skuName + '\'' +
                        ", untitled='" + untitled + '\'' +
                        ", goodsUnit='" + goodsUnit + '\'' +
                        ", shopIndexName='" + shopIndexName + '\'' +
                        ", shopIndexRequire='" + shopIndexRequire + '\'' +
                        ", planNumber=" + planNumber +
                        ", planPrice=" + planPrice +
                        '}';
            }

            private String id;

            public String getId() {
                return id;
            }

            public void setId(String id) {
                this.id = id;
            }

            /**  */
    private String skuId;

    /**  */
            @Excel(name = "")
    private String productId;

    /**  */
            @Excel(name = "")
    private String skuName;

    /**  */
            @Excel(name = "")
    private String untitled;

    /**  */
            @Excel(name = "")
    private String goodsUnit;

    /**  */
            @Excel(name = "")
    private String shopIndexName;

    /**  */
            @Excel(name = "")
    private String shopIndexRequire;

    /**  */
            @Excel(name = "")
    private Long planNumber;

    /**  */
            @Excel(name = "")
    private Long planPrice;

    public void setSkuId(String skuId)
            {
            this.skuId = skuId;
            }

    public String getSkuId()
            {
            return skuId;
            }
    public void setProductId(String productId)
            {
            this.productId = productId;
            }

    public String getProductId()
            {
            return productId;
            }
    public void setSkuName(String skuName)
            {
            this.skuName = skuName;
            }

    public String getSkuName()
            {
            return skuName;
            }
    public void setUntitled(String untitled)
            {
            this.untitled = untitled;
            }

    public String getUntitled()
            {
            return untitled;
            }
    public void setGoodsUnit(String goodsUnit)
            {
            this.goodsUnit = goodsUnit;
            }

    public String getGoodsUnit()
            {
            return goodsUnit;
            }
    public void setShopIndexName(String shopIndexName)
            {
            this.shopIndexName = shopIndexName;
            }

    public String getShopIndexName()
            {
            return shopIndexName;
            }
    public void setShopIndexRequire(String shopIndexRequire)
            {
            this.shopIndexRequire = shopIndexRequire;
            }

    public String getShopIndexRequire()
            {
            return shopIndexRequire;
            }
    public void setPlanNumber(Long planNumber)
            {
            this.planNumber = planNumber;
            }

    public Long getPlanNumber()
            {
            return planNumber;
            }
    public void setPlanPrice(Long planPrice)
            {
            this.planPrice = planPrice;
            }

    public Long getPlanPrice()
            {
            return planPrice;
            }

        }
