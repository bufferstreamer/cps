package com.cps.audit.domain;

import com.cps.common.annotation.Excel;
import com.cps.common.core.domain.BaseEntity;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import java.math.BigDecimal;
import java.util.Date;

/**
 * 供应商营业执照审核管理对象 audit_supplier_license_info
 *
 * @author cps
 * @date 2022-08-16
 */
public class SupplierLicenseInfo extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /**
     * 审核单id
     */
    private String checklistId;

    /**
     * 公司名称
     */
    @Excel(name = "公司名称")
    private String corporateName;

    /**
     * 全国信息代码号
     */
    @Excel(name = "全国信息代码号")
    private String registrationNumber;

    /**
     * 法人姓名
     */
    @Excel(name = "法人姓名")
    private String frName;

    /**
     * 法人身份证号码
     */
    @Excel(name = "法人身份证号码")
    private String idNumber;

    /**
     * 法人身份证正面jpg照片
     */
    @Excel(name = "法人身份证正面jpg照片")
    private String frontPhoto;

    /**
     * 法人身份证反面jpg照片
     */
    @Excel(name = "法人身份证反面jpg照片")
    private String backPhoto;

    /**
     * 营业执照所在地
     */
    @Excel(name = "营业执照所在地")
    private String businessLicenseLocation;

    /**
     * 营业执照详细地址
     */
    @Excel(name = "营业执照详细地址")
    private String businessLicenseAddress;

    /**
     * 成立日期
     */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "成立日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date incorporationDate;

    /**
     * 注册资本
     */
    @Excel(name = "注册资本")
    private BigDecimal registeredCapital;

    /**
     * 营业范围
     */
    @Excel(name = "营业范围")
    private String businessScope;

    /**
     * 营业执照jpg照片
     */
    @Excel(name = "营业执照jpg照片")
    private String businessLicense;

    /**
     * 公司电话
     */
    @Excel(name = "公司电话")
    private String officePhone;

    /**
     * 公司紧急联系人
     */
    @Excel(name = "公司紧急联系人")
    private String emergencyContact;

    /**
     * 公司紧急联系人手机
     */
    @Excel(name = "公司紧急联系人手机")
    private String emergencyContactPhone;

    /**
     * 创建时间
     */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "创建时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date createDatetime;

    /** 联系人邮箱 */
    @Excel(name = "联系人邮箱")
    private String contactEmail;

    public String getChecklistId() {
        return checklistId;
    }

    public void setChecklistId(String checklistId) {
        this.checklistId = checklistId;
    }

    public String getCorporateName() {
        return corporateName;
    }

    public void setCorporateName(String corporateName) {
        this.corporateName = corporateName;
    }

    public String getRegistrationNumber() {
        return registrationNumber;
    }

    public void setRegistrationNumber(String registrationNumber) {
        this.registrationNumber = registrationNumber;
    }

    public String getFrName() {
        return frName;
    }

    public void setFrName(String frName) {
        this.frName = frName;
    }

    public String getIdNumber() {
        return idNumber;
    }

    public void setIdNumber(String idNumber) {
        this.idNumber = idNumber;
    }

    public String getFrontPhoto() {
        return frontPhoto;
    }

    public void setFrontPhoto(String frontPhoto) {
        this.frontPhoto = frontPhoto;
    }

    public String getBackPhoto() {
        return backPhoto;
    }

    public void setBackPhoto(String backPhoto) {
        this.backPhoto = backPhoto;
    }

    public String getBusinessLicenseLocation() {
        return businessLicenseLocation;
    }

    public void setBusinessLicenseLocation(String businessLicenseLocation) {
        this.businessLicenseLocation = businessLicenseLocation;
    }

    public String getBusinessLicenseAddress() {
        return businessLicenseAddress;
    }

    public void setBusinessLicenseAddress(String businessLicenseAddress) {
        this.businessLicenseAddress = businessLicenseAddress;
    }

    public Date getIncorporationDate() {
        return incorporationDate;
    }

    public void setIncorporationDate(Date incorporationDate) {
        this.incorporationDate = incorporationDate;
    }

    public BigDecimal getRegisteredCapital() {
        return registeredCapital;
    }

    public void setRegisteredCapital(BigDecimal registeredCapital) {
        this.registeredCapital = registeredCapital;
    }

    public String getBusinessScope() {
        return businessScope;
    }

    public void setBusinessScope(String businessScope) {
        this.businessScope = businessScope;
    }

    public String getBusinessLicense() {
        return businessLicense;
    }

    public void setBusinessLicense(String businessLicense) {
        this.businessLicense = businessLicense;
    }

    public String getOfficePhone() {
        return officePhone;
    }

    public void setOfficePhone(String officePhone) {
        this.officePhone = officePhone;
    }

    public String getEmergencyContact() {
        return emergencyContact;
    }

    public void setEmergencyContact(String emergencyContact) {
        this.emergencyContact = emergencyContact;
    }

    public String getEmergencyContactPhone() {
        return emergencyContactPhone;
    }

    public void setEmergencyContactPhone(String emergencyContactPhone) {
        this.emergencyContactPhone = emergencyContactPhone;
    }

    public Date getCreateDatetime() {
        return createDatetime;
    }

    public void setCreateDatetime(Date createDatetime) {
        this.createDatetime = createDatetime;
    }

    public void setContactEmail(String contactEmail)
    {
        this.contactEmail = contactEmail;
    }

    public String getContactEmail()
    {
        return contactEmail;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
                .append("checklistId", getChecklistId())
                .append("corporateName", getCorporateName())
                .append("registrationNumber", getRegistrationNumber())
                .append("frName", getFrName())
                .append("idNumber", getIdNumber())
                .append("frontPhoto", getFrontPhoto())
                .append("backPhoto", getBackPhoto())
                .append("businessLicenseLocation", getBusinessLicenseLocation())
                .append("businessLicenseAddress", getBusinessLicenseAddress())
                .append("incorporationDate", getIncorporationDate())
                .append("registeredCapital", getRegisteredCapital())
                .append("businessScope", getBusinessScope())
                .append("businessLicense", getBusinessLicense())
                .append("officePhone", getOfficePhone())
                .append("emergencyContact", getEmergencyContact())
                .append("emergencyContactPhone", getEmergencyContactPhone())
                .append("createDatetime", getCreateDatetime())
                .append("contactEmail",getContactEmail())
                .toString();
    }
}
