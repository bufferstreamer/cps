package com.cps.audit.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.cps.common.annotation.Excel;
import com.cps.common.core.domain.BaseEntity;

/**
 * 小商超信用评价审核管理对象 audit_business_credit_evaluation_info
 * 
 * @author cps
 * @date 2022-08-16
 */
public class BusinessCreditEvaluationInfo extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 审核id（uuid） */
    private String businessCreditEvaluationAuditId;

    /** 审核单id */
    @Excel(name = "审核单id")
    private String checklistId;

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

    public void setBusinessCreditEvaluationAuditId(String businessCreditEvaluationAuditId) 
    {
        this.businessCreditEvaluationAuditId = businessCreditEvaluationAuditId;
    }

    public String getBusinessCreditEvaluationAuditId() 
    {
        return businessCreditEvaluationAuditId;
    }
    public void setChecklistId(String checklistId) 
    {
        this.checklistId = checklistId;
    }

    public String getChecklistId() 
    {
        return checklistId;
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
            .append("businessCreditEvaluationAuditId", getBusinessCreditEvaluationAuditId())
            .append("checklistId", getChecklistId())
            .append("frName", getFrName())
            .append("frCriminalRecord", getFrCriminalRecord())
            .append("createDatetime", getCreateDatetime())
            .toString();
    }
}
