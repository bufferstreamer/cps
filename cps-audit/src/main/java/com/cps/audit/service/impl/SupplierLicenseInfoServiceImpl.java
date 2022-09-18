package com.cps.audit.service.impl;

import com.cps.audit.domain.AuditDocuments;
import com.cps.audit.domain.SupplierLicenseInfo;
import com.cps.audit.mapper.AuditDocumentsMapper;
import com.cps.audit.mapper.SupplierLicenseInfoMapper;
import com.cps.audit.service.ISupplierLicenseInfoService;
import com.cps.common.core.text.Convert;
import com.cps.common.utils.ShiroUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 供应商营业执照审核管理Service业务层处理
 *
 * @author cps
 * @date 2022-08-16
 */
@Service
public class SupplierLicenseInfoServiceImpl implements ISupplierLicenseInfoService {
    @Autowired
    private SupplierLicenseInfoMapper supplierLicenseInfoMapper;

    @Autowired
    private AuditDocumentsMapper auditDocumentsMapper;

    /**
     * 查询供应商营业执照审核管理
     *
     * @param checklistId 供应商营业执照审核管理主键
     * @return 供应商营业执照审核管理
     */
    @Override
    public SupplierLicenseInfo selectSupplierLicenseInfoByChecklistId(String checklistId) {
        return supplierLicenseInfoMapper.selectSupplierLicenseInfoByChecklistId(checklistId);
    }

    /**
     * 查询供应商营业执照审核管理列表
     *
     * @param supplierLicenseInfo 供应商营业执照审核管理
     * @return 供应商营业执照审核管理
     */
    @Override
    public List<SupplierLicenseInfo> selectSupplierLicenseInfoList(SupplierLicenseInfo supplierLicenseInfo) {
        return supplierLicenseInfoMapper.selectSupplierLicenseInfoList(supplierLicenseInfo);
    }

    /**
     * 新增供应商营业执照审核管理
     *
     * @param supplierLicenseInfo 供应商营业执照审核管理
     * @return 结果
     */
    @Override
    public int insertSupplierLicenseInfo(SupplierLicenseInfo supplierLicenseInfo) {
        AuditDocuments auditDocuments = new AuditDocuments();
        auditDocuments.setChecklistId(supplierLicenseInfo.getChecklistId());
        auditDocuments.setAuditType(String.valueOf(supplierLicenseInfo.getChecklistId().charAt(0)));
        auditDocuments.setCreateDatetime(supplierLicenseInfo.getCreateDatetime());
        auditDocuments.setUpdateDatetime(supplierLicenseInfo.getCreateDatetime());
        auditDocuments.setAdminId(1L);//待定
        auditDocuments.setUserId(ShiroUtils.getUserId());
        int res = 0;
        try {
            res = supplierLicenseInfoMapper.insertSupplierLicenseInfo(supplierLicenseInfo);
            auditDocumentsMapper.insertAuditDocuments(auditDocuments);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return res;
    }

    /**
     * 修改供应商营业执照审核管理
     *
     * @param supplierLicenseInfo 供应商营业执照审核管理
     * @return 结果
     */
    @Override
    public int updateSupplierLicenseInfo(SupplierLicenseInfo supplierLicenseInfo) {
        return supplierLicenseInfoMapper.updateSupplierLicenseInfo(supplierLicenseInfo);
    }

    /**
     * 批量删除供应商营业执照审核管理
     *
     * @param checklistIds 需要删除的供应商营业执照审核管理主键
     * @return 结果
     */
    @Override
    public int deleteSupplierLicenseInfoByChecklistIds(String checklistIds) {
        return supplierLicenseInfoMapper.deleteSupplierLicenseInfoByChecklistIds(Convert.toStrArray(checklistIds));
    }

    /**
     * 删除供应商营业执照审核管理信息
     *
     * @param checklistId 供应商营业执照审核管理主键
     * @return 结果
     */
    @Override
    public int deleteSupplierLicenseInfoByChecklistId(String checklistId) {
        return supplierLicenseInfoMapper.deleteSupplierLicenseInfoByChecklistId(checklistId);
    }
}
