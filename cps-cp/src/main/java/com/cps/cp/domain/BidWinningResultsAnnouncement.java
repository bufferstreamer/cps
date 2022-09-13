package com.cps.cp.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.cps.common.annotation.Excel;
import com.cps.common.core.domain.BaseEntity;

/**
 * 中标结果公告对象 bid_winning_results_announcement
 * 
 * @author wxf
 * @date 2022-08-16
 */
public class BidWinningResultsAnnouncement extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 中标结果公告ID */
    @Excel(name = "中标结果公告ID")
    private String bidWinningResultsAnnouncementId;

    /** 中标结果公告文件存储位置 */
    @Excel(name = "中标结果公告文件存储位置")
    private String bidWinningResultsAnnouncementDocument;

    /** 标书ID */
    @Excel(name = "标书ID")
    private String tenderId;

    /** 中标结果公告名 */
    @Excel(name = "中标结果公告名")
    private String announcementName;

    public void setBidWinningResultsAnnouncementId(String bidWinningResultsAnnouncementId) 
    {
        this.bidWinningResultsAnnouncementId = bidWinningResultsAnnouncementId;
    }

    public String getBidWinningResultsAnnouncementId() 
    {
        return bidWinningResultsAnnouncementId;
    }
    public void setBidWinningResultsAnnouncementDocument(String bidWinningResultsAnnouncementDocument) 
    {
        this.bidWinningResultsAnnouncementDocument = bidWinningResultsAnnouncementDocument;
    }

    public String getBidWinningResultsAnnouncementDocument() 
    {
        return bidWinningResultsAnnouncementDocument;
    }
    public void setTenderId(String tenderId) 
    {
        this.tenderId = tenderId;
    }

    public String getTenderId() 
    {
        return tenderId;
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
            .append("bidWinningResultsAnnouncementId", getBidWinningResultsAnnouncementId())
            .append("bidWinningResultsAnnouncementDocument", getBidWinningResultsAnnouncementDocument())
            .append("tenderId", getTenderId())
            .append("announcementName",getAnnouncementName())
            .toString();
    }
}
