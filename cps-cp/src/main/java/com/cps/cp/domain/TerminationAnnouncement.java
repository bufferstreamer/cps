package com.cps.cp.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.cps.common.annotation.Excel;
import com.cps.common.core.domain.BaseEntity;

/**
 * 终止公告对象 termination_announcement
 * 
 * @author wxf
 * @date 2022-08-16
 */
public class TerminationAnnouncement extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 终止公告ID */
    @Excel(name = "终止公告ID")
    private String terminationAnnouncementId;

    /** 终止公告文件存储位置 */
    @Excel(name = "终止公告文件存储位置")
    private String terminationAnnouncementDocument;

    /** 标书ID */
    @Excel(name = "标书ID")
    private String tenderId;

    /** 时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date terminationTime;

    /** 终止公告名 */
    @Excel(name = "终止公告名")
    private String announcementName;

    public void setTerminationAnnouncementId(String terminationAnnouncementId) 
    {
        this.terminationAnnouncementId = terminationAnnouncementId;
    }

    public String getTerminationAnnouncementId() 
    {
        return terminationAnnouncementId;
    }
    public void setTerminationAnnouncementDocument(String terminationAnnouncementDocument) 
    {
        this.terminationAnnouncementDocument = terminationAnnouncementDocument;
    }

    public String getTerminationAnnouncementDocument() 
    {
        return terminationAnnouncementDocument;
    }
    public void setTenderId(String tenderId) 
    {
        this.tenderId = tenderId;
    }

    public String getTenderId() 
    {
        return tenderId;
    }
    public void setTerminationTime(Date terminationTime) 
    {
        this.terminationTime = terminationTime;
    }

    public Date getTerminationTime() 
    {
        return terminationTime;
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
            .append("terminationAnnouncementId", getTerminationAnnouncementId())
            .append("terminationAnnouncementDocument", getTerminationAnnouncementDocument())
            .append("tenderId", getTenderId())
            .append("terminationTime", getTerminationTime())
            .append("announcementName",getAnnouncementName())
            .toString();
    }
}
