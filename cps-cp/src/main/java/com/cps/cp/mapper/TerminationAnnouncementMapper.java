package com.cps.cp.mapper;

import java.util.List;
import com.cps.cp.domain.TerminationAnnouncement;

/**
 * 终止公告Mapper接口
 * 
 * @author wxf
 * @date 2022-08-16
 */
public interface TerminationAnnouncementMapper 
{
    /**
     * 查询终止公告
     * 
     * @param terminationAnnouncementId 终止公告主键
     * @return 终止公告
     */
    public TerminationAnnouncement selectTerminationAnnouncementByTerminationAnnouncementId(String terminationAnnouncementId);

    /**
     * 查询终止公告列表
     * 
     * @param terminationAnnouncement 终止公告
     * @return 终止公告集合
     */
    public List<TerminationAnnouncement> selectTerminationAnnouncementList(TerminationAnnouncement terminationAnnouncement);

    /**
     * 新增终止公告
     * 
     * @param terminationAnnouncement 终止公告
     * @return 结果
     */
    public int insertTerminationAnnouncement(TerminationAnnouncement terminationAnnouncement);

    /**
     * 修改终止公告
     * 
     * @param terminationAnnouncement 终止公告
     * @return 结果
     */
    public int updateTerminationAnnouncement(TerminationAnnouncement terminationAnnouncement);

    /**
     * 删除终止公告
     * 
     * @param terminationAnnouncementId 终止公告主键
     * @return 结果
     */
    public int deleteTerminationAnnouncementByTerminationAnnouncementId(String terminationAnnouncementId);

    /**
     * 批量删除终止公告
     * 
     * @param terminationAnnouncementIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteTerminationAnnouncementByTerminationAnnouncementIds(String[] terminationAnnouncementIds);
}
