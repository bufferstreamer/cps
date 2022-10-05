package com.cps.cp.domain;

import com.cps.common.annotation.Excel;
import com.cps.common.core.domain.BaseEntity;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import java.util.Date;

/**
 * 终止公告对象 termination_announcement
 *
 * @author wxf
 * @date 2022-08-16
 */
public class TerminationAnnouncementView extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /**
     * 终止公告ID
     */
    @Excel(name = "终止公告ID")
    private String terminationAnnouncementId;

    /**
     * 终止公告文件存储位置
     */
    @Excel(name = "终止公告文件存储位置")
    private String terminationAnnouncementDocument;

    /**
     * 标书ID
     */
    @Excel(name = "标书ID")
    private String tenderId;

    /**
     * 时间
     */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date terminationTime;

    /**
     * 终止公告名
     */
    @Excel(name = "终止公告名")
    private String announcementName;

    /**
     * 项目名称
     */
    @Excel(name = "项目名称")
    private String projectName;

    public String getProjectName() {
        return projectName;
    }

    public void setProjectName(String projectName) {
        this.projectName = projectName;
    }

    public String getTerminationAnnouncementId() {
        return terminationAnnouncementId;
    }

    public void setTerminationAnnouncementId(String terminationAnnouncementId) {
        this.terminationAnnouncementId = terminationAnnouncementId;
    }

    public String getTerminationAnnouncementDocument() {
        return terminationAnnouncementDocument;
    }

    public void setTerminationAnnouncementDocument(String terminationAnnouncementDocument) {
        this.terminationAnnouncementDocument = terminationAnnouncementDocument;
    }

    public String getTenderId() {
        return tenderId;
    }

    public void setTenderId(String tenderId) {
        this.tenderId = tenderId;
    }

    public Date getTerminationTime() {
        return terminationTime;
    }

    public void setTerminationTime(Date terminationTime) {
        this.terminationTime = terminationTime;
    }

    public String getAnnouncementName() {
        return announcementName;
    }

    public void setAnnouncementName(String announcementName) {
        this.announcementName = announcementName;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
                .append("terminationAnnouncementId", getTerminationAnnouncementId())
                .append("terminationAnnouncementDocument", getTerminationAnnouncementDocument())
                .append("tenderId", getTenderId())
                .append("terminationTime", getTerminationTime())
                .append("announcementName", getAnnouncementName())
                .append("projectName",getProjectName())
                .toString();
    }
}
