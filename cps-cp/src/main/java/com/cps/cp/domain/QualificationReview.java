package com.cps.cp.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.cps.common.annotation.Excel;
import com.cps.common.core.domain.BaseEntity;

/**
 * 资质审核对象 qualification_review
 * 
 * @author cps
 * @date 2022-08-16
 */
public class QualificationReview extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 资质审核ID */
    private String qualificationReviewId;

    /** 供应商ID */
    @Excel(name = "供应商ID")
    private Long supplierId;

    /** 资质审核文件存储位置 */
    @Excel(name = "资质审核文件存储位置")
    private String qualificationReviewDocument;

    /** 商品编号 */
    @Excel(name = "商品编号")
    private Long goodsId;

    /** 标书id */
    @Excel(name = "标书id")
    private String tenderId;

    /** 审核状态“0”未审核“1”通过“2”未通过 */
    @Excel(name = "审核状态“0”未审核“1”通过“2”未通过")
    private String auditStatus;

    /** 审核说明 */
    @Excel(name = "审核说明")
    private String auditExplanation;

    /** 提交时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "提交时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date submitTime;

    public void setQualificationReviewId(String qualificationReviewId) 
    {
        this.qualificationReviewId = qualificationReviewId;
    }

    public String getQualificationReviewId() 
    {
        return qualificationReviewId;
    }
    public void setSupplierId(Long supplierId) 
    {
        this.supplierId = supplierId;
    }

    public Long getSupplierId() 
    {
        return supplierId;
    }
    public void setQualificationReviewDocument(String qualificationReviewDocument) 
    {
        this.qualificationReviewDocument = qualificationReviewDocument;
    }

    public String getQualificationReviewDocument() 
    {
        return qualificationReviewDocument;
    }
    public void setGoodsId(Long goodsId) 
    {
        this.goodsId = goodsId;
    }

    public Long getGoodsId() 
    {
        return goodsId;
    }
    public void setTenderId(String tenderId) 
    {
        this.tenderId = tenderId;
    }

    public String getTenderId() 
    {
        return tenderId;
    }
    public void setAuditStatus(String auditStatus) 
    {
        this.auditStatus = auditStatus;
    }

    public String getAuditStatus() 
    {
        return auditStatus;
    }
    public void setAuditExplanation(String auditExplanation) 
    {
        this.auditExplanation = auditExplanation;
    }

    public String getAuditExplanation() 
    {
        return auditExplanation;
    }
    public void setSubmitTime(Date submitTime) 
    {
        this.submitTime = submitTime;
    }

    public Date getSubmitTime() 
    {
        return submitTime;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("qualificationReviewId", getQualificationReviewId())
            .append("supplierId", getSupplierId())
            .append("qualificationReviewDocument", getQualificationReviewDocument())
            .append("goodsId", getGoodsId())
            .append("tenderId", getTenderId())
            .append("auditStatus", getAuditStatus())
            .append("auditExplanation", getAuditExplanation())
            .append("submitTime", getSubmitTime())
            .toString();
    }
}
