package com.cps.cp.service;

import java.util.List;
import com.cps.cp.domain.BidWinningResultsAnnouncement;

/**
 * 中标结果公告Service接口
 * 
 * @author wxf
 * @date 2022-08-16
 */
public interface IBidWinningResultsAnnouncementService 
{
    /**
     * 查询中标结果公告
     * 
     * @param bidWinningResultsAnnouncementId 中标结果公告主键
     * @return 中标结果公告
     */
    public BidWinningResultsAnnouncement selectBidWinningResultsAnnouncementByBidWinningResultsAnnouncementId(String bidWinningResultsAnnouncementId);

    /**
     * 查询中标结果公告列表
     * 
     * @param bidWinningResultsAnnouncement 中标结果公告
     * @return 中标结果公告集合
     */
    public List<BidWinningResultsAnnouncement> selectBidWinningResultsAnnouncementList(BidWinningResultsAnnouncement bidWinningResultsAnnouncement);

    /**
     * 新增中标结果公告
     * 
     * @param bidWinningResultsAnnouncement 中标结果公告
     * @return 结果
     */
    public int insertBidWinningResultsAnnouncement(BidWinningResultsAnnouncement bidWinningResultsAnnouncement);

    /**
     * 修改中标结果公告
     * 
     * @param bidWinningResultsAnnouncement 中标结果公告
     * @return 结果
     */
    public int updateBidWinningResultsAnnouncement(BidWinningResultsAnnouncement bidWinningResultsAnnouncement);

    /**
     * 批量删除中标结果公告
     * 
     * @param bidWinningResultsAnnouncementIds 需要删除的中标结果公告主键集合
     * @return 结果
     */
    public int deleteBidWinningResultsAnnouncementByBidWinningResultsAnnouncementIds(String bidWinningResultsAnnouncementIds);

    /**
     * 删除中标结果公告信息
     * 
     * @param bidWinningResultsAnnouncementId 中标结果公告主键
     * @return 结果
     */
    public int deleteBidWinningResultsAnnouncementByBidWinningResultsAnnouncementId(String bidWinningResultsAnnouncementId);
}
