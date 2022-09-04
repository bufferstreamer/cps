package com.cps.audit.service;

import java.util.List;
import com.cps.audit.domain.BusinessCreditEvaluationInfo;

/**
 * 小商超信用评价审核管理Service接口
 * 
 * @author cps
 * @date 2022-08-16
 */
public interface IBusinessCreditEvaluationInfoService 
{
    /**
     * 查询小商超信用评价审核管理
     * 
     * @param businessCreditEvaluationAuditId 小商超信用评价审核管理主键
     * @return 小商超信用评价审核管理
     */
    public BusinessCreditEvaluationInfo selectBusinessCreditEvaluationInfoByBusinessCreditEvaluationAuditId(String businessCreditEvaluationAuditId);

    public BusinessCreditEvaluationInfo selectBusinessCreditEvaluationInfoChecklistId(String checklistId);

    /**
     * 查询小商超信用评价审核管理列表
     * 
     * @param businessCreditEvaluationInfo 小商超信用评价审核管理
     * @return 小商超信用评价审核管理集合
     */
    public List<BusinessCreditEvaluationInfo> selectBusinessCreditEvaluationInfoList(BusinessCreditEvaluationInfo businessCreditEvaluationInfo);

    /**
     * 新增小商超信用评价审核管理
     * 
     * @param businessCreditEvaluationInfo 小商超信用评价审核管理
     * @return 结果
     */
    public int insertBusinessCreditEvaluationInfo(BusinessCreditEvaluationInfo businessCreditEvaluationInfo);

    /**
     * 修改小商超信用评价审核管理
     * 
     * @param businessCreditEvaluationInfo 小商超信用评价审核管理
     * @return 结果
     */
    public int updateBusinessCreditEvaluationInfo(BusinessCreditEvaluationInfo businessCreditEvaluationInfo);

    /**
     * 批量删除小商超信用评价审核管理
     * 
     * @param businessCreditEvaluationAuditIds 需要删除的小商超信用评价审核管理主键集合
     * @return 结果
     */
    public int deleteBusinessCreditEvaluationInfoByBusinessCreditEvaluationAuditIds(String businessCreditEvaluationAuditIds);

    /**
     * 删除小商超信用评价审核管理信息
     * 
     * @param businessCreditEvaluationAuditId 小商超信用评价审核管理主键
     * @return 结果
     */
    public int deleteBusinessCreditEvaluationInfoByBusinessCreditEvaluationAuditId(String businessCreditEvaluationAuditId);
}
