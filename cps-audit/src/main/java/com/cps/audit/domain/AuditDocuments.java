package com.cps.audit.domain;

import com.cps.common.annotation.Excel;
import com.cps.common.core.domain.BaseEntity;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import java.util.Date;

/**
 * 审核单据管理对象 audit_documents
 *
 * @author cps
 * @date 2022-08-16
 */
public class AuditDocuments extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /**
     * 用户id
     */
    @Excel(name = "用户id")
    private Long userId;

    /**
     * 审核单id
     */
    private String checklistId;

    /**
     * 审核类型（1供应商 2小商超）
     */
    @Excel(name = "审核类型", readConverterExp = "1=供应商,2=小商超")
    private String auditType;

    /**
     * 审核状态（1未审核 2审核通过）
     */
    @Excel(name = "审核状态", readConverterExp = "1=未审核,2=审核通过")
    private String auditStatus;

    /**
     * 管理员id
     */
    @Excel(name = "管理员id")
    private Long adminId;

    /**
     * 审核结果（备注）
     */
    @Excel(name = "审核结果", readConverterExp = "备=注")
    private String auditResult;

    /**
     * 创建时间
     */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "创建时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date createDatetime;

    /**
     * 更新时间
     */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "更新时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date updateDatetime;

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public String getChecklistId() {
        return checklistId;
    }

    public void setChecklistId(String checklistId) {
        this.checklistId = checklistId;
    }

    public String getAuditType() {
        return auditType;
    }

    public void setAuditType(String auditType) {
        this.auditType = auditType;
    }

    public String getAuditStatus() {
        return auditStatus;
    }

    public void setAuditStatus(String auditStatus) {
        this.auditStatus = auditStatus;
    }

    public Long getAdminId() {
        return adminId;
    }

    public void setAdminId(Long adminId) {
        this.adminId = adminId;
    }

    public String getAuditResult() {
        return auditResult;
    }

    public void setAuditResult(String auditResult) {
        this.auditResult = auditResult;
    }

    public Date getCreateDatetime() {
        return createDatetime;
    }

    public void setCreateDatetime(Date createDatetime) {
        this.createDatetime = createDatetime;
    }

    public Date getUpdateDatetime() {
        return updateDatetime;
    }

    public void setUpdateDatetime(Date updateDatetime) {
        this.updateDatetime = updateDatetime;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
                .append("userId", getUserId())
                .append("checklistId", getChecklistId())
                .append("auditType", getAuditType())
                .append("auditStatus", getAuditStatus())
                .append("adminId", getAdminId())
                .append("auditResult", getAuditResult())
                .append("createDatetime", getCreateDatetime())
                .append("updateDatetime", getUpdateDatetime())
                .toString();
    }
}
