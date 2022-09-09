package com.cps.user.domain;

import java.math.BigDecimal;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.cps.common.annotation.Excel;
import com.cps.common.core.domain.BaseEntity;

/**
 * 订单对象 orders
 * 
 * @author cps
 * @date 2022-09-08
 */
public class Orders extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 订单ID 同时也是订单编号 */
    @Excel(name = "订单ID 同时也是订单编号")
    private String orderId;

    /** 用户ID */
    @Excel(name = "用户ID")
    private String userId;

    /** 产品名称（多个产品用,隔开） */
    @Excel(name = "产品名称", readConverterExp = "多=个产品用,隔开")
    private String untitled;

    /** 收货人快照 */
    @Excel(name = "收货人快照")
    private String receiverName;

    /** 收货人手机号快照 */
    @Excel(name = "收货人手机号快照")
    private String receiverMobile;

    /** 收货地址快照 */
    @Excel(name = "收货地址快照")
    private String receiverAddress;

    /** 订单总价格 */
    @Excel(name = "订单总价格")
    private BigDecimal totalAmount;

    /** 实际支付总价格 */
    @Excel(name = "实际支付总价格")
    private Integer actualAmount;

    /** 支付方式 1:微信 2:支付宝 */
    @Excel(name = "支付方式 1:微信 2:支付宝")
    private Integer payType;

    /** 订单备注 */
    @Excel(name = "订单备注")
    private String orderRemark;

    /** 订单状态 1:待付款 2:待发货 3:待收货 4:待评价 5:已完成 6:已关闭 */
    @Excel(name = "订单状态 1:待付款 2:待发货 3:待收货 4:待评价 5:已完成 6:已关闭")
    private String status;

    /** 配送方式 */
    @Excel(name = "配送方式")
    private String deliveryType;

    /** 物流单号 */
    @Excel(name = "物流单号")
    private String deliveryFlowId;

    /** 订单运费 默认可以为零，代表包邮 */
    @Excel(name = "订单运费 默认可以为零，代表包邮")
    private BigDecimal orderFreight;

    /** 逻辑删除状态 1: 删除 0:未删除 */
    @Excel(name = "逻辑删除状态 1: 删除 0:未删除")
    private Long deleteStatus;

    /** 付款时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "付款时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date payTime;

    /** 发货时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "发货时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date deliveryTime;

    /** 完成时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "完成时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date flishTime;

    /** 取消时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "取消时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date cancelTime;

    /** 订单关闭类型1-超时未支付 2-退款关闭 4-买家取消 15-已通过货到付款交易 */
    @Excel(name = "订单关闭类型1-超时未支付 2-退款关闭 4-买家取消 15-已通过货到付款交易")
    private Long closeType;

    /** 订单交割时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "订单交割时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date dueTime;

    public void setOrderId(String orderId) 
    {
        this.orderId = orderId;
    }

    public String getOrderId() 
    {
        return orderId;
    }
    public void setUserId(String userId) 
    {
        this.userId = userId;
    }

    public String getUserId() 
    {
        return userId;
    }
    public void setUntitled(String untitled) 
    {
        this.untitled = untitled;
    }

    public String getUntitled() 
    {
        return untitled;
    }
    public void setReceiverName(String receiverName) 
    {
        this.receiverName = receiverName;
    }

    public String getReceiverName() 
    {
        return receiverName;
    }
    public void setReceiverMobile(String receiverMobile) 
    {
        this.receiverMobile = receiverMobile;
    }

    public String getReceiverMobile() 
    {
        return receiverMobile;
    }
    public void setReceiverAddress(String receiverAddress) 
    {
        this.receiverAddress = receiverAddress;
    }

    public String getReceiverAddress() 
    {
        return receiverAddress;
    }
    public void setTotalAmount(BigDecimal totalAmount) 
    {
        this.totalAmount = totalAmount;
    }

    public BigDecimal getTotalAmount() 
    {
        return totalAmount;
    }
    public void setActualAmount(Integer actualAmount) 
    {
        this.actualAmount = actualAmount;
    }

    public Integer getActualAmount() 
    {
        return actualAmount;
    }
    public void setPayType(Integer payType) 
    {
        this.payType = payType;
    }

    public Integer getPayType() 
    {
        return payType;
    }
    public void setOrderRemark(String orderRemark) 
    {
        this.orderRemark = orderRemark;
    }

    public String getOrderRemark() 
    {
        return orderRemark;
    }
    public void setStatus(String status) 
    {
        this.status = status;
    }

    public String getStatus() 
    {
        return status;
    }
    public void setDeliveryType(String deliveryType) 
    {
        this.deliveryType = deliveryType;
    }

    public String getDeliveryType() 
    {
        return deliveryType;
    }
    public void setDeliveryFlowId(String deliveryFlowId) 
    {
        this.deliveryFlowId = deliveryFlowId;
    }

    public String getDeliveryFlowId() 
    {
        return deliveryFlowId;
    }
    public void setOrderFreight(BigDecimal orderFreight) 
    {
        this.orderFreight = orderFreight;
    }

    public BigDecimal getOrderFreight() 
    {
        return orderFreight;
    }
    public void setDeleteStatus(Long deleteStatus) 
    {
        this.deleteStatus = deleteStatus;
    }

    public Long getDeleteStatus() 
    {
        return deleteStatus;
    }
    public void setPayTime(Date payTime) 
    {
        this.payTime = payTime;
    }

    public Date getPayTime() 
    {
        return payTime;
    }
    public void setDeliveryTime(Date deliveryTime) 
    {
        this.deliveryTime = deliveryTime;
    }

    public Date getDeliveryTime() 
    {
        return deliveryTime;
    }
    public void setFlishTime(Date flishTime) 
    {
        this.flishTime = flishTime;
    }

    public Date getFlishTime() 
    {
        return flishTime;
    }
    public void setCancelTime(Date cancelTime) 
    {
        this.cancelTime = cancelTime;
    }

    public Date getCancelTime() 
    {
        return cancelTime;
    }
    public void setCloseType(Long closeType) 
    {
        this.closeType = closeType;
    }

    public Long getCloseType() 
    {
        return closeType;
    }
    public void setDueTime(Date dueTime) 
    {
        this.dueTime = dueTime;
    }

    public Date getDueTime() 
    {
        return dueTime;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("orderId", getOrderId())
            .append("userId", getUserId())
            .append("untitled", getUntitled())
            .append("receiverName", getReceiverName())
            .append("receiverMobile", getReceiverMobile())
            .append("receiverAddress", getReceiverAddress())
            .append("totalAmount", getTotalAmount())
            .append("actualAmount", getActualAmount())
            .append("payType", getPayType())
            .append("orderRemark", getOrderRemark())
            .append("status", getStatus())
            .append("deliveryType", getDeliveryType())
            .append("deliveryFlowId", getDeliveryFlowId())
            .append("orderFreight", getOrderFreight())
            .append("deleteStatus", getDeleteStatus())
            .append("createTime", getCreateTime())
            .append("updateTime", getUpdateTime())
            .append("payTime", getPayTime())
            .append("deliveryTime", getDeliveryTime())
            .append("flishTime", getFlishTime())
            .append("cancelTime", getCancelTime())
            .append("closeType", getCloseType())
            .append("dueTime", getDueTime())
            .toString();
    }
}
