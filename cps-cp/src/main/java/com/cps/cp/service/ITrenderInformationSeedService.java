package com.cps.cp.service;

import java.util.List;

import com.cps.cp.domain.TrenderInformationSeed;

/**
 * 生成标书小项Service接口
 *
 * @author cps
 * @date 2022-10-24
 */
public interface ITrenderInformationSeedService {
    /**
     * 查询生成标书小项
     *
     * @param seedId 生成标书小项主键
     * @return 生成标书小项
     */
    public TrenderInformationSeed selectTrenderInformationSeedBySeedId(Long seedId);

    /**
     * 查询生成标书小项列表
     *
     * @param trenderInformationSeed 生成标书小项
     * @return 生成标书小项集合
     */
    public List<TrenderInformationSeed> selectTrenderInformationSeedList(TrenderInformationSeed trenderInformationSeed);

    /**
     * 新增生成标书小项
     *
     * @param trenderInformationSeed 生成标书小项
     * @return 结果
     */
    public int insertTrenderInformationSeed(TrenderInformationSeed trenderInformationSeed);

    /**
     * 修改生成标书小项
     *
     * @param trenderInformationSeed 生成标书小项
     * @return 结果
     */
    public int updateTrenderInformationSeed(TrenderInformationSeed trenderInformationSeed);

    /**
     * 批量删除生成标书小项
     *
     * @param seedIds 需要删除的生成标书小项主键集合
     * @return 结果
     */
    public int deleteTrenderInformationSeedBySeedIds(String seedIds);

    /**
     * 删除生成标书小项信息
     *
     * @param seedId 生成标书小项主键
     * @return 结果
     */
    public int deleteTrenderInformationSeedBySeedId(Long seedId);
}
