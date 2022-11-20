package com.cps.cp.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.cps.cp.mapper.TenderSeedMapper;
import com.cps.cp.domain.TenderSeed;
import com.cps.cp.service.ITenderSeedService;
import com.cps.common.core.text.Convert;

/**
 * 自动生成标书所需信息的子表Service业务层处理
 *
 * @author cps
 * @date 2022-10-27
 */
@Service
public class TenderSeedServiceImpl implements ITenderSeedService {
    @Autowired
    private TenderSeedMapper tenderSeedMapper;

    /**
     * 查询自动生成标书所需信息的子表
     *
     * @param id 自动生成标书所需信息的子表主键
     * @return 自动生成标书所需信息的子表
     */
    @Override
    public TenderSeed selectTenderSeedById(Long id) {
        return tenderSeedMapper.selectTenderSeedById(id);
    }

    @Override
    public TenderSeed selectTenderSeedByInformationId(Long informationId) {
        return tenderSeedMapper.selectTenderSeedByInformationId(informationId);
    }

    /**
     * 查询自动生成标书所需信息的子表列表
     *
     * @param tenderSeed 自动生成标书所需信息的子表
     * @return 自动生成标书所需信息的子表
     */
    @Override
    public List<TenderSeed> selectTenderSeedList(TenderSeed tenderSeed) {
        return tenderSeedMapper.selectTenderSeedList(tenderSeed);
    }

    /**
     * 新增自动生成标书所需信息的子表
     *
     * @param tenderSeed 自动生成标书所需信息的子表
     * @return 结果
     */
    @Override
    public int insertTenderSeed(TenderSeed tenderSeed) {
            return tenderSeedMapper.insertTenderSeed(tenderSeed);
    }

    /**
     * 修改自动生成标书所需信息的子表
     *
     * @param tenderSeed 自动生成标书所需信息的子表
     * @return 结果
     */
    @Override
    public int updateTenderSeed(TenderSeed tenderSeed) {
        return tenderSeedMapper.updateTenderSeed(tenderSeed);
    }

    /**
     * 批量删除自动生成标书所需信息的子表
     *
     * @param ids 需要删除的自动生成标书所需信息的子表主键
     * @return 结果
     */
    @Override
    public int deleteTenderSeedByIds(String ids) {
        return tenderSeedMapper.deleteTenderSeedByIds(Convert.toStrArray(ids));
    }

    @Override
    public int deleteTenderSeedByInformationIds(String informationIds) {
        return tenderSeedMapper.deleteTenderSeedByInformationIds(Convert.toStrArray(informationIds));
    }

    @Override
    public int deleteTenderSeedByInformationId(Long informationId) {
        return tenderSeedMapper.deleteTenderSeedByInformationId(informationId);
    }

    /**
     * 删除自动生成标书所需信息的子表信息
     *
     * @param id 自动生成标书所需信息的子表主键
     * @return 结果
     */
    @Override
    public int deleteTenderSeedById(Long id) {
        return tenderSeedMapper.deleteTenderSeedById(id);
    }
}
