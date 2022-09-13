package com.cps.cp.domain;

import com.cps.common.annotation.Excel;
import com.cps.common.core.domain.BaseEntity;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import java.util.Date;

/**
 * 招标对象 tender
 *
 * @author wxf
 * @date 2022-08-16
 */
public class Tender extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /**
     * 标书ID
     */
    private String tenderId;

    /**
     * 项目名称
     */
    @Excel(name = "项目名称")
    private String projectName;

    /**
     * 供销社id
     */
    @Excel(name = "供销社id")
    private Long gxsId;

    /**
     * 联系人
     */
    @Excel(name = "联系人")
    private String contact;

    /**
     * 竞标次数:1代表招标，大于1代表竞价
     */
    @Excel(name = "竞标次数:1代表招标，大于1代表竞价")
    private Integer bidNumber;

    /**
     * 联系人手机号
     */
    @Excel(name = "联系人手机号")
    private String phoneOfContact;

    /**
     * 标书存储位置
     */
    @Excel(name = "标书存储位置")
    private String tenderDocument;

    /**
     * 创建时间
     */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "创建时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date createDatetime;

    /**
     * 资质审核截止时间
     */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "资质审核截止时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date dealineForQualificationReview;

    /**
     * 竞标开始时间
     */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "竞标开始时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date bidStartTime;

    /**
     * 竞标结束时间
     */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "竞标结束时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date bidEndTime;

    /**
     * 公布时间
     */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "公布时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date publishTime;

    public String getTenderId() {
        return tenderId;
    }

    public void setTenderId(String tenderId) {
        this.tenderId = tenderId;
    }

    public String getProjectName() {
        return projectName;
    }

    public void setProjectName(String projectName) {
        this.projectName = projectName;
    }

    public Long getGxsId() {
        return gxsId;
    }

    public void setGxsId(Long gxsId) {
        this.gxsId = gxsId;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public Integer getBidNumber() {
        return bidNumber;
    }

    public void setBidNumber(Integer bidNumber) {
        this.bidNumber = bidNumber;
    }

    public String getPhoneOfContact() {
        return phoneOfContact;
    }

    public void setPhoneOfContact(String phoneOfContact) {
        this.phoneOfContact = phoneOfContact;
    }

    public String getTenderDocument() {
        return tenderDocument;
    }

    public void setTenderDocument(String tenderDocument) {
        this.tenderDocument = tenderDocument;
    }

    public Date getCreateDatetime() {
        return createDatetime;
    }

    public void setCreateDatetime(Date createDatetime) {
        this.createDatetime = createDatetime;
    }

    public Date getDealineForQualificationReview() {
        return dealineForQualificationReview;
    }

    public void setDealineForQualificationReview(Date dealineForQualificationReview) {
        this.dealineForQualificationReview = dealineForQualificationReview;
    }

    public Date getBidStartTime() {
        return bidStartTime;
    }

    public void setBidStartTime(Date bidStartTime) {
        this.bidStartTime = bidStartTime;
    }

    public Date getBidEndTime() {
        return bidEndTime;
    }

    public void setBidEndTime(Date bidEndTime) {
        this.bidEndTime = bidEndTime;
    }

    public Date getPublishTime() {
        return publishTime;
    }

    public void setPublishTime(Date publishTime) {
        this.publishTime = publishTime;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
                .append("tenderId", getTenderId())
                .append("projectName", getProjectName())
                .append("gxsId", getGxsId())
                .append("contact", getContact())
                .append("bidNumber", getBidNumber())
                .append("phoneOfContact", getPhoneOfContact())
                .append("tenderDocument", getTenderDocument())
                .append("createDatetime", getCreateDatetime())
                .append("dealineForQualificationReview", getDealineForQualificationReview())
                .append("bidStartTime", getBidStartTime())
                .append("bidEndTime", getBidEndTime())
                .append("publishTime", getPublishTime())
                .toString();
    }
}
