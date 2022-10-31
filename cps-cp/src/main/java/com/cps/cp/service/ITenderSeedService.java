package com.cps.cp.service;

import java.util.List;

import com.cps.cp.domain.TenderSeed;

/**
 * 自动生成标书所需信息的子表Service接口
 *
 * @author cps
 * @date 2022-10-27
 */
public interface ITenderSeedService {
    /**
     * 查询自动生成标书所需信息的子表
     *
     * @param id 自动生成标书所需信息的子表主键
     * @return 自动生成标书所需信息的子表
     */
    public TenderSeed selectTenderSeedById(Long id);

    /**
     * 查询自动生成标书所需信息的子表列表
     *
     * @param tenderSeed 自动生成标书所需信息的子表
     * @return 自动生成标书所需信息的子表集合
     */
    public List<TenderSeed> selectTenderSeedList(TenderSeed tenderSeed);

    /**
     * 新增自动生成标书所需信息的子表
     *
     * @param tenderSeed 自动生成标书所需信息的子表
     * @return 结果
     */
    public int insertTenderSeed(TenderSeed tenderSeed);

    /**
     * 修改自动生成标书所需信息的子表
     *
     * @param tenderSeed 自动生成标书所需信息的子表
     * @return 结果
     */
    public int updateTenderSeed(TenderSeed tenderSeed);

    /**
     * 批量删除自动生成标书所需信息的子表
     *
     * @param ids 需要删除的自动生成标书所需信息的子表主键集合
     * @return 结果
     */
    public int deleteTenderSeedByIds(String ids);

    /**
     * 删除自动生成标书所需信息的子表信息
     *
     * @param id 自动生成标书所需信息的子表主键
     * @return 结果
     */
    public int deleteTenderSeedById(Long id);
}
