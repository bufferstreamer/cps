package com.cps.cp.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.cps.common.annotation.Excel;
import com.cps.common.core.domain.BaseEntity;

/**
 * 自动生成标书信息对象 trender_information
 *
 * @author cps
 * @date 2022-10-24
 */
public class TrenderInformation extends BaseEntity
        {
private static final long serialVersionUID=1L;

    /** 生成标书id */
    private Long id;

    /** 标书名称 */
            @Excel(name = "标书名称")
    private String tenderName;

    /** 标书总体介绍 */
            @Excel(name = "标书总体介绍")
    private String text;

    /** 交货期 */
            @JsonFormat(pattern = "yyyy-MM-dd")
            @Excel(name = "交货期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date receiveTime;

    /** 交货地点 */
            @Excel(name = "交货地点")
    private String deliverPoint;

    /** 项目概况与招标范围的补充内容 */
            @Excel(name = "项目概况与招标范围的补充内容")
    private String projectText;

    /** 营业执照要求 */
            @Excel(name = "营业执照要求")
    private String license;

    /** 对招标对象的财务要求 */
            @Excel(name = "对招标对象的财务要求")
    private String finance;

    /** 对招标对象的犯罪记录要求 */
            @Excel(name = "对招标对象的犯罪记录要求")
    private String illegal;

    /** 对招标对象的信誉分要求 */
            @Excel(name = "对招标对象的信誉分要求")
    private String reputationRequirements;

    /** 对招标对象的补充要求 */
            @Excel(name = "对招标对象的补充要求")
    private String bidderText;

    /** 招标文件的获取方式 */
            @Excel(name = "招标文件的获取方式")
    private String documentsObtain;

    /** 投标文件递交的截止时间 */
            @JsonFormat(pattern = "yyyy-MM-dd")
            @Excel(name = "投标文件递交的截止时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date bidDdl;

    /** 递交单独密封的纸质版投标文件的递交地点 */
            @Excel(name = "递交单独密封的纸质版投标文件的递交地点")
    private String bidSubmission;

    /** 本次招标公告同时在哪些平台发布 */
            @Excel(name = "本次招标公告同时在哪些平台发布")
    private String otherPlatform;

    /** 电子招标投标规则 */
            @Excel(name = "电子招标投标规则")
    private String electronicBiddingRules;

    /** 招标人 */
            @Excel(name = "招标人")
    private String initiator;

    /** 联系人 */
            @Excel(name = "联系人")
    private String contacts;

    /** 联系电话 */
            @Excel(name = "联系电话")
    private String contactNumber;

    /** 电子邮件 */
            @Excel(name = "电子邮件")
    private String email;

    /** 地址 */
            @Excel(name = "地址")
    private String address;

    /** 资质审核截止时间 */
            @JsonFormat(pattern = "yyyy-MM-dd")
            @Excel(name = "资质审核截止时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date qualificationReviewTime;

    /** 竞标开始时间 */
            @JsonFormat(pattern = "yyyy-MM-dd")
            @Excel(name = "竞标开始时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date biddingStartTime;

    /** 竞标截止时间 */
            @JsonFormat(pattern = "yyyy-MM-dd")
            @Excel(name = "竞标截止时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date biddingEndTime;

    /** 公布时间 */
            @JsonFormat(pattern = "yyyy-MM-dd")
            @Excel(name = "公布时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date publicationTime;

    public void setId(Long id)
            {
            this.id = id;
            }

    public Long getId()
            {
            return id;
            }
    public void setTenderName(String tenderName)
            {
            this.tenderName = tenderName;
            }

    public String getTenderName()
            {
            return tenderName;
            }
    public void setText(String text)
            {
            this.text = text;
            }

    public String getText()
            {
            return text;
            }
    public void setReceiveTime(Date receiveTime)
            {
            this.receiveTime = receiveTime;
            }

    public Date getReceiveTime()
            {
            return receiveTime;
            }
    public void setDeliverPoint(String deliverPoint)
            {
            this.deliverPoint = deliverPoint;
            }

    public String getDeliverPoint()
            {
            return deliverPoint;
            }
    public void setProjectText(String projectText)
            {
            this.projectText = projectText;
            }

    public String getProjectText()
            {
            return projectText;
            }
    public void setLicense(String license)
            {
            this.license = license;
            }

    public String getLicense()
            {
            return license;
            }
    public void setFinance(String finance)
            {
            this.finance = finance;
            }

    public String getFinance()
            {
            return finance;
            }
    public void setIllegal(String illegal)
            {
            this.illegal = illegal;
            }

    public String getIllegal()
            {
            return illegal;
            }
    public void setReputationRequirements(String reputationRequirements)
            {
            this.reputationRequirements = reputationRequirements;
            }

    public String getReputationRequirements()
            {
            return reputationRequirements;
            }
    public void setBidderText(String bidderText)
            {
            this.bidderText = bidderText;
            }

    public String getBidderText()
            {
            return bidderText;
            }
    public void setDocumentsObtain(String documentsObtain)
            {
            this.documentsObtain = documentsObtain;
            }

    public String getDocumentsObtain()
            {
            return documentsObtain;
            }
    public void setBidDdl(Date bidDdl)
            {
            this.bidDdl = bidDdl;
            }

    public Date getBidDdl()
            {
            return bidDdl;
            }
    public void setBidSubmission(String bidSubmission)
            {
            this.bidSubmission = bidSubmission;
            }

    public String getBidSubmission()
            {
            return bidSubmission;
            }
    public void setOtherPlatform(String otherPlatform)
            {
            this.otherPlatform = otherPlatform;
            }

    public String getOtherPlatform()
            {
            return otherPlatform;
            }
    public void setElectronicBiddingRules(String electronicBiddingRules)
            {
            this.electronicBiddingRules = electronicBiddingRules;
            }

    public String getElectronicBiddingRules()
            {
            return electronicBiddingRules;
            }
    public void setInitiator(String initiator)
            {
            this.initiator = initiator;
            }

    public String getInitiator()
            {
            return initiator;
            }
    public void setContacts(String contacts)
            {
            this.contacts = contacts;
            }

    public String getContacts()
            {
            return contacts;
            }
    public void setContactNumber(String contactNumber)
            {
            this.contactNumber = contactNumber;
            }

    public String getContactNumber()
            {
            return contactNumber;
            }
    public void setEmail(String email)
            {
            this.email = email;
            }

    public String getEmail()
            {
            return email;
            }
    public void setAddress(String address)
            {
            this.address = address;
            }

    public String getAddress()
            {
            return address;
            }
    public void setQualificationReviewTime(Date qualificationReviewTime)
            {
            this.qualificationReviewTime = qualificationReviewTime;
            }

    public Date getQualificationReviewTime()
            {
            return qualificationReviewTime;
            }
    public void setBiddingStartTime(Date biddingStartTime)
            {
            this.biddingStartTime = biddingStartTime;
            }

    public Date getBiddingStartTime()
            {
            return biddingStartTime;
            }
    public void setBiddingEndTime(Date biddingEndTime)
            {
            this.biddingEndTime = biddingEndTime;
            }

    public Date getBiddingEndTime()
            {
            return biddingEndTime;
            }
    public void setPublicationTime(Date publicationTime)
            {
            this.publicationTime = publicationTime;
            }

    public Date getPublicationTime()
            {
            return publicationTime;
            }

@Override
public String toString(){
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id",getId())
            .append("tenderName",getTenderName())
            .append("text",getText())
            .append("receiveTime",getReceiveTime())
            .append("deliverPoint",getDeliverPoint())
            .append("projectText",getProjectText())
            .append("license",getLicense())
            .append("finance",getFinance())
            .append("illegal",getIllegal())
            .append("reputationRequirements",getReputationRequirements())
            .append("bidderText",getBidderText())
            .append("documentsObtain",getDocumentsObtain())
            .append("bidDdl",getBidDdl())
            .append("bidSubmission",getBidSubmission())
            .append("otherPlatform",getOtherPlatform())
            .append("electronicBiddingRules",getElectronicBiddingRules())
            .append("initiator",getInitiator())
            .append("contacts",getContacts())
            .append("contactNumber",getContactNumber())
            .append("email",getEmail())
            .append("address",getAddress())
            .append("qualificationReviewTime",getQualificationReviewTime())
            .append("biddingStartTime",getBiddingStartTime())
            .append("biddingEndTime",getBiddingEndTime())
            .append("publicationTime",getPublicationTime())
            .append("createTime",getCreateTime())
        .toString();
        }
        }
