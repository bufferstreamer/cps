package com.cps.audit.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.cps.common.annotation.Excel;
import com.cps.common.core.domain.BaseEntity;

/**
 * 税务及银行审核管理对象 audit_tax_and_bank_info
 * 
 * @author cps
 * @date 2022-08-16
 */
public class TaxAndBankInfo extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 审核id（uuid） */
    private String taxAndBankAuditId;

    /** 审核单id */
    @Excel(name = "审核单id")
    private String checklistId;

    /** 纳税人识别号 */
    @Excel(name = "纳税人识别号")
    private String taxpayerIdNumber;

    /** 纳税人类型（1自然人 2个体工商户 3法人） */
    @Excel(name = "纳税人类型", readConverterExp = "1=自然人,2=个体工商户,3=法人")
    private String taxpayerType;

    /** 纳税类型税码 */
    @Excel(name = "纳税类型税码")
    private String taxTypeCode;

    /** 税务登记证电子版.jpg */
    @Excel(name = "税务登记证电子版.jpg")
    private String taxRegistrationCertificate;

    /** 一般纳税人资格证电子版.jpg */
    @Excel(name = "一般纳税人资格证电子版.jpg")
    private String generalTaxpayerQualificationCertificate;

    /** 银行开户名 */
    @Excel(name = "银行开户名")
    private String bankAccountName;

    /** 公司银行账号 */
    @Excel(name = "公司银行账号")
    private String corporateBankAccountNumber;

    /** 开户银行支行名称 */
    @Excel(name = "开户银行支行名称")
    private String bankBranchName;

    /** 开户银行支行联行号(3位银行代码+4位城市代码+4位银行编号+1位校验位) */
    @Excel(name = "开户银行支行联行号(3位银行代码+4位城市代码+4位银行编号+1位校验位)")
    private String bankBranchNumber;

    /** 开户银行支行所在地 */
    @Excel(name = "开户银行支行所在地")
    private String bankBranchLocation;

    /** 银行开户许可证电子版jpg */
    @Excel(name = "银行开户许可证电子版jpg")
    private String bankAccountOpenLicense;

    /** 创建时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "创建时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date createDatetime;

    public void setTaxAndBankAuditId(String taxAndBankAuditId) 
    {
        this.taxAndBankAuditId = taxAndBankAuditId;
    }

    public String getTaxAndBankAuditId() 
    {
        return taxAndBankAuditId;
    }
    public void setChecklistId(String checklistId) 
    {
        this.checklistId = checklistId;
    }

    public String getChecklistId() 
    {
        return checklistId;
    }
    public void setTaxpayerIdNumber(String taxpayerIdNumber) 
    {
        this.taxpayerIdNumber = taxpayerIdNumber;
    }

    public String getTaxpayerIdNumber() 
    {
        return taxpayerIdNumber;
    }
    public void setTaxpayerType(String taxpayerType) 
    {
        this.taxpayerType = taxpayerType;
    }

    public String getTaxpayerType() 
    {
        return taxpayerType;
    }
    public void setTaxTypeCode(String taxTypeCode) 
    {
        this.taxTypeCode = taxTypeCode;
    }

    public String getTaxTypeCode() 
    {
        return taxTypeCode;
    }
    public void setTaxRegistrationCertificate(String taxRegistrationCertificate) 
    {
        this.taxRegistrationCertificate = taxRegistrationCertificate;
    }

    public String getTaxRegistrationCertificate() 
    {
        return taxRegistrationCertificate;
    }
    public void setGeneralTaxpayerQualificationCertificate(String generalTaxpayerQualificationCertificate) 
    {
        this.generalTaxpayerQualificationCertificate = generalTaxpayerQualificationCertificate;
    }

    public String getGeneralTaxpayerQualificationCertificate() 
    {
        return generalTaxpayerQualificationCertificate;
    }
    public void setBankAccountName(String bankAccountName) 
    {
        this.bankAccountName = bankAccountName;
    }

    public String getBankAccountName() 
    {
        return bankAccountName;
    }
    public void setCorporateBankAccountNumber(String corporateBankAccountNumber) 
    {
        this.corporateBankAccountNumber = corporateBankAccountNumber;
    }

    public String getCorporateBankAccountNumber() 
    {
        return corporateBankAccountNumber;
    }
    public void setBankBranchName(String bankBranchName) 
    {
        this.bankBranchName = bankBranchName;
    }

    public String getBankBranchName() 
    {
        return bankBranchName;
    }
    public void setBankBranchNumber(String bankBranchNumber) 
    {
        this.bankBranchNumber = bankBranchNumber;
    }

    public String getBankBranchNumber() 
    {
        return bankBranchNumber;
    }
    public void setBankBranchLocation(String bankBranchLocation) 
    {
        this.bankBranchLocation = bankBranchLocation;
    }

    public String getBankBranchLocation() 
    {
        return bankBranchLocation;
    }
    public void setBankAccountOpenLicense(String bankAccountOpenLicense) 
    {
        this.bankAccountOpenLicense = bankAccountOpenLicense;
    }

    public String getBankAccountOpenLicense() 
    {
        return bankAccountOpenLicense;
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
            .append("taxAndBankAuditId", getTaxAndBankAuditId())
            .append("checklistId", getChecklistId())
            .append("taxpayerIdNumber", getTaxpayerIdNumber())
            .append("taxpayerType", getTaxpayerType())
            .append("taxTypeCode", getTaxTypeCode())
            .append("taxRegistrationCertificate", getTaxRegistrationCertificate())
            .append("generalTaxpayerQualificationCertificate", getGeneralTaxpayerQualificationCertificate())
            .append("bankAccountName", getBankAccountName())
            .append("corporateBankAccountNumber", getCorporateBankAccountNumber())
            .append("bankBranchName", getBankBranchName())
            .append("bankBranchNumber", getBankBranchNumber())
            .append("bankBranchLocation", getBankBranchLocation())
            .append("bankAccountOpenLicense", getBankAccountOpenLicense())
            .append("createDatetime", getCreateDatetime())
            .toString();
    }
}
