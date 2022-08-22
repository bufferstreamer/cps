package com.cps.audit.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.cps.common.annotation.Excel;
import com.cps.common.core.domain.BaseEntity;

/**
 * 供应商评价审核管理对象 audit_supplier_credit_evaluation_info
 * 
 * @author cps
 * @date 2022-08-16
 */
public class SupplierCreditEvaluationInfo extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 审核id（uuid） */
    private String supplierCreditEvaluationAuditId;

    /** 审核单id */
    @Excel(name = "审核单id")
    private String checklistId;

    /** 公司名称 */
    @Excel(name = "公司名称")
    private String corporateName;

    /** 公司征信信息jpg照片 */
    @Excel(name = "公司征信信息jpg照片")
    private String corporateCreditInfo;

    /** 法人姓名 */
    @Excel(name = "法人姓名")
    private String frName;

    /** 法人犯罪记录信息jpg照片 */
    @Excel(name = "法人犯罪记录信息jpg照片")
    private String frCriminalRecord;

    /** 创建时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "创建时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date createDatetime;

    public void setSupplierCreditEvaluationAuditId(String supplierCreditEvaluationAuditId) 
    {
        this.supplierCreditEvaluationAuditId = supplierCreditEvaluationAuditId;
    }

    public String getSupplierCreditEvaluationAuditId() 
    {
        return supplierCreditEvaluationAuditId;
    }
    public void setChecklistId(String checklistId) 
    {
        this.checklistId = checklistId;
    }

    public String getChecklistId() 
    {
        return checklistId;
    }
    public void setCorporateName(String corporateName) 
    {
        this.corporateName = corporateName;
    }

    public String getCorporateName() 
    {
        return corporateName;
    }
    public void setCorporateCreditInfo(String corporateCreditInfo) 
    {
        this.corporateCreditInfo = corporateCreditInfo;
    }

    public String getCorporateCreditInfo() 
    {
        return corporateCreditInfo;
    }
    public void setFrName(String frName) 
    {
        this.frName = frName;
    }

    public String getFrName() 
    {
        return frName;
    }
    public void setFrCriminalRecord(String frCriminalRecord) 
    {
        this.frCriminalRecord = frCriminalRecord;
    }

    public String getFrCriminalRecord() 
    {
        return frCriminalRecord;
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
            .append("supplierCreditEvaluationAuditId", getSupplierCreditEvaluationAuditId())
            .append("checklistId", getChecklistId())
            .append("corporateName", getCorporateName())
            .append("corporateCreditInfo", getCorporateCreditInfo())
            .append("frName", getFrName())
            .append("frCriminalRecord", getFrCriminalRecord())
            .append("createDatetime", getCreateDatetime())
            .toString();
    }
}
