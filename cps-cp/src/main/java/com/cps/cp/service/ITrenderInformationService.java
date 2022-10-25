package com.cps.cp.service;

import java.util.List;

import com.cps.cp.domain.TrenderInformation;

/**
 * 自动生成标书信息Service接口
 *
 * @author cps
 * @date 2022-10-24
 */
public interface ITrenderInformationService {
    /**
     * 查询自动生成标书信息
     *
     * @param id 自动生成标书信息主键
     * @return 自动生成标书信息
     */
    public TrenderInformation selectTrenderInformationById(Long id);

    /**
     * 查询自动生成标书信息列表
     *
     * @param trenderInformation 自动生成标书信息
     * @return 自动生成标书信息集合
     */
    public List<TrenderInformation> selectTrenderInformationList(TrenderInformation trenderInformation);

    /**
     * 新增自动生成标书信息
     *
     * @param trenderInformation 自动生成标书信息
     * @return 结果
     */
    public int insertTrenderInformation(TrenderInformation trenderInformation);

    /**
     * 修改自动生成标书信息
     *
     * @param trenderInformation 自动生成标书信息
     * @return 结果
     */
    public int updateTrenderInformation(TrenderInformation trenderInformation);

    /**
     * 批量删除自动生成标书信息
     *
     * @param ids 需要删除的自动生成标书信息主键集合
     * @return 结果
     */
    public int deleteTrenderInformationByIds(String ids);

    /**
     * 删除自动生成标书信息信息
     *
     * @param id 自动生成标书信息主键
     * @return 结果
     */
    public int deleteTrenderInformationById(Long id);
}
