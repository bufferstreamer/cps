package com.cps.cp.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.cps.common.annotation.Excel;
import com.cps.common.core.domain.BaseEntity;

/**
 * 变更公告对象 change_announcement
 * 
 * @author wxf
 * @date 2022-08-16
 */
public class ChangeAnnouncement extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 变更公告ID */
    @Excel(name = "变更公告ID")
    private String changeAnnouncementId;

    /** 变更公告文件存储位置 */
    @Excel(name = "变更公告文件存储位置")
    private String changeAnnouncementDocument;

    /** 标书ID */
    @Excel(name = "标书ID")
    private String tenderId;

    /** 变更公告名 */
    @Excel(name = "变更公告名")
    private String announcementName;


    /** 变更时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "变更时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date changeTime;

    public void setChangeAnnouncementId(String changeAnnouncementId) 
    {
        this.changeAnnouncementId = changeAnnouncementId;
    }

    public String getChangeAnnouncementId() 
    {
        return changeAnnouncementId;
    }
    public void setChangeAnnouncementDocument(String changeAnnouncementDocument) 
    {
        this.changeAnnouncementDocument = changeAnnouncementDocument;
    }

    public String getChangeAnnouncementDocument() 
    {
        return changeAnnouncementDocument;
    }
    public void setTenderId(String tenderId) 
    {
        this.tenderId = tenderId;
    }

    public String getTenderId() 
    {
        return tenderId;
    }
    public void setChangeTime(Date changeTime) 
    {
        this.changeTime = changeTime;
    }

    public Date getChangeTime() 
    {
        return changeTime;
    }


    public String getAnnouncementName() {
        return announcementName;
    }

    public void setAnnouncementName(String announcementName) {
        this.announcementName = announcementName;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("changeAnnouncementId", getChangeAnnouncementId())
            .append("changeAnnouncementDocument", getChangeAnnouncementDocument())
            .append("tenderId", getTenderId())
            .append("changeTime", getChangeTime())
            .append("announcementName",getAnnouncementName())
            .toString();
    }
}
