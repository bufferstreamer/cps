package com.cps.cp.domain;

import com.cps.common.annotation.Excel;
import com.cps.common.core.domain.BaseEntity;
import com.fasterxml.jackson.annotation.JsonFormat;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import java.util.Date;

/**
 * 资质审核对象 qualification_review
 *
 * @author cps
 * @date 2022-08-16
 */
@ApiModel(value = "QualificationReview",description = "资质审核记录实体")
public class QualificationReview extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /**
     * 资质审核ID
     */
    @ApiModelProperty("主键")
    private String qualificationReviewId;

    /**
     * 供应商ID
     */
    @ApiModelProperty("供应商ID")
    @Excel(name = "供应商ID")
    private Long supplyId;

    /**
     * 资质审核文件存储位置
     */
    @ApiModelProperty("资质审核文件存储位置")
    @Excel(name = "资质审核文件存储位置")
    private String qualificationReviewDocument;

    /**
     * 商品编号
     */
    @ApiModelProperty("商品编号")
    @Excel(name = "商品编号")
    private Long goodsId;

    /**
     * 标书id
     */
    @ApiModelProperty("标书id")
    @Excel(name = "标书id")
    private String tenderId;

    /**
     * 审核状态“0”未审核“1”通过“2”未通过
     */
    @ApiModelProperty("审核状态")
    @Excel(name = "审核状态“0”未审核“1”通过“2”未通过")
    private String auditStatus;

    /**
     * 审核说明
     */
    @ApiModelProperty("审核说明")
    @Excel(name = "审核说明")
    private String auditExplanation;

    /**
     * 提交时间
     */
    @ApiModelProperty("提交时间")
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "提交时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date submitTime;

    public String getQualificationReviewId() {
        return qualificationReviewId;
    }

    public void setQualificationReviewId(String qualificationReviewId) {
        this.qualificationReviewId = qualificationReviewId;
    }

    public Long getSupplyId() {
        return supplyId;
    }

    public void setSupplyId(Long supplyId) {
        this.supplyId = supplyId;
    }

    public String getQualificationReviewDocument() {
        return qualificationReviewDocument;
    }

    public void setQualificationReviewDocument(String qualificationReviewDocument) {
        this.qualificationReviewDocument = qualificationReviewDocument;
    }

    public Long getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(Long goodsId) {
        this.goodsId = goodsId;
    }

    public String getTenderId() {
        return tenderId;
    }

    public void setTenderId(String tenderId) {
        this.tenderId = tenderId;
    }

    public String getAuditStatus() {
        return auditStatus;
    }

    public void setAuditStatus(String auditStatus) {
        this.auditStatus = auditStatus;
    }

    public String getAuditExplanation() {
        return auditExplanation;
    }

    public void setAuditExplanation(String auditExplanation) {
        this.auditExplanation = auditExplanation;
    }

    public Date getSubmitTime() {
        return submitTime;
    }

    public void setSubmitTime(Date submitTime) {
        this.submitTime = submitTime;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
                .append("qualificationReviewId", getQualificationReviewId())
                .append("supplyId", getSupplyId())
                .append("qualificationReviewDocument", getQualificationReviewDocument())
                .append("goodsId", getGoodsId())
                .append("tenderId", getTenderId())
                .append("auditStatus", getAuditStatus())
                .append("auditExplanation", getAuditExplanation())
                .append("submitTime", getSubmitTime())
                .toString();
    }
}
