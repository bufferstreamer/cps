package com.cps.cp.domain;

import com.cps.common.annotation.Excel;
import com.cps.common.core.domain.BaseEntity;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import java.util.Date;

/**
 * 变更公告对象 change_announcement
 *
 * @author wxf
 * @date 2022-08-16
 */
public class ChangeAnnouncementView extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /**
     * 变更公告ID
     */
    @Excel(name = "变更公告ID")
    private String changeAnnouncementId;

    /**
     * 变更公告文件存储位置
     */
    @Excel(name = "变更公告文件存储位置")
    private String changeAnnouncementDocument;

    /**
     * 标书ID
     */
    @Excel(name = "标书ID")
    private String tenderId;

    /**
     * 变更公告名
     */
    @Excel(name = "变更公告名")
    private String announcementName;


    /**
     * 变更时间
     */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "变更时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date changeTime;

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

    public String getChangeAnnouncementId() {
        return changeAnnouncementId;
    }

    public void setChangeAnnouncementId(String changeAnnouncementId) {
        this.changeAnnouncementId = changeAnnouncementId;
    }

    public String getChangeAnnouncementDocument() {
        return changeAnnouncementDocument;
    }

    public void setChangeAnnouncementDocument(String changeAnnouncementDocument) {
        this.changeAnnouncementDocument = changeAnnouncementDocument;
    }

    public String getTenderId() {
        return tenderId;
    }

    public void setTenderId(String tenderId) {
        this.tenderId = tenderId;
    }

    public Date getChangeTime() {
        return changeTime;
    }

    public void setChangeTime(Date changeTime) {
        this.changeTime = changeTime;
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
                .append("changeAnnouncementId", getChangeAnnouncementId())
                .append("changeAnnouncementDocument", getChangeAnnouncementDocument())
                .append("tenderId", getTenderId())
                .append("changeTime", getChangeTime())
                .append("announcementName", getAnnouncementName())
                .append("projectName",getProjectName())
                .toString();
    }
}
