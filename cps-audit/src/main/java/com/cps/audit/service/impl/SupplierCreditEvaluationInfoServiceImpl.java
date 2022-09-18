package com.cps.audit.service.impl;

import com.cps.audit.domain.AuditDocuments;
import com.cps.audit.domain.SupplierCreditEvaluationInfo;
import com.cps.audit.mapper.AuditDocumentsMapper;
import com.cps.audit.mapper.SupplierCreditEvaluationInfoMapper;
import com.cps.audit.service.ISupplierCreditEvaluationInfoService;
import com.cps.common.core.text.Convert;
import com.cps.common.utils.ShiroUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 供应商评价审核管理Service业务层处理
 *
 * @author cps
 * @date 2022-08-16
 */
@Service
public class SupplierCreditEvaluationInfoServiceImpl implements ISupplierCreditEvaluationInfoService {
    @Autowired
    private SupplierCreditEvaluationInfoMapper supplierCreditEvaluationInfoMapper;

    @Autowired
    private AuditDocumentsMapper auditDocumentsMapper;

    /**
     * 查询供应商评价审核管理
     *
     * @param supplierCreditEvaluationAuditId 供应商评价审核管理主键
     * @return 供应商评价审核管理
     */
    @Override
    public SupplierCreditEvaluationInfo selectSupplierCreditEvaluationInfoBySupplierCreditEvaluationAuditId(String supplierCreditEvaluationAuditId) {
        return supplierCreditEvaluationInfoMapper.selectSupplierCreditEvaluationInfoBySupplierCreditEvaluationAuditId(supplierCreditEvaluationAuditId);
    }

    @Override
    public SupplierCreditEvaluationInfo selectSupplierCreditEvaluationInfoByChecklistId(String checklistId) {
        return supplierCreditEvaluationInfoMapper.selectSupplierCreditEvaluationInfoByChecklistId(checklistId);
    }

    /**
     * 查询供应商评价审核管理列表
     *
     * @param supplierCreditEvaluationInfo 供应商评价审核管理
     * @return 供应商评价审核管理
     */
    @Override
    public List<SupplierCreditEvaluationInfo> selectSupplierCreditEvaluationInfoList(SupplierCreditEvaluationInfo supplierCreditEvaluationInfo) {
        return supplierCreditEvaluationInfoMapper.selectSupplierCreditEvaluationInfoList(supplierCreditEvaluationInfo);
    }

    /**
     * 新增供应商评价审核管理
     *
     * @param supplierCreditEvaluationInfo 供应商评价审核管理
     * @return 结果
     */
    @Override
    public int insertSupplierCreditEvaluationInfo(SupplierCreditEvaluationInfo supplierCreditEvaluationInfo) {
        AuditDocuments auditDocuments = new AuditDocuments();
        auditDocuments.setChecklistId(supplierCreditEvaluationInfo.getChecklistId());
        auditDocuments.setAuditType(String.valueOf(supplierCreditEvaluationInfo.getChecklistId().charAt(0)));
        auditDocuments.setCreateDatetime(supplierCreditEvaluationInfo.getCreateDatetime());
        auditDocuments.setUpdateDatetime(supplierCreditEvaluationInfo.getCreateDatetime());
        auditDocuments.setAdminId(1L);//待定
        auditDocuments.setUserId(ShiroUtils.getUserId());
        int res = 0;
        try {
            res = supplierCreditEvaluationInfoMapper.insertSupplierCreditEvaluationInfo(supplierCreditEvaluationInfo);
            auditDocumentsMapper.insertAuditDocuments(auditDocuments);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return res;
    }

    /**
     * 修改供应商评价审核管理
     *
     * @param supplierCreditEvaluationInfo 供应商评价审核管理
     * @return 结果
     */
    @Override
    public int updateSupplierCreditEvaluationInfo(SupplierCreditEvaluationInfo supplierCreditEvaluationInfo) {
        return supplierCreditEvaluationInfoMapper.updateSupplierCreditEvaluationInfo(supplierCreditEvaluationInfo);
    }

    /**
     * 批量删除供应商评价审核管理
     *
     * @param supplierCreditEvaluationAuditIds 需要删除的供应商评价审核管理主键
     * @return 结果
     */
    @Override
    public int deleteSupplierCreditEvaluationInfoBySupplierCreditEvaluationAuditIds(String supplierCreditEvaluationAuditIds) {
        return supplierCreditEvaluationInfoMapper.deleteSupplierCreditEvaluationInfoBySupplierCreditEvaluationAuditIds(Convert.toStrArray(supplierCreditEvaluationAuditIds));
    }

    /**
     * 删除供应商评价审核管理信息
     *
     * @param supplierCreditEvaluationAuditId 供应商评价审核管理主键
     * @return 结果
     */
    @Override
    public int deleteSupplierCreditEvaluationInfoBySupplierCreditEvaluationAuditId(String supplierCreditEvaluationAuditId) {
        return supplierCreditEvaluationInfoMapper.deleteSupplierCreditEvaluationInfoBySupplierCreditEvaluationAuditId(supplierCreditEvaluationAuditId);
    }
}
