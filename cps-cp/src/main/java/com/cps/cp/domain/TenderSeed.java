package com.cps.cp.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.cps.common.annotation.Excel;
import com.cps.common.core.domain.BaseEntity;

/**
 * 自动生成标书所需信息的子表对象 tender_seed
 *
 * @author cps
 * @date 2022-10-27
 */
public class TenderSeed extends BaseEntity {
    private static final long serialVersionUID = 1L;

   /**
     *
     */
    private Long id;

    /**
     * 标书信息主表id
     */
    @Excel(name = "标书信息主表id")
    private Long tenderInformationId;

    /**
     * 规格id
     */
    @Excel(name = "规格id")
    private String skuId;

    /**
     * 商品id
     */
    @Excel(name = "商品id")
    private String productId;

    /**
     * 商品名称
     */
    @Excel(name = "商品名称")
    private String productName;

    /**
     * 规格名称
     */
    @Excel(name = "规格名称")
    private String skuName;

    /**
     * 属性个格式
     */
    @Excel(name = "属性个格式")
    private String untitled;

    /**
     * 商品单位
     */
    @Excel(name = "商品单位")
    private String goodsUnit;

    /**
     * 产品指标名称
     */
    @Excel(name = "产品指标名称")
    private String shopIndexName;

    /**
     * 产品指标要求
     */
    @Excel(name = "产品指标要求")
    private String shopIndexRequire;

    /**
     * 计划招标数量
     */
    @Excel(name = "计划招标数量")
    private Long planNumber;

    /**
     * 预算金额
     */
    @Excel(name = "预算金额")
    private Long planPrice;

    public TenderSeed(Long id, Long tenderInformationId, String skuId, String productId, String productName, String skuName, String untitled, String goodsUnit, String shopIndexName, String shopIndexRequire, Long planNumber, Long planPrice) {
        this.id = id;
        this.tenderInformationId = tenderInformationId;
        this.skuId = skuId;
        this.productId = productId;
        this.productName = productName;
        this.skuName = skuName;
        this.untitled = untitled;
        this.goodsUnit = goodsUnit;
        this.shopIndexName = shopIndexName;
        this.shopIndexRequire = shopIndexRequire;
        this.planNumber = planNumber;
        this.planPrice = planPrice;
    }

    public TenderSeed() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getTenderInformationId() {
        return tenderInformationId;
    }

    public void setTenderInformationId(Long tenderInformationId) {
        this.tenderInformationId = tenderInformationId;
    }

    public String getSkuId() {
        return skuId;
    }

    public void setSkuId(String skuId) {
        this.skuId = skuId;
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

    public String getSkuName() {
        return skuName;
    }

    public void setSkuName(String skuName) {
        this.skuName = skuName;
    }

    public String getUntitled() {
        return untitled;
    }

    public void setUntitled(String untitled) {
        this.untitled = untitled;
    }

    public String getGoodsUnit() {
        return goodsUnit;
    }

    public void setGoodsUnit(String goodsUnit) {
        this.goodsUnit = goodsUnit;
    }

    public String getShopIndexName() {
        return shopIndexName;
    }

    public void setShopIndexName(String shopIndexName) {
        this.shopIndexName = shopIndexName;
    }

    public String getShopIndexRequire() {
        return shopIndexRequire;
    }

    public void setShopIndexRequire(String shopIndexRequire) {
        this.shopIndexRequire = shopIndexRequire;
    }

    public Long getPlanNumber() {
        return planNumber;
    }

    public void setPlanNumber(Long planNumber) {
        this.planNumber = planNumber;
    }

    public Long getPlanPrice() {
        return planPrice;
    }

    public void setPlanPrice(Long planPrice) {
        this.planPrice = planPrice;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
                .append("id", getId())
                .append("tenderInformationId", getTenderInformationId())
                .append("skuId", getSkuId())
                .append("productId", getProductId())
                .append("productName", getProductName())
                .append("skuName", getSkuName())
                .append("untitled", getUntitled())
                .append("goodsUnit", getGoodsUnit())
                .append("shopIndexName", getShopIndexName())
                .append("shopIndexRequire", getShopIndexRequire())
                .append("planNumber", getPlanNumber())
                .append("planPrice", getPlanPrice())
                .toString();
    }
}
