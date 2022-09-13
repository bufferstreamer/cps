package com.cps.cp.service.impl;

import com.cps.common.core.text.Convert;
import com.cps.cp.domain.BidWinningResultsAnnouncement;
import com.cps.cp.mapper.BidWinningResultsAnnouncementMapper;
import com.cps.cp.service.IBidWinningResultsAnnouncementService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 中标结果公告Service业务层处理
 *
 * @author wxf
 * @date 2022-08-16
 */
@Service
public class BidWinningResultsAnnouncementServiceImpl implements IBidWinningResultsAnnouncementService {
    @Autowired
    private BidWinningResultsAnnouncementMapper bidWinningResultsAnnouncementMapper;

    /**
     * 查询中标结果公告
     *
     * @param bidWinningResultsAnnouncementId 中标结果公告主键
     * @return 中标结果公告
     */
    @Override
    public BidWinningResultsAnnouncement selectBidWinningResultsAnnouncementByBidWinningResultsAnnouncementId(String bidWinningResultsAnnouncementId) {
        return bidWinningResultsAnnouncementMapper.selectBidWinningResultsAnnouncementByBidWinningResultsAnnouncementId(bidWinningResultsAnnouncementId);
    }

    /**
     * 查询中标结果公告列表
     *
     * @param bidWinningResultsAnnouncement 中标结果公告
     * @return 中标结果公告
     */
    @Override
    public List<BidWinningResultsAnnouncement> selectBidWinningResultsAnnouncementList(BidWinningResultsAnnouncement bidWinningResultsAnnouncement) {
        return bidWinningResultsAnnouncementMapper.selectBidWinningResultsAnnouncementList(bidWinningResultsAnnouncement);
    }

    /**
     * 新增中标结果公告
     *
     * @param bidWinningResultsAnnouncement 中标结果公告
     * @return 结果
     */
    @Override
    public int insertBidWinningResultsAnnouncement(BidWinningResultsAnnouncement bidWinningResultsAnnouncement) {
        return bidWinningResultsAnnouncementMapper.insertBidWinningResultsAnnouncement(bidWinningResultsAnnouncement);
    }

    /**
     * 修改中标结果公告
     *
     * @param bidWinningResultsAnnouncement 中标结果公告
     * @return 结果
     */
    @Override
    public int updateBidWinningResultsAnnouncement(BidWinningResultsAnnouncement bidWinningResultsAnnouncement) {
        return bidWinningResultsAnnouncementMapper.updateBidWinningResultsAnnouncement(bidWinningResultsAnnouncement);
    }

    /**
     * 批量删除中标结果公告
     *
     * @param bidWinningResultsAnnouncementIds 需要删除的中标结果公告主键
     * @return 结果
     */
    @Override
    public int deleteBidWinningResultsAnnouncementByBidWinningResultsAnnouncementIds(String bidWinningResultsAnnouncementIds) {
        return bidWinningResultsAnnouncementMapper.deleteBidWinningResultsAnnouncementByBidWinningResultsAnnouncementIds(Convert.toStrArray(bidWinningResultsAnnouncementIds));
    }

    /**
     * 删除中标结果公告信息
     *
     * @param bidWinningResultsAnnouncementId 中标结果公告主键
     * @return 结果
     */
    @Override
    public int deleteBidWinningResultsAnnouncementByBidWinningResultsAnnouncementId(String bidWinningResultsAnnouncementId) {
        return bidWinningResultsAnnouncementMapper.deleteBidWinningResultsAnnouncementByBidWinningResultsAnnouncementId(bidWinningResultsAnnouncementId);
    }
}
