package com.cps.cp.mapper;

import com.cps.cp.domain.ChangeAnnouncement;

import java.util.List;

/**
 * 变更公告Mapper接口
 *
 * @author wxf
 * @date 2022-08-16
 */
public interface ChangeAnnouncementMapper {
    /**
     * 查询变更公告
     *
     * @param changeAnnouncementId 变更公告主键
     * @return 变更公告
     */
    public ChangeAnnouncement selectChangeAnnouncementByChangeAnnouncementId(String changeAnnouncementId);

    /**
     * 查询变更公告列表
     *
     * @param changeAnnouncement 变更公告
     * @return 变更公告集合
     */
    public List<ChangeAnnouncement> selectChangeAnnouncementList(ChangeAnnouncement changeAnnouncement);

    /**
     * 新增变更公告
     *
     * @param changeAnnouncement 变更公告
     * @return 结果
     */
    public int insertChangeAnnouncement(ChangeAnnouncement changeAnnouncement);

    /**
     * 修改变更公告
     *
     * @param changeAnnouncement 变更公告
     * @return 结果
     */
    public int updateChangeAnnouncement(ChangeAnnouncement changeAnnouncement);

    /**
     * 删除变更公告
     *
     * @param changeAnnouncementId 变更公告主键
     * @return 结果
     */
    public int deleteChangeAnnouncementByChangeAnnouncementId(String changeAnnouncementId);

    /**
     * 批量删除变更公告
     *
     * @param changeAnnouncementIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteChangeAnnouncementByChangeAnnouncementIds(String[] changeAnnouncementIds);
}
