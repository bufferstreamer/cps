package com.cps.cp.domain;

import com.cps.common.annotation.Excel;
import com.cps.common.core.domain.BaseEntity;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import java.util.Date;

/**
 * 合同对象 contract
 *
 * @author wxf
 * @date 2022-08-16
 */
public class Contract extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /**
     * 合同id
     */
    @Excel(name = "合同id")
    private String contractId;

    /**
     * 标书id
     */
    @Excel(name = "标书id")
    private String tenderId;

    /**
     * 合同类别
     */
    @Excel(name = "合同类别")
    private String contractType;

    /**
     * 合同文件位置
     */
    @Excel(name = "合同文件位置")
    private String contractDocument;

    /**
     * 甲方是否签名
     */
    @Excel(name = "甲方是否签名")
    private String signatureA;

    /**
     * 乙方是否签名
     */
    @Excel(name = "乙方是否签名")
    private String signatureB;

    /**
     * 合同签定时间
     */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "合同签定时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date contractTime;



    /**
     * 非管理员签名方的ID
     */
    @Excel(name = "非管理员签名方的ID")
    private Long signatureUserId;

    /**
     * 合同状态 0未签署 1未交货 2交货完成 3合同完成 4合同逾期 5合同取消
     */
    @Excel(name = "合同类别")
    private String contractStatus;

    /**
     * 交货截止日期
     */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "交货截止日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date deadlineDeliveryDate;

    public Date getDeadlineDeliveryDate() {
        return deadlineDeliveryDate;
    }

    public void setDeadlineDeliveryDate(Date deadlineDeliveryDate) {
        this.deadlineDeliveryDate = deadlineDeliveryDate;
    }

    public String getContractStatus() {
        return contractStatus;
    }

    public void setContractStatus(String contractStatus) {
        this.contractStatus = contractStatus;
    }

    public Long getSignatureUserId() {
        return signatureUserId;
    }

    public void setSignatureUserId(Long signatureUserId) {
        this.signatureUserId = signatureUserId;
    }

    public String getContractId() {
        return contractId;
    }

    public void setContractId(String contractId) {
        this.contractId = contractId;
    }

    public String getTenderId() {
        return tenderId;
    }

    public void setTenderId(String tenderId) {
        this.tenderId = tenderId;
    }

    public String getContractType() {
        return contractType;
    }

    public void setContractType(String contractType) {
        this.contractType = contractType;
    }

    public String getContractDocument() {
        return contractDocument;
    }

    public void setContractDocument(String contractDocument) {
        this.contractDocument = contractDocument;
    }

    public String getSignatureA() {
        return signatureA;
    }

    public void setSignatureA(String signatureA) {
        this.signatureA = signatureA;
    }

    public String getSignatureB() {
        return signatureB;
    }

    public void setSignatureB(String signatureB) {
        this.signatureB = signatureB;
    }

    public Date getContractTime() {
        return contractTime;
    }

    public void setContractTime(Date contractTime) {
        this.contractTime = contractTime;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
                .append("contractId", getContractId())
                .append("tenderId", getTenderId())
                .append("contractType", getContractType())
                .append("contractDocument", getContractDocument())
                .append("signatureA", getSignatureA())
                .append("signatureB", getSignatureB())
                .append("contractTime", getContractTime())
                .append("signatureUserId",getSignatureUserId())
                .append("contractStatus", getContractStatus())
                .append("deadlineDeliveryDate",getDeadlineDeliveryDate())
                .toString();
    }
}
