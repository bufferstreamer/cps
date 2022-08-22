package com.cps.audit.mapper;

import java.util.List;
import com.cps.audit.domain.SupplierCreditEvaluationInfo;

/**
 * 供应商评价审核管理Mapper接口
 * 
 * @author cps
 * @date 2022-08-16
 */
public interface SupplierCreditEvaluationInfoMapper 
{
    /**
     * 查询供应商评价审核管理
     * 
     * @param supplierCreditEvaluationAuditId 供应商评价审核管理主键
     * @return 供应商评价审核管理
     */
    public SupplierCreditEvaluationInfo selectSupplierCreditEvaluationInfoBySupplierCreditEvaluationAuditId(String supplierCreditEvaluationAuditId);

    /**
     * 查询供应商评价审核管理列表
     * 
     * @param supplierCreditEvaluationInfo 供应商评价审核管理
     * @return 供应商评价审核管理集合
     */
    public List<SupplierCreditEvaluationInfo> selectSupplierCreditEvaluationInfoList(SupplierCreditEvaluationInfo supplierCreditEvaluationInfo);

    /**
     * 新增供应商评价审核管理
     * 
     * @param supplierCreditEvaluationInfo 供应商评价审核管理
     * @return 结果
     */
    public int insertSupplierCreditEvaluationInfo(SupplierCreditEvaluationInfo supplierCreditEvaluationInfo);

    /**
     * 修改供应商评价审核管理
     * 
     * @param supplierCreditEvaluationInfo 供应商评价审核管理
     * @return 结果
     */
    public int updateSupplierCreditEvaluationInfo(SupplierCreditEvaluationInfo supplierCreditEvaluationInfo);

    /**
     * 删除供应商评价审核管理
     * 
     * @param supplierCreditEvaluationAuditId 供应商评价审核管理主键
     * @return 结果
     */
    public int deleteSupplierCreditEvaluationInfoBySupplierCreditEvaluationAuditId(String supplierCreditEvaluationAuditId);

    /**
     * 批量删除供应商评价审核管理
     * 
     * @param supplierCreditEvaluationAuditIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteSupplierCreditEvaluationInfoBySupplierCreditEvaluationAuditIds(String[] supplierCreditEvaluationAuditIds);
}
