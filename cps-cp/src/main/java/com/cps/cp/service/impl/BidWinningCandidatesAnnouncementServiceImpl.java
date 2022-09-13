package com.cps.cp.service.impl;

import com.cps.common.core.text.Convert;
import com.cps.cp.domain.BidWinningCandidatesAnnouncement;
import com.cps.cp.mapper.BidWinningCandidatesAnnouncementMapper;
import com.cps.cp.service.IBidWinningCandidatesAnnouncementService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 中标候选人公示公告Service业务层处理
 *
 * @author wxf
 * @date 2022-08-16
 */
@Service
public class BidWinningCandidatesAnnouncementServiceImpl implements IBidWinningCandidatesAnnouncementService {
    @Autowired
    private BidWinningCandidatesAnnouncementMapper bidWinningCandidatesAnnouncementMapper;

    /**
     * 查询中标候选人公示公告
     *
     * @param bidWinningCandidatesAnnouncementId 中标候选人公示公告主键
     * @return 中标候选人公示公告
     */
    @Override
    public BidWinningCandidatesAnnouncement selectBidWinningCandidatesAnnouncementByBidWinningCandidatesAnnouncementId(String bidWinningCandidatesAnnouncementId) {
        return bidWinningCandidatesAnnouncementMapper.selectBidWinningCandidatesAnnouncementByBidWinningCandidatesAnnouncementId(bidWinningCandidatesAnnouncementId);
    }

    /**
     * 查询中标候选人公示公告列表
     *
     * @param bidWinningCandidatesAnnouncement 中标候选人公示公告
     * @return 中标候选人公示公告
     */
    @Override
    public List<BidWinningCandidatesAnnouncement> selectBidWinningCandidatesAnnouncementList(BidWinningCandidatesAnnouncement bidWinningCandidatesAnnouncement) {
        return bidWinningCandidatesAnnouncementMapper.selectBidWinningCandidatesAnnouncementList(bidWinningCandidatesAnnouncement);
    }

    /**
     * 新增中标候选人公示公告
     *
     * @param bidWinningCandidatesAnnouncement 中标候选人公示公告
     * @return 结果
     */
    @Override
    public int insertBidWinningCandidatesAnnouncement(BidWinningCandidatesAnnouncement bidWinningCandidatesAnnouncement) {
        return bidWinningCandidatesAnnouncementMapper.insertBidWinningCandidatesAnnouncement(bidWinningCandidatesAnnouncement);
    }

    /**
     * 修改中标候选人公示公告
     *
     * @param bidWinningCandidatesAnnouncement 中标候选人公示公告
     * @return 结果
     */
    @Override
    public int updateBidWinningCandidatesAnnouncement(BidWinningCandidatesAnnouncement bidWinningCandidatesAnnouncement) {
        return bidWinningCandidatesAnnouncementMapper.updateBidWinningCandidatesAnnouncement(bidWinningCandidatesAnnouncement);
    }

    /**
     * 批量删除中标候选人公示公告
     *
     * @param bidWinningCandidatesAnnouncementIds 需要删除的中标候选人公示公告主键
     * @return 结果
     */
    @Override
    public int deleteBidWinningCandidatesAnnouncementByBidWinningCandidatesAnnouncementIds(String bidWinningCandidatesAnnouncementIds) {
        return bidWinningCandidatesAnnouncementMapper.deleteBidWinningCandidatesAnnouncementByBidWinningCandidatesAnnouncementIds(Convert.toStrArray(bidWinningCandidatesAnnouncementIds));
    }

    /**
     * 删除中标候选人公示公告信息
     *
     * @param bidWinningCandidatesAnnouncementId 中标候选人公示公告主键
     * @return 结果
     */
    @Override
    public int deleteBidWinningCandidatesAnnouncementByBidWinningCandidatesAnnouncementId(String bidWinningCandidatesAnnouncementId) {
        return bidWinningCandidatesAnnouncementMapper.deleteBidWinningCandidatesAnnouncementByBidWinningCandidatesAnnouncementId(bidWinningCandidatesAnnouncementId);
    }
}
