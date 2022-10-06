package com.cps.cp.domain;

import com.cps.common.annotation.Excel;
import com.cps.common.core.domain.BaseEntity;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import java.util.Date;

/**
 * 中标候选人公示公告对象 bid_winning_candidates_announcement
 *
 * @author wxf
 * @date 2022-08-16
 */
public class BidWinningCandidatesAnnouncementView extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /**
     * 中标候选人公示公告
     */
    @Excel(name = "中标候选人公示公告")
    private String bidWinningCandidatesAnnouncementId;

    /**
     * 中标候选人公示公告文件存储位置
     */
    @Excel(name = "中标候选人公示公告文件存储位置")
    private String bidWinningCandidatesDocument;

    /**
     * 标书ID
     */
    @Excel(name = "标书ID")
    private String tenderId;

    /**
     * 公示时间
     */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "公示时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date publicityTime;

    /**
     * 公示截止时间
     */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "公示截止时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date deadlineTime;

    /**
     * 中标候选人公示公告名
     */
    @Excel(name = "中标候选人公示公告名")
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

    public String getBidWinningCandidatesAnnouncementId() {
        return bidWinningCandidatesAnnouncementId;
    }

    public void setBidWinningCandidatesAnnouncementId(String bidWinningCandidatesAnnouncementId) {
        this.bidWinningCandidatesAnnouncementId = bidWinningCandidatesAnnouncementId;
    }

    public String getBidWinningCandidatesDocument() {
        return bidWinningCandidatesDocument;
    }

    public void setBidWinningCandidatesDocument(String bidWinningCandidatesDocument) {
        this.bidWinningCandidatesDocument = bidWinningCandidatesDocument;
    }

    public String getTenderId() {
        return tenderId;
    }

    public void setTenderId(String tenderId) {
        this.tenderId = tenderId;
    }

    public Date getPublicityTime() {
        return publicityTime;
    }

    public void setPublicityTime(Date publicityTime) {
        this.publicityTime = publicityTime;
    }

    public Date getDeadlineTime() {
        return deadlineTime;
    }

    public void setDeadlineTime(Date deadlineTime) {
        this.deadlineTime = deadlineTime;
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
                .append("bidWinningCandidatesAnnouncementId", getBidWinningCandidatesAnnouncementId())
                .append("bidWinningCandidatesDocument", getBidWinningCandidatesDocument())
                .append("tenderId", getTenderId())
                .append("publicityTime", getPublicityTime())
                .append("deadlineTime", getDeadlineTime())
                .append("announcementName", getAnnouncementName())
                .append("projectName",getProjectName())
                .toString();
    }
}
