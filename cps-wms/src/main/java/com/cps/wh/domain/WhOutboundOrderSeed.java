package com.cps.wh.domain;

import com.cps.common.annotation.Excel;
import com.cps.common.core.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import java.math.BigDecimal;

/**
 * 商品出库单子表对象 wms_wh_outbound_order_seed
 *
 * @author miki
 * @date 2021-06-07
 */
public class WhOutboundOrderSeed extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /**
     * id
     */
    private Long id;

    /**
     * 商品出库主表ID
     */
    @Excel(name = "商品出库主表ID")
    private Long outboundOrderId;

    /**
     * 商品主键ID
     */
    @Excel(name = "商品主键ID")
    private Long shopGoodsId;

    /**
     * 商品编码
     */
    @Excel(name = "商品编码")
    private String shopGoodsCode;

    /**
     * 商品名称
     */
    @Excel(name = "商品名称")
    private String shopGoodsName;

    /**
     * 单位【关联字典管理】
     */
    @Excel(name = "单位【关联字典管理】")
    private String goodsUnit;

    /**
     * 单位描述
     */
    @Excel(name = "单位描述")
    private String goodsUnitDesc;

    /**
     * 计划数量
     */
    @Excel(name = "计划数量")
    private Long planNumber;

    /**
     * 实际数量
     */
    @Excel(name = "实际数量")
    private Long actualNumber;

    /**
     * 欠货数量
     */
    @Excel(name = "欠货数量")
    private Long oweNumber;

    /**
     * 税率
     */
    @Excel(name = "税率")
    private BigDecimal rate;

    /**
     * 未税单价
     */
    @Excel(name = "未税单价")
    private BigDecimal unitPrice;

    /**
     * 未税金额
     */
    @Excel(name = "未税金额")
    private BigDecimal untaxedAmount;

    /**
     * 含税单价
     */
    @Excel(name = "含税单价")
    private BigDecimal taxUnitPrice;

    /**
     * 合计税额
     */
    @Excel(name = "合计税额")
    private BigDecimal tax;

    /**
     * 折让金额
     */
    @Excel(name = "折让金额")
    private BigDecimal discountPrice;

    /**
     * 合计金额
     */
    @Excel(name = "合计金额")
    private BigDecimal amount;

    /**
     * 删除标志（0代表存在 2代表删除）
     */
    private String delFlag;

    /**
     * 部门ID
     */
    @Excel(name = "部门ID")
    private Long deptId;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getOutboundOrderId() {
        return outboundOrderId;
    }

    public void setOutboundOrderId(Long outboundOrderId) {
        this.outboundOrderId = outboundOrderId;
    }

    public Long getShopGoodsId() {
        return shopGoodsId;
    }

    public void setShopGoodsId(Long shopGoodsId) {
        this.shopGoodsId = shopGoodsId;
    }

    public String getShopGoodsCode() {
        return shopGoodsCode;
    }

    public void setShopGoodsCode(String shopGoodsCode) {
        this.shopGoodsCode = shopGoodsCode;
    }

    public String getShopGoodsName() {
        return shopGoodsName;
    }

    public void setShopGoodsName(String shopGoodsName) {
        this.shopGoodsName = shopGoodsName;
    }

    public String getGoodsUnit() {
        return goodsUnit;
    }

    public void setGoodsUnit(String goodsUnit) {
        this.goodsUnit = goodsUnit;
    }

    public String getGoodsUnitDesc() {
        return goodsUnitDesc;
    }

    public void setGoodsUnitDesc(String goodsUnitDesc) {
        this.goodsUnitDesc = goodsUnitDesc;
    }

    public Long getPlanNumber() {
        return planNumber;
    }

    public void setPlanNumber(Long planNumber) {
        this.planNumber = planNumber;
    }

    public Long getActualNumber() {
        return actualNumber;
    }

    public void setActualNumber(Long actualNumber) {
        this.actualNumber = actualNumber;
    }

    public Long getOweNumber() {
        return oweNumber;
    }

    public void setOweNumber(Long oweNumber) {
        this.oweNumber = oweNumber;
    }

    public BigDecimal getRate() {
        return rate;
    }

    public void setRate(BigDecimal rate) {
        this.rate = rate;
    }

    public BigDecimal getUnitPrice() {
        return unitPrice;
    }

    public void setUnitPrice(BigDecimal unitPrice) {
        this.unitPrice = unitPrice;
    }

    public BigDecimal getUntaxedAmount() {
        return untaxedAmount;
    }

    public void setUntaxedAmount(BigDecimal untaxedAmount) {
        this.untaxedAmount = untaxedAmount;
    }

    public BigDecimal getTaxUnitPrice() {
        return taxUnitPrice;
    }

    public void setTaxUnitPrice(BigDecimal taxUnitPrice) {
        this.taxUnitPrice = taxUnitPrice;
    }

    public BigDecimal getTax() {
        return tax;
    }

    public void setTax(BigDecimal tax) {
        this.tax = tax;
    }

    public BigDecimal getDiscountPrice() {
        return discountPrice;
    }

    public void setDiscountPrice(BigDecimal discountPrice) {
        this.discountPrice = discountPrice;
    }

    public BigDecimal getAmount() {
        return amount;
    }

    public void setAmount(BigDecimal amount) {
        this.amount = amount;
    }

    public String getDelFlag() {
        return delFlag;
    }

    public void setDelFlag(String delFlag) {
        this.delFlag = delFlag;
    }

    public Long getDeptId() {
        return deptId;
    }

    public void setDeptId(Long deptId) {
        this.deptId = deptId;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
                .append("id", getId())
                .append("outboundOrderId", getOutboundOrderId())
                .append("shopGoodsId", getShopGoodsId())
                .append("shopGoodsCode", getShopGoodsCode())
                .append("shopGoodsName", getShopGoodsName())
                .append("goodsUnit", getGoodsUnit())
                .append("goodsUnitDesc", getGoodsUnitDesc())
                .append("planNumber", getPlanNumber())
                .append("actualNumber", getActualNumber())
                .append("oweNumber", getOweNumber())
                .append("rate", getRate())
                .append("unitPrice", getUnitPrice())
                .append("untaxedAmount", getUntaxedAmount())
                .append("taxUnitPrice", getTaxUnitPrice())
                .append("tax", getTax())
                .append("discountPrice", getDiscountPrice())
                .append("amount", getAmount())
                .append("delFlag", getDelFlag())
                .append("createBy", getCreateBy())
                .append("createTime", getCreateTime())
                .append("updateBy", getUpdateBy())
                .append("updateTime", getUpdateTime())
                .append("remark", getRemark())
                .append("deptId", getDeptId())
                .toString();
    }
}
