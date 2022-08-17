package com.cps.audit.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.cps.audit.mapper.SupplierCreditEvaluationInfoMapper;
import com.cps.audit.domain.SupplierCreditEvaluationInfo;
import com.cps.audit.service.ISupplierCreditEvaluationInfoService;
import com.cps.common.core.text.Convert;

/**
 * 供应商评价审核管理Service业务层处理
 * 
 * @author cps
 * @date 2022-08-16
 */
@Service
public class SupplierCreditEvaluationInfoServiceImpl implements ISupplierCreditEvaluationInfoService 
{
    @Autowired
    private SupplierCreditEvaluationInfoMapper supplierCreditEvaluationInfoMapper;

    /**
     * 查询供应商评价审核管理
     * 
     * @param supplierCreditEvaluationAuditId 供应商评价审核管理主键
     * @return 供应商评价审核管理
     */
    @Override
    public SupplierCreditEvaluationInfo selectSupplierCreditEvaluationInfoBySupplierCreditEvaluationAuditId(String supplierCreditEvaluationAuditId)
    {
        return supplierCreditEvaluationInfoMapper.selectSupplierCreditEvaluationInfoBySupplierCreditEvaluationAuditId(supplierCreditEvaluationAuditId);
    }

    /**
     * 查询供应商评价审核管理列表
     * 
     * @param supplierCreditEvaluationInfo 供应商评价审核管理
     * @return 供应商评价审核管理
     */
    @Override
    public List<SupplierCreditEvaluationInfo> selectSupplierCreditEvaluationInfoList(SupplierCreditEvaluationInfo supplierCreditEvaluationInfo)
    {
        return supplierCreditEvaluationInfoMapper.selectSupplierCreditEvaluationInfoList(supplierCreditEvaluationInfo);
    }

    /**
     * 新增供应商评价审核管理
     * 
     * @param supplierCreditEvaluationInfo 供应商评价审核管理
     * @return 结果
     */
    @Override
    public int insertSupplierCreditEvaluationInfo(SupplierCreditEvaluationInfo supplierCreditEvaluationInfo)
    {
        return supplierCreditEvaluationInfoMapper.insertSupplierCreditEvaluationInfo(supplierCreditEvaluationInfo);
    }

    /**
     * 修改供应商评价审核管理
     * 
     * @param supplierCreditEvaluationInfo 供应商评价审核管理
     * @return 结果
     */
    @Override
    public int updateSupplierCreditEvaluationInfo(SupplierCreditEvaluationInfo supplierCreditEvaluationInfo)
    {
        return supplierCreditEvaluationInfoMapper.updateSupplierCreditEvaluationInfo(supplierCreditEvaluationInfo);
    }

    /**
     * 批量删除供应商评价审核管理
     * 
     * @param supplierCreditEvaluationAuditIds 需要删除的供应商评价审核管理主键
     * @return 结果
     */
    @Override
    public int deleteSupplierCreditEvaluationInfoBySupplierCreditEvaluationAuditIds(String supplierCreditEvaluationAuditIds)
    {
        return supplierCreditEvaluationInfoMapper.deleteSupplierCreditEvaluationInfoBySupplierCreditEvaluationAuditIds(Convert.toStrArray(supplierCreditEvaluationAuditIds));
    }

    /**
     * 删除供应商评价审核管理信息
     * 
     * @param supplierCreditEvaluationAuditId 供应商评价审核管理主键
     * @return 结果
     */
    @Override
    public int deleteSupplierCreditEvaluationInfoBySupplierCreditEvaluationAuditId(String supplierCreditEvaluationAuditId)
    {
        return supplierCreditEvaluationInfoMapper.deleteSupplierCreditEvaluationInfoBySupplierCreditEvaluationAuditId(supplierCreditEvaluationAuditId);
    }
}
