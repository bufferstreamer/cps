package com.cps.audit.service.impl;

import java.util.List;

import com.cps.audit.domain.AuditDocuments;
import com.cps.audit.mapper.AuditDocumentsMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.cps.audit.mapper.BusinessCreditEvaluationInfoMapper;
import com.cps.audit.domain.BusinessCreditEvaluationInfo;
import com.cps.audit.service.IBusinessCreditEvaluationInfoService;
import com.cps.common.core.text.Convert;

/**
 * 小商超信用评价审核管理Service业务层处理
 * 
 * @author cps
 * @date 2022-08-16
 */
@Service
public class BusinessCreditEvaluationInfoServiceImpl implements IBusinessCreditEvaluationInfoService 
{
    @Autowired
    private BusinessCreditEvaluationInfoMapper businessCreditEvaluationInfoMapper;

    @Autowired
    private AuditDocumentsMapper auditDocumentsMapper;

    /**
     * 查询小商超信用评价审核管理
     * 
     * @param businessCreditEvaluationAuditId 小商超信用评价审核管理主键
     * @return 小商超信用评价审核管理
     */
    @Override
    public BusinessCreditEvaluationInfo selectBusinessCreditEvaluationInfoByBusinessCreditEvaluationAuditId(String businessCreditEvaluationAuditId)
    {
        return businessCreditEvaluationInfoMapper.selectBusinessCreditEvaluationInfoByBusinessCreditEvaluationAuditId(businessCreditEvaluationAuditId);
    }

    /**
     * 查询小商超信用评价审核管理列表
     * 
     * @param businessCreditEvaluationInfo 小商超信用评价审核管理
     * @return 小商超信用评价审核管理
     */
    @Override
    public List<BusinessCreditEvaluationInfo> selectBusinessCreditEvaluationInfoList(BusinessCreditEvaluationInfo businessCreditEvaluationInfo)
    {
        return businessCreditEvaluationInfoMapper.selectBusinessCreditEvaluationInfoList(businessCreditEvaluationInfo);
    }

    /**
     * 新增小商超信用评价审核管理
     * 
     * @param businessCreditEvaluationInfo 小商超信用评价审核管理
     * @return 结果
     */
    @Override
    public int insertBusinessCreditEvaluationInfo(BusinessCreditEvaluationInfo businessCreditEvaluationInfo)
    {
        AuditDocuments auditDocuments = new AuditDocuments();
        auditDocuments.setChecklistId(businessCreditEvaluationInfo.getChecklistId());
        auditDocuments.setAuditType(String.valueOf(businessCreditEvaluationInfo.getChecklistId().charAt(0)));
        auditDocuments.setCreateDatetime(businessCreditEvaluationInfo.getCreateDatetime());
        auditDocuments.setUpdateDatetime(businessCreditEvaluationInfo.getCreateDatetime());
        auditDocuments.setAdminId(1L);//待定
        auditDocuments.setUserId(1L);//待定
        int res = 0;
        try{
            res = businessCreditEvaluationInfoMapper.insertBusinessCreditEvaluationInfo(businessCreditEvaluationInfo);
            auditDocumentsMapper.insertAuditDocuments(auditDocuments);
        }catch(Exception e){
            e.printStackTrace();
        }
        return res;
    }

    /**
     * 修改小商超信用评价审核管理
     * 
     * @param businessCreditEvaluationInfo 小商超信用评价审核管理
     * @return 结果
     */
    @Override
    public int updateBusinessCreditEvaluationInfo(BusinessCreditEvaluationInfo businessCreditEvaluationInfo)
    {
        return businessCreditEvaluationInfoMapper.updateBusinessCreditEvaluationInfo(businessCreditEvaluationInfo);
    }

    /**
     * 批量删除小商超信用评价审核管理
     * 
     * @param businessCreditEvaluationAuditIds 需要删除的小商超信用评价审核管理主键
     * @return 结果
     */
    @Override
    public int deleteBusinessCreditEvaluationInfoByBusinessCreditEvaluationAuditIds(String businessCreditEvaluationAuditIds)
    {
        return businessCreditEvaluationInfoMapper.deleteBusinessCreditEvaluationInfoByBusinessCreditEvaluationAuditIds(Convert.toStrArray(businessCreditEvaluationAuditIds));
    }

    /**
     * 删除小商超信用评价审核管理信息
     * 
     * @param businessCreditEvaluationAuditId 小商超信用评价审核管理主键
     * @return 结果
     */
    @Override
    public int deleteBusinessCreditEvaluationInfoByBusinessCreditEvaluationAuditId(String businessCreditEvaluationAuditId)
    {
        return businessCreditEvaluationInfoMapper.deleteBusinessCreditEvaluationInfoByBusinessCreditEvaluationAuditId(businessCreditEvaluationAuditId);
    }
}
