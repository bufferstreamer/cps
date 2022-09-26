package com.cps.user.service;

import java.util.List;

import com.cps.user.domain.Reconciliation;

/**
 * 【请填写功能名称】Service接口
 *
 * @author cps
 * @date 2022-09-17
 */
public interface IReconciliationService {
    /**
     * 查询【请填写功能名称】
     *
     * @param recordId 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    public Reconciliation selectReconciliationByRecordId(String recordId);

    /**
     * 查询【请填写功能名称】列表
     *
     * @param reconciliation 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<Reconciliation> selectReconciliationList(Reconciliation reconciliation);

    /**
     * 新增【请填写功能名称】
     *
     * @param reconciliation 【请填写功能名称】
     * @return 结果
     */
    public int insertReconciliation(Reconciliation reconciliation);

    /**
     * 修改【请填写功能名称】
     *
     * @param reconciliation 【请填写功能名称】
     * @return 结果
     */
    public int updateReconciliation(Reconciliation reconciliation);

    /**
     * 批量删除【请填写功能名称】
     *
     * @param recordIds 需要删除的【请填写功能名称】主键集合
     * @return 结果
     */
    public int deleteReconciliationByRecordIds(String recordIds);

    /**
     * 删除【请填写功能名称】信息
     *
     * @param recordId 【请填写功能名称】主键
     * @return 结果
     */
    public int deleteReconciliationByRecordId(String recordId);
}
