package com.cps.user.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.cps.common.annotation.Excel;
import com.cps.common.core.domain.BaseEntity;

/**
 * 【请填写功能名称】对象 reconciliation
 *
 * @author cps
 * @date 2022-09-17
 */
public class Reconciliation extends BaseEntity
        {
private static final long serialVersionUID=1L;

    /** 交易id */
    private String recordId;

    /** 用户id */
            @Excel(name = "用户id")
    private String userId;

    /** 用于对账的订单id 或者合同id */
            @Excel(name = "用于对账的订单id 或者合同id")
    private String orderId;

    /** 订单或合同内容 */
            @Excel(name = "订单或合同内容")
    private String orderContent;

    /** 订单或合同应付金额 */
            @Excel(name = "订单或合同应付金额")
    private Long amountsPayable;

    /** 已付金额 */
            @Excel(name = "已付金额")
    private Long amountPaid;

    /** 最后支付时间 */
            @JsonFormat(pattern = "yyyy-MM-dd")
            @Excel(name = "最后支付时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date finalPayment;

    /** 款项是否结清 */
            @Excel(name = "款项是否结清")
    private String isFinished;

    public void setRecordId(String recordId)
            {
            this.recordId = recordId;
            }

    public String getRecordId()
            {
            return recordId;
            }
    public void setUserId(String userId)
            {
            this.userId = userId;
            }

    public String getUserId()
            {
            return userId;
            }
    public void setOrderId(String orderId)
            {
            this.orderId = orderId;
            }

    public String getOrderId()
            {
            return orderId;
            }
    public void setOrderContent(String orderContent)
            {
            this.orderContent = orderContent;
            }

    public String getOrderContent()
            {
            return orderContent;
            }
    public void setAmountsPayable(Long amountsPayable)
            {
            this.amountsPayable = amountsPayable;
            }

    public Long getAmountsPayable()
            {
            return amountsPayable;
            }
    public void setAmountPaid(Long amountPaid)
            {
            this.amountPaid = amountPaid;
            }

    public Long getAmountPaid()
            {
            return amountPaid;
            }
    public void setFinalPayment(Date finalPayment)
            {
            this.finalPayment = finalPayment;
            }

    public Date getFinalPayment()
            {
            return finalPayment;
            }
    public void setIsFinished(String isFinished)
            {
            this.isFinished = isFinished;
            }

    public String getIsFinished()
            {
            return isFinished;
            }

@Override
public String toString(){
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("recordId",getRecordId())
            .append("userId",getUserId())
            .append("orderId",getOrderId())
            .append("orderContent",getOrderContent())
            .append("amountsPayable",getAmountsPayable())
            .append("amountPaid",getAmountPaid())
            .append("createTime",getCreateTime())
            .append("finalPayment",getFinalPayment())
            .append("isFinished",getIsFinished())
        .toString();
        }
        }
