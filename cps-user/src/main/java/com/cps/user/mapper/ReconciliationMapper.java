package com.cps.user.mapper;

import java.util.List;

import com.cps.common.annotation.DataSource;
import com.cps.common.enums.DataSourceType;
import com.cps.user.domain.Reconciliation;
import org.springframework.stereotype.Repository;

/**
 * 【请填写功能名称】Mapper接口
 *
 * @author cps
 * @date 2022-09-17
 */
@DataSource(value = DataSourceType.SLAVE)
@Repository
public interface ReconciliationMapper {
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
     * 删除【请填写功能名称】
     *
     * @param recordId 【请填写功能名称】主键
     * @return 结果
     */
    public int deleteReconciliationByRecordId(String recordId);

    /**
     * 批量删除【请填写功能名称】
     *
     * @param recordIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteReconciliationByRecordIds(String[] recordIds);
}
