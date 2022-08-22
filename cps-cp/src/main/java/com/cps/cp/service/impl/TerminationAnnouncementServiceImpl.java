package com.cps.cp.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.cps.cp.mapper.TerminationAnnouncementMapper;
import com.cps.cp.domain.TerminationAnnouncement;
import com.cps.cp.service.ITerminationAnnouncementService;
import com.cps.common.core.text.Convert;

/**
 * 终止公告Service业务层处理
 * 
 * @author wxf
 * @date 2022-08-16
 */
@Service
public class TerminationAnnouncementServiceImpl implements ITerminationAnnouncementService 
{
    @Autowired
    private TerminationAnnouncementMapper terminationAnnouncementMapper;

    /**
     * 查询终止公告
     * 
     * @param terminationAnnouncementId 终止公告主键
     * @return 终止公告
     */
    @Override
    public TerminationAnnouncement selectTerminationAnnouncementByTerminationAnnouncementId(String terminationAnnouncementId)
    {
        return terminationAnnouncementMapper.selectTerminationAnnouncementByTerminationAnnouncementId(terminationAnnouncementId);
    }

    /**
     * 查询终止公告列表
     * 
     * @param terminationAnnouncement 终止公告
     * @return 终止公告
     */
    @Override
    public List<TerminationAnnouncement> selectTerminationAnnouncementList(TerminationAnnouncement terminationAnnouncement)
    {
        return terminationAnnouncementMapper.selectTerminationAnnouncementList(terminationAnnouncement);
    }

    /**
     * 新增终止公告
     * 
     * @param terminationAnnouncement 终止公告
     * @return 结果
     */
    @Override
    public int insertTerminationAnnouncement(TerminationAnnouncement terminationAnnouncement)
    {
        return terminationAnnouncementMapper.insertTerminationAnnouncement(terminationAnnouncement);
    }

    /**
     * 修改终止公告
     * 
     * @param terminationAnnouncement 终止公告
     * @return 结果
     */
    @Override
    public int updateTerminationAnnouncement(TerminationAnnouncement terminationAnnouncement)
    {
        return terminationAnnouncementMapper.updateTerminationAnnouncement(terminationAnnouncement);
    }

    /**
     * 批量删除终止公告
     * 
     * @param terminationAnnouncementIds 需要删除的终止公告主键
     * @return 结果
     */
    @Override
    public int deleteTerminationAnnouncementByTerminationAnnouncementIds(String terminationAnnouncementIds)
    {
        return terminationAnnouncementMapper.deleteTerminationAnnouncementByTerminationAnnouncementIds(Convert.toStrArray(terminationAnnouncementIds));
    }

    /**
     * 删除终止公告信息
     * 
     * @param terminationAnnouncementId 终止公告主键
     * @return 结果
     */
    @Override
    public int deleteTerminationAnnouncementByTerminationAnnouncementId(String terminationAnnouncementId)
    {
        return terminationAnnouncementMapper.deleteTerminationAnnouncementByTerminationAnnouncementId(terminationAnnouncementId);
    }
}
