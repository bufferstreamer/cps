package com.cps.cp.mapper;

import com.cps.cp.domain.BidWinningResultsAnnouncement;

import java.util.List;

/**
 * 中标结果公告Mapper接口
 *
 * @author wxf
 * @date 2022-08-16
 */
public interface BidWinningResultsAnnouncementMapper {
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
     * 删除中标结果公告
     *
     * @param bidWinningResultsAnnouncementId 中标结果公告主键
     * @return 结果
     */
    public int deleteBidWinningResultsAnnouncementByBidWinningResultsAnnouncementId(String bidWinningResultsAnnouncementId);

    /**
     * 批量删除中标结果公告
     *
     * @param bidWinningResultsAnnouncementIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteBidWinningResultsAnnouncementByBidWinningResultsAnnouncementIds(String[] bidWinningResultsAnnouncementIds);
}
