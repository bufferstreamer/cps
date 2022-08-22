package com.cps.cp.service;

import java.util.List;
import com.cps.cp.domain.BidWinningCandidatesAnnouncement;

/**
 * 中标候选人公示公告Service接口
 * 
 * @author wxf
 * @date 2022-08-16
 */
public interface IBidWinningCandidatesAnnouncementService 
{
    /**
     * 查询中标候选人公示公告
     * 
     * @param bidWinningCandidatesAnnouncementId 中标候选人公示公告主键
     * @return 中标候选人公示公告
     */
    public BidWinningCandidatesAnnouncement selectBidWinningCandidatesAnnouncementByBidWinningCandidatesAnnouncementId(String bidWinningCandidatesAnnouncementId);

    /**
     * 查询中标候选人公示公告列表
     * 
     * @param bidWinningCandidatesAnnouncement 中标候选人公示公告
     * @return 中标候选人公示公告集合
     */
    public List<BidWinningCandidatesAnnouncement> selectBidWinningCandidatesAnnouncementList(BidWinningCandidatesAnnouncement bidWinningCandidatesAnnouncement);

    /**
     * 新增中标候选人公示公告
     * 
     * @param bidWinningCandidatesAnnouncement 中标候选人公示公告
     * @return 结果
     */
    public int insertBidWinningCandidatesAnnouncement(BidWinningCandidatesAnnouncement bidWinningCandidatesAnnouncement);

    /**
     * 修改中标候选人公示公告
     * 
     * @param bidWinningCandidatesAnnouncement 中标候选人公示公告
     * @return 结果
     */
    public int updateBidWinningCandidatesAnnouncement(BidWinningCandidatesAnnouncement bidWinningCandidatesAnnouncement);

    /**
     * 批量删除中标候选人公示公告
     * 
     * @param bidWinningCandidatesAnnouncementIds 需要删除的中标候选人公示公告主键集合
     * @return 结果
     */
    public int deleteBidWinningCandidatesAnnouncementByBidWinningCandidatesAnnouncementIds(String bidWinningCandidatesAnnouncementIds);

    /**
     * 删除中标候选人公示公告信息
     * 
     * @param bidWinningCandidatesAnnouncementId 中标候选人公示公告主键
     * @return 结果
     */
    public int deleteBidWinningCandidatesAnnouncementByBidWinningCandidatesAnnouncementId(String bidWinningCandidatesAnnouncementId);
}
