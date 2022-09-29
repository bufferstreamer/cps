package com.cps.user.service.impl;

import java.util.List;

import com.cps.common.annotation.DataSource;
import com.cps.common.enums.DataSourceType;
import com.cps.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import com.cps.user.mapper.ReconciliationMapper;
import com.cps.user.domain.Reconciliation;
import com.cps.user.service.IReconciliationService;
import com.cps.common.core.text.Convert;

/**
 * 【请填写功能名称】Service业务层处理
 *
 * @author cps
 * @date 2022-09-17
 */
@DataSource(value = DataSourceType.SLAVE)
@Service
public class ReconciliationServiceImpl implements IReconciliationService {
    @Autowired
    private ReconciliationMapper reconciliationMapper;

    /**
     * 查询【请填写功能名称】
     *
     * @param recordId 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    @Override
    public Reconciliation selectReconciliationByRecordId(String recordId) {
        return reconciliationMapper.selectReconciliationByRecordId(recordId);
    }

    /**
     * 查询【请填写功能名称】列表
     *
     * @param reconciliation 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<Reconciliation> selectReconciliationList(Reconciliation reconciliation) {
        return reconciliationMapper.selectReconciliationList(reconciliation);
    }

    /**
     * 新增【请填写功能名称】
     *
     * @param reconciliation 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertReconciliation(Reconciliation reconciliation) {
                reconciliation.setCreateTime(DateUtils.getNowDate());
            return reconciliationMapper.insertReconciliation(reconciliation);
    }

    /**
     * 修改【请填写功能名称】
     *
     * @param reconciliation 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateReconciliation(Reconciliation reconciliation) {
        return reconciliationMapper.updateReconciliation(reconciliation);
    }

    /**
     * 批量删除【请填写功能名称】
     *
     * @param recordIds 需要删除的【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteReconciliationByRecordIds(String recordIds) {
        return reconciliationMapper.deleteReconciliationByRecordIds(Convert.toStrArray(recordIds));
    }

    /**
     * 删除【请填写功能名称】信息
     *
     * @param recordId 【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteReconciliationByRecordId(String recordId) {
        return reconciliationMapper.deleteReconciliationByRecordId(recordId);
    }
}
