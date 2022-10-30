package com.cps.user.domain;

import java.math.BigDecimal;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.cps.common.annotation.Excel;
import com.cps.common.core.domain.BaseEntity;

/**
 * 售后申请对象 goods_return_apply
 *
 * @author cps
 * @date 2022-10-29
 */
public class GoodsReturnApply extends BaseEntity
        {
private static final long serialVersionUID=1L;

    /** 退货id（uuid） */
    private String goodsReturnApplyId;

    /** 订单id（uuid-64） */
            @Excel(name = "订单id", readConverterExp = "u=uid-64")
    private String orderId;

    /** 退货类型（0仅退款，1退款退货，2换货） */
            @Excel(name = "退货类型", readConverterExp = "0=仅退款，1退款退货，2换货")
    private String returnType;

    /** 申请原因 */
            @Excel(name = "申请原因")
    private String returnReason;

    /** 退款金额 */
            @Excel(name = "退款金额")
    private BigDecimal returnMoneyAmount;

    /** 退货方式（1上门取件，2自行寄回） */
            @Excel(name = "退货方式", readConverterExp = "1=上门取件，2自行寄回")
    private String returnApproach;

    /** 补充描述 */
            @Excel(name = "补充描述")
    private String additionalDesp;

    /** 退货凭证 */
            @Excel(name = "退货凭证")
    private String returnEvidence;

    /** 审核状态（0未审核，1审核通过，2未通过） */
            @Excel(name = "审核状态", readConverterExp = "0=未审核，1审核通过，2未通过")
    private String auditStatus;

    /** 创建时间 */
            @JsonFormat(pattern = "yyyy-MM-dd")
            @Excel(name = "创建时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date createDatetime;

    public void setGoodsReturnApplyId(String goodsReturnApplyId)
            {
            this.goodsReturnApplyId = goodsReturnApplyId;
            }

    public String getGoodsReturnApplyId()
            {
            return goodsReturnApplyId;
            }
    public void setOrderId(String orderId)
            {
            this.orderId = orderId;
            }

    public String getOrderId()
            {
            return orderId;
            }
    public void setReturnType(String returnType)
            {
            this.returnType = returnType;
            }

    public String getReturnType()
            {
            return returnType;
            }
    public void setReturnReason(String returnReason)
            {
            this.returnReason = returnReason;
            }

    public String getReturnReason()
            {
            return returnReason;
            }
    public void setReturnMoneyAmount(BigDecimal returnMoneyAmount)
            {
            this.returnMoneyAmount = returnMoneyAmount;
            }

    public BigDecimal getReturnMoneyAmount()
            {
            return returnMoneyAmount;
            }
    public void setReturnApproach(String returnApproach)
            {
            this.returnApproach = returnApproach;
            }

    public String getReturnApproach()
            {
            return returnApproach;
            }
    public void setAdditionalDesp(String additionalDesp)
            {
            this.additionalDesp = additionalDesp;
            }

    public String getAdditionalDesp()
            {
            return additionalDesp;
            }
    public void setReturnEvidence(String returnEvidence)
            {
            this.returnEvidence = returnEvidence;
            }

    public String getReturnEvidence()
            {
            return returnEvidence;
            }
    public void setAuditStatus(String auditStatus)
            {
            this.auditStatus = auditStatus;
            }

    public String getAuditStatus()
            {
            return auditStatus;
            }
    public void setCreateDatetime(Date createDatetime)
            {
            this.createDatetime = createDatetime;
            }

    public Date getCreateDatetime()
            {
            return createDatetime;
            }

@Override
public String toString(){
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("goodsReturnApplyId",getGoodsReturnApplyId())
            .append("orderId",getOrderId())
            .append("returnType",getReturnType())
            .append("returnReason",getReturnReason())
            .append("returnMoneyAmount",getReturnMoneyAmount())
            .append("returnApproach",getReturnApproach())
            .append("additionalDesp",getAdditionalDesp())
            .append("returnEvidence",getReturnEvidence())
            .append("auditStatus",getAuditStatus())
            .append("createDatetime",getCreateDatetime())
        .toString();
        }
        }
