package com.cps.cp.service.impl;

import com.cps.common.core.text.Convert;
import com.cps.cp.domain.ChangeAnnouncement;
import com.cps.cp.mapper.ChangeAnnouncementMapper;
import com.cps.cp.service.IChangeAnnouncementService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 变更公告Service业务层处理
 *
 * @author wxf
 * @date 2022-08-16
 */
@Service
public class ChangeAnnouncementServiceImpl implements IChangeAnnouncementService {
    @Autowired
    private ChangeAnnouncementMapper changeAnnouncementMapper;

    /**
     * 查询变更公告
     *
     * @param changeAnnouncementId 变更公告主键
     * @return 变更公告
     */
    @Override
    public ChangeAnnouncement selectChangeAnnouncementByChangeAnnouncementId(String changeAnnouncementId) {
        return changeAnnouncementMapper.selectChangeAnnouncementByChangeAnnouncementId(changeAnnouncementId);
    }

    /**
     * 查询变更公告列表
     *
     * @param changeAnnouncement 变更公告
     * @return 变更公告
     */
    @Override
    public List<ChangeAnnouncement> selectChangeAnnouncementList(ChangeAnnouncement changeAnnouncement) {
        return changeAnnouncementMapper.selectChangeAnnouncementList(changeAnnouncement);
    }

    /**
     * 新增变更公告
     *
     * @param changeAnnouncement 变更公告
     * @return 结果
     */
    @Override
    public int insertChangeAnnouncement(ChangeAnnouncement changeAnnouncement) {
        return changeAnnouncementMapper.insertChangeAnnouncement(changeAnnouncement);
    }

    /**
     * 修改变更公告
     *
     * @param changeAnnouncement 变更公告
     * @return 结果
     */
    @Override
    public int updateChangeAnnouncement(ChangeAnnouncement changeAnnouncement) {
        return changeAnnouncementMapper.updateChangeAnnouncement(changeAnnouncement);
    }

    /**
     * 批量删除变更公告
     *
     * @param changeAnnouncementIds 需要删除的变更公告主键
     * @return 结果
     */
    @Override
    public int deleteChangeAnnouncementByChangeAnnouncementIds(String changeAnnouncementIds) {
        return changeAnnouncementMapper.deleteChangeAnnouncementByChangeAnnouncementIds(Convert.toStrArray(changeAnnouncementIds));
    }

    /**
     * 删除变更公告信息
     *
     * @param changeAnnouncementId 变更公告主键
     * @return 结果
     */
    @Override
    public int deleteChangeAnnouncementByChangeAnnouncementId(String changeAnnouncementId) {
        return changeAnnouncementMapper.deleteChangeAnnouncementByChangeAnnouncementId(changeAnnouncementId);
    }
}
