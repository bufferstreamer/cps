package com.cps.audit.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.cps.common.annotation.Excel;
import com.cps.common.core.domain.BaseEntity;

/**
 * 小商超审核管理对象 audit_business_license_info
 * 
 * @author cps
 * @date 2022-08-16
 */
public class BusinessLicenseInfo extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 审核单id */
    private String businessAuditDocumentId;

    /** 个体工商户营业执照jpg照片 */
    @Excel(name = "个体工商户营业执照jpg照片")
    private String businessLicense;

    /** 个体工商户营业执照号码 */
    @Excel(name = "个体工商户营业执照号码")
    private String businessLicenseNumber;

    /** 经营者 */
    @Excel(name = "经营者")
    private String managerName;

    /** 小商超名称 */
    @Excel(name = "小商超名称")
    private String businessName;

    /** 经营场所位置 */
    @Excel(name = "经营场所位置")
    private String businessPlace;

    /** 组成形式（1个人经营 2家庭经营） */
    @Excel(name = "组成形式", readConverterExp = "1=个人经营,2=家庭经营")
    private String businessForm;

    /** 注册日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "注册日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date registerDate;

    /** 经营范围 */
    @Excel(name = "经营范围")
    private String businessScope;

    /** 经营许可证.jpg */
    @Excel(name = "经营许可证.jpg")
    private String businessCertificate;

    /** 用户名 */
    @Excel(name = "用户名")
    private String username;

    /** 密码 */
    @Excel(name = "密码")
    private String password;

    /** 联系人姓名 */
    @Excel(name = "联系人姓名")
    private String contactPerson;

    /** 联系人证件类型: 1身份证 2港澳居民来往内地通行证 3台湾居民来往大陆通行证 4普通护照 5外国人永久居留身份证 */
    @Excel(name = "联系人证件类型: 1身份证 2港澳居民来往内地通行证 3台湾居民来往大陆通行证 4普通护照 5外国人永久居留身份证")
    private String contactCardType;

    /** 联系人证件号 */
    @Excel(name = "联系人证件号")
    private String idNumber;

    /** 联系人证件正面jpg照片 */
    @Excel(name = "联系人证件正面jpg照片")
    private String frontPhoto;

    /** 联系人证件反面jpg照片 */
    @Excel(name = "联系人证件反面jpg照片")
    private String backPhoto;

    /** 联系人手机号 */
    @Excel(name = "联系人手机号")
    private String contactPhone;

    /** 联系人邮箱 */
    @Excel(name = "联系人邮箱")
    private String contactEmail;

    /** 创建时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "创建时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date createDatetime;

    public void setBusinessAuditDocumentId(String businessAuditDocumentId) 
    {
        this.businessAuditDocumentId = businessAuditDocumentId;
    }

    public String getBusinessAuditDocumentId() 
    {
        return businessAuditDocumentId;
    }
    public void setBusinessLicense(String businessLicense) 
    {
        this.businessLicense = businessLicense;
    }

    public String getBusinessLicense() 
    {
        return businessLicense;
    }
    public void setBusinessLicenseNumber(String businessLicenseNumber) 
    {
        this.businessLicenseNumber = businessLicenseNumber;
    }

    public String getBusinessLicenseNumber() 
    {
        return businessLicenseNumber;
    }
    public void setManagerName(String managerName) 
    {
        this.managerName = managerName;
    }

    public String getManagerName() 
    {
        return managerName;
    }
    public void setBusinessName(String businessName) 
    {
        this.businessName = businessName;
    }

    public String getBusinessName() 
    {
        return businessName;
    }
    public void setBusinessPlace(String businessPlace) 
    {
        this.businessPlace = businessPlace;
    }

    public String getBusinessPlace() 
    {
        return businessPlace;
    }
    public void setBusinessForm(String businessForm) 
    {
        this.businessForm = businessForm;
    }

    public String getBusinessForm() 
    {
        return businessForm;
    }
    public void setRegisterDate(Date registerDate) 
    {
        this.registerDate = registerDate;
    }

    public Date getRegisterDate() 
    {
        return registerDate;
    }
    public void setBusinessScope(String businessScope) 
    {
        this.businessScope = businessScope;
    }

    public String getBusinessScope() 
    {
        return businessScope;
    }
    public void setBusinessCertificate(String businessCertificate) 
    {
        this.businessCertificate = businessCertificate;
    }

    public String getBusinessCertificate() 
    {
        return businessCertificate;
    }
    public void setUsername(String username) 
    {
        this.username = username;
    }

    public String getUsername() 
    {
        return username;
    }
    public void setPassword(String password) 
    {
        this.password = password;
    }

    public String getPassword() 
    {
        return password;
    }
    public void setContactPerson(String contactPerson) 
    {
        this.contactPerson = contactPerson;
    }

    public String getContactPerson() 
    {
        return contactPerson;
    }
    public void setContactCardType(String contactCardType) 
    {
        this.contactCardType = contactCardType;
    }

    public String getContactCardType() 
    {
        return contactCardType;
    }
    public void setIdNumber(String idNumber) 
    {
        this.idNumber = idNumber;
    }

    public String getIdNumber() 
    {
        return idNumber;
    }
    public void setFrontPhoto(String frontPhoto) 
    {
        this.frontPhoto = frontPhoto;
    }

    public String getFrontPhoto() 
    {
        return frontPhoto;
    }
    public void setBackPhoto(String backPhoto) 
    {
        this.backPhoto = backPhoto;
    }

    public String getBackPhoto() 
    {
        return backPhoto;
    }
    public void setContactPhone(String contactPhone) 
    {
        this.contactPhone = contactPhone;
    }

    public String getContactPhone() 
    {
        return contactPhone;
    }
    public void setContactEmail(String contactEmail) 
    {
        this.contactEmail = contactEmail;
    }

    public String getContactEmail() 
    {
        return contactEmail;
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
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("businessAuditDocumentId", getBusinessAuditDocumentId())
            .append("businessLicense", getBusinessLicense())
            .append("businessLicenseNumber", getBusinessLicenseNumber())
            .append("managerName", getManagerName())
            .append("businessName", getBusinessName())
            .append("businessPlace", getBusinessPlace())
            .append("businessForm", getBusinessForm())
            .append("registerDate", getRegisterDate())
            .append("businessScope", getBusinessScope())
            .append("businessCertificate", getBusinessCertificate())
            .append("username", getUsername())
            .append("password", getPassword())
            .append("contactPerson", getContactPerson())
            .append("contactCardType", getContactCardType())
            .append("idNumber", getIdNumber())
            .append("frontPhoto", getFrontPhoto())
            .append("backPhoto", getBackPhoto())
            .append("contactPhone", getContactPhone())
            .append("contactEmail", getContactEmail())
            .append("createDatetime", getCreateDatetime())
            .toString();
    }
}
