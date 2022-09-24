package com.cps.wh.domain;

import com.cps.common.annotation.Excel;
import com.cps.common.core.domain.BaseEntity;
import com.cps.common.enums.WhOutboundOrderType;
import com.cps.wh.enums.OutboundOrderStatus;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import java.math.BigDecimal;
import java.util.Date;

/**
 * 商品出库单主表对象 wms_wh_outbound_order
 *
 * @author miki
 * @date 2021-06-07
 */
public class WhOutboundOrder extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /**
     * id
     */
    private Long id;

    /**
     * 出库类型(其他出库、销售出库)
     */
    @Excel(name = "出库类型(其他出库、销售出库)")
    private String orderType;

    /**
     * 出库单编号
     */
    @Excel(name = "出库单编号")
    private String orderCode;

    /**
     * 订单号
     */
    @Excel(name = "订单号")
    private String orderName;

    /**
     * 订单日期
     */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "订单日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date orderDate;

    /**
     * 客户主键ID
     */
    @Excel(name = "客户主键ID")
    private Long customerId;

    /**
     * 客户名称
     */
    @Excel(name = "客户名称")
    private String customerName;

    @Excel(name = "收货地址")
    private String address;
    /**
     * 单位关系主键ID
     */
    @Excel(name = "单位关系主键ID")
    private Long warehouseId;
    /**
     * 对象单位主键ID
     */
    @Excel(name = "对象单位主键ID")
    private Long desWarehouseId;
    /**
     * 对象单位名称
     */
    @Excel(name = "对象单位名称")
    private String desWarehouseName;
    /**
     * 承运商ID
     */
    @Excel(name = "承运商ID")
    private Long carriersId;
    /**
     * 承运商名称
     */
    @Excel(name = "承运商名称")
    private String carriersName;
    /**
     * 税率
     */
    @Excel(name = "税率")
    private BigDecimal rate;
    /**
     * 税额
     */
    @Excel(name = "税额")
    private BigDecimal tax;
    /**
     * 折扣率
     */
    @Excel(name = "折扣率")
    private BigDecimal discountRate;
    /**
     * 折扣金额
     */
    @Excel(name = "折扣金额")
    private BigDecimal discountAmount;
    /**
     * 折让金额
     */
    @Excel(name = "折让金额")
    private BigDecimal discountPrice;
    /**
     * 其他费用
     */
    @Excel(name = "其他费用")
    private BigDecimal otherFee;
    /**
     * 未税金额
     */
    @Excel(name = "未税金额")
    private BigDecimal untaxedAmount;
    /**
     * 含税金额
     */
    @Excel(name = "含税金额")
    private BigDecimal totalAmount;
    /**
     * 状态(新发货单、待拣货、已拣货、已发货、签收回单)
     */
    @Excel(name = "状态(新发货单、待拣货、已拣货、已发货、签收回单)")
    private String status;
    /**
     * 删除标志（0代表存在 2代表删除）
     */
    private String delFlag;
    /**
     * 部门ID
     */
    @Excel(name = "部门ID")
    private Long deptId;
    /**
     * 关联入库单主键
     */
    @Excel(name = "关联入库单主键")
    private Long warehousingOrderId;
    /**
     * 状态描述(新发货单、待拣货、已拣货、已发货、签收回单)
     */
    private String statusDesc;
    /**
     * 单据类型描述
     */
    private String orderTypeDesc;

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getOrderType() {
        return orderType;
    }

    public void setOrderType(String orderType) {
        this.orderType = orderType;
    }

    public String getOrderCode() {
        return orderCode;
    }

    public void setOrderCode(String orderCode) {
        this.orderCode = orderCode;
    }

    public String getOrderName() {
        return orderName;
    }

    public void setOrderName(String orderName) {
        this.orderName = orderName;
    }

    public Date getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Date orderDate) {
        this.orderDate = orderDate;
    }

    public Long getCustomerId() {
        return customerId;
    }

    public void setCustomerId(Long customerId) {
        this.customerId = customerId;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public Long getWarehouseId() {
        return warehouseId;
    }

    public void setWarehouseId(Long warehouseId) {
        this.warehouseId = warehouseId;
    }

    public Long getDesWarehouseId() {
        return desWarehouseId;
    }

    public void setDesWarehouseId(Long desWarehouseId) {
        this.desWarehouseId = desWarehouseId;
    }

    public String getDesWarehouseName() {
        return desWarehouseName;
    }

    public void setDesWarehouseName(String desWarehouseName) {
        this.desWarehouseName = desWarehouseName;
    }

    public Long getCarriersId() {
        return carriersId;
    }

    public void setCarriersId(Long carriersId) {
        this.carriersId = carriersId;
    }

    public String getCarriersName() {
        return carriersName;
    }

    public void setCarriersName(String carriersName) {
        this.carriersName = carriersName;
    }

    public BigDecimal getRate() {
        return rate;
    }

    public void setRate(BigDecimal rate) {
        this.rate = rate;
    }

    public BigDecimal getTax() {
        return tax;
    }

    public void setTax(BigDecimal tax) {
        this.tax = tax;
    }

    public BigDecimal getDiscountRate() {
        return discountRate;
    }

    public void setDiscountRate(BigDecimal discountRate) {
        this.discountRate = discountRate;
    }

    public BigDecimal getDiscountAmount() {
        return discountAmount;
    }

    public void setDiscountAmount(BigDecimal discountAmount) {
        this.discountAmount = discountAmount;
    }

    public BigDecimal getDiscountPrice() {
        return discountPrice;
    }

    public void setDiscountPrice(BigDecimal discountPrice) {
        this.discountPrice = discountPrice;
    }

    public BigDecimal getOtherFee() {
        return otherFee;
    }

    public void setOtherFee(BigDecimal otherFee) {
        this.otherFee = otherFee;
    }

    public BigDecimal getUntaxedAmount() {
        return untaxedAmount;
    }

    public void setUntaxedAmount(BigDecimal untaxedAmount) {
        this.untaxedAmount = untaxedAmount;
    }

    public BigDecimal getTotalAmount() {
        return totalAmount;
    }

    public void setTotalAmount(BigDecimal totalAmount) {
        this.totalAmount = totalAmount;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Long getWarehousingOrderId() {
        return warehousingOrderId;
    }

    public void setWarehousingOrderId(Long warehousingOrderId) {
        this.warehousingOrderId = warehousingOrderId;
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
                .append("orderType", getOrderType())
                .append("orderCode", getOrderCode())
                .append("orderName", getOrderName())
                .append("orderDate", getOrderDate())
                .append("customerId", getCustomerId())
                .append("customerName", getCustomerName())
                .append("warehouseId", getWarehouseId())
                .append("desWarehouseId", getDesWarehouseId())
                .append("desWarehouseName", getDesWarehouseName())
                .append("carriersId", getCarriersId())
                .append("carriersName", getCarriersName())
                .append("rate", getRate())
                .append("tax", getTax())
                .append("discountRate", getDiscountRate())
                .append("discountAmount", getDiscountAmount())
                .append("discountPrice", getDiscountPrice())
                .append("otherFee", getOtherFee())
                .append("untaxedAmount", getUntaxedAmount())
                .append("totalAmount", getTotalAmount())
                .append("status", getStatus())
                .append("warehousingOrderId", getWarehousingOrderId())
                .append("delFlag", getDelFlag())
                .append("createBy", getCreateBy())
                .append("createTime", getCreateTime())
                .append("updateBy", getUpdateBy())
                .append("updateTime", getUpdateTime())
                .append("remark", getRemark())
                .append("deptId", getDeptId())
                .toString();
    }

    public String getStatusDesc() {
        for (OutboundOrderStatus outboundOrderStatus : OutboundOrderStatus.values()) {
            if (outboundOrderStatus.getCode().equals(this.getStatus())) {
                statusDesc = outboundOrderStatus.getInfo();
            }
        }
        return statusDesc;
    }

    public void setStatusDesc(String statusDesc) {
        this.statusDesc = statusDesc;
    }

    public String getOrderTypeDesc() {
        for (WhOutboundOrderType outboundOrderType : WhOutboundOrderType.values()) {
            if (outboundOrderType.getCode().equals(this.getOrderType())) {
                orderTypeDesc = outboundOrderType.getInfo();
            }
        }
        return orderTypeDesc;
    }

    public void setOrderTypeDesc(String orderTypeDesc) {
        this.orderTypeDesc = orderTypeDesc;
    }
}