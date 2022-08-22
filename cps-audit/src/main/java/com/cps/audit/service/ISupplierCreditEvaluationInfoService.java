package com.cps.audit.service;

import java.util.List;
import com.cps.audit.domain.SupplierCreditEvaluationInfo;

/**
 * 供应商评价审核管理Service接口
 * 
 * @author cps
 * @date 2022-08-16
 */
public interface ISupplierCreditEvaluationInfoService 
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
     * 批量删除供应商评价审核管理
     * 
     * @param supplierCreditEvaluationAuditIds 需要删除的供应商评价审核管理主键集合
     * @return 结果
     */
    public int deleteSupplierCreditEvaluationInfoBySupplierCreditEvaluationAuditIds(String supplierCreditEvaluationAuditIds);

    /**
     * 删除供应商评价审核管理信息
     * 
     * @param supplierCreditEvaluationAuditId 供应商评价审核管理主键
     * @return 结果
     */
    public int deleteSupplierCreditEvaluationInfoBySupplierCreditEvaluationAuditId(String supplierCreditEvaluationAuditId);
}
