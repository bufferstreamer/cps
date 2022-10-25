package com.cps.cp.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.cps.cp.mapper.TrenderInformationSeedMapper;
import com.cps.cp.domain.TrenderInformationSeed;
import com.cps.cp.service.ITrenderInformationSeedService;
import com.cps.common.core.text.Convert;

/**
 * 生成标书小项Service业务层处理
 *
 * @author cps
 * @date 2022-10-24
 */
@Service
public class TrenderInformationSeedServiceImpl implements ITrenderInformationSeedService {
    @Autowired
    private TrenderInformationSeedMapper trenderInformationSeedMapper;

    /**
     * 查询生成标书小项
     *
     * @param seedId 生成标书小项主键
     * @return 生成标书小项
     */
    @Override
    public TrenderInformationSeed selectTrenderInformationSeedBySeedId(Long seedId) {
        return trenderInformationSeedMapper.selectTrenderInformationSeedBySeedId(seedId);
    }

    /**
     * 查询生成标书小项列表
     *
     * @param trenderInformationSeed 生成标书小项
     * @return 生成标书小项
     */
    @Override
    public List<TrenderInformationSeed> selectTrenderInformationSeedList(TrenderInformationSeed trenderInformationSeed) {
        return trenderInformationSeedMapper.selectTrenderInformationSeedList(trenderInformationSeed);
    }

    /**
     * 新增生成标书小项
     *
     * @param trenderInformationSeed 生成标书小项
     * @return 结果
     */
    @Override
    public int insertTrenderInformationSeed(TrenderInformationSeed trenderInformationSeed) {
            return trenderInformationSeedMapper.insertTrenderInformationSeed(trenderInformationSeed);
    }

    /**
     * 修改生成标书小项
     *
     * @param trenderInformationSeed 生成标书小项
     * @return 结果
     */
    @Override
    public int updateTrenderInformationSeed(TrenderInformationSeed trenderInformationSeed) {
        return trenderInformationSeedMapper.updateTrenderInformationSeed(trenderInformationSeed);
    }

    /**
     * 批量删除生成标书小项
     *
     * @param seedIds 需要删除的生成标书小项主键
     * @return 结果
     */
    @Override
    public int deleteTrenderInformationSeedBySeedIds(String seedIds) {
        return trenderInformationSeedMapper.deleteTrenderInformationSeedBySeedIds(Convert.toStrArray(seedIds));
    }

    /**
     * 删除生成标书小项信息
     *
     * @param seedId 生成标书小项主键
     * @return 结果
     */
    @Override
    public int deleteTrenderInformationSeedBySeedId(Long seedId) {
        return trenderInformationSeedMapper.deleteTrenderInformationSeedBySeedId(seedId);
    }
}
