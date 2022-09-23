package com.cps.audit.service.impl;

import com.cps.audit.domain.AuditDocuments;
import com.cps.audit.domain.BusinessLicenseInfo;
import com.cps.audit.domain.SupplierLicenseInfo;
import com.cps.audit.mapper.AuditDocumentsMapper;
import com.cps.audit.mapper.BusinessLicenseInfoMapper;
import com.cps.audit.mapper.SupplierLicenseInfoMapper;
import com.cps.audit.service.IAuditDocumentsService;
import com.cps.basis.domain.BasisSupplier;
import com.cps.basis.service.IBasisSupplierService;
import com.cps.common.core.domain.entity.SysUser;
import com.cps.common.core.text.Convert;
import com.cps.common.utils.ShiroUtils;
import com.cps.system.mapper.SysUserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 审核单据管理Service业务层处理
 *
 * @author cps
 * @date 2022-08-16
 */
@Service
public class AuditDocumentsServiceImpl implements IAuditDocumentsService {
    @Autowired
    private AuditDocumentsMapper auditDocumentsMapper;
    @Autowired
    private SupplierLicenseInfoMapper supplierLicenseInfoMapper;
    @Autowired
    private SysUserMapper sysUserMapper;
    @Autowired
    private IBasisSupplierService basisSupplierService;
    @Autowired
    private BusinessLicenseInfoMapper businessLicenseInfoMapper;

    /**
     * 查询审核单据管理
     *
     * @param checklistId 审核单据管理主键
     * @return 审核单据管理
     */
    @Override
    public AuditDocuments selectAuditDocumentsByChecklistId(String checklistId) {
        return auditDocumentsMapper.selectAuditDocumentsByChecklistId(checklistId);
    }

    /**
     * 查询审核单据管理列表
     *
     * @param auditDocuments 审核单据管理
     * @return 审核单据管理
     */
    @Override
    public List<AuditDocuments> selectAuditDocumentsList(AuditDocuments auditDocuments) {
        return auditDocumentsMapper.selectAuditDocumentsList(auditDocuments);
    }

    @Override
    public List<AuditDocuments> selectAuditDocumentsByUserId(Long userId) {
        return auditDocumentsMapper.selectAuditDocumentsByUserId(userId);
    }

    /**
     * 新增审核单据管理
     *
     * @param auditDocuments 审核单据管理
     * @return 结果
     */
    @Override
    public int insertAuditDocuments(AuditDocuments auditDocuments) {
        return auditDocumentsMapper.insertAuditDocuments(auditDocuments);
    }

    /**
     * 修改审核单据管理
     *
     * @param auditDocuments 审核单据管理
     * @return 结果
     */
    @Override
    public int updateAuditDocuments(AuditDocuments auditDocuments) {
        //这里表示在审核通过后在进销存系统中添加有可能向系统发货的客户信息
        if(auditDocuments.getAuditStatus().equals("2")){
            BasisSupplier basisSupplier = new BasisSupplier();
            SysUser sysUser = new SysUser();
            //获取用户id
            sysUser.setUserId(auditDocuments.getUserId());
            //AuditType==1时表示为供应商
            if (auditDocuments.getAuditType().equals("1")){
                System.out.println("正在处理供应商审核单");
                //依据审核单id查询供应商的信息
                SupplierLicenseInfo supplierLicenseInfo = supplierLicenseInfoMapper.selectSupplierLicenseInfoByChecklistId(auditDocuments.getChecklistId());
                if(supplierLicenseInfo!=null){
                    //补全用户信息
                    sysUser.setPhonenumber(supplierLicenseInfo.getOfficePhone());//获得供应商联系方式，获得供应商邮件
                    sysUser.setEmail(supplierLicenseInfo.getContactEmail());
                    //补全供应商管理信息
                    basisSupplier.setSupplierName(supplierLicenseInfo.getCorporateName());
                    basisSupplier.setContactPerson(supplierLicenseInfo.getEmergencyContact());
                    basisSupplier.setTelephone(supplierLicenseInfo.getEmergencyContactPhone());
                    basisSupplier.setAddress(supplierLicenseInfo.getBusinessLicenseAddress());
                    basisSupplier.setEmail(supplierLicenseInfo.getContactEmail());
                }
            }
            if (auditDocuments.getAuditType().equals("2")){
                System.out.println("正在处理小商超审核单");
                BusinessLicenseInfo businessLicenseInfo = businessLicenseInfoMapper.selectBusinessLicenseInfoByBusinessAuditDocumentId(auditDocuments.getChecklistId());
                if(businessLicenseInfo!=null){
                    //补全用户信息
                    sysUser.setPhonenumber(businessLicenseInfo.getContactPhone());//获得供应商联系方式，获得供应商邮件
                    sysUser.setEmail(businessLicenseInfo.getContactEmail());
                    //补全供应商管理信息
                    basisSupplier.setSupplierName(businessLicenseInfo.getBusinessName());
                    basisSupplier.setContactPerson(businessLicenseInfo.getContactPerson());
                    basisSupplier.setTelephone(businessLicenseInfo.getContactPhone());
                    basisSupplier.setAddress(businessLicenseInfo.getBusinessPlace());
                    basisSupplier.setEmail(businessLicenseInfo.getContactEmail());
                }
            }
            //将联系方式和邮件信息存入sys_user
            sysUserMapper.updateUser(sysUser);
            //这里设置部门为100，便于admin查找，后期要根据供应商查询规则修改
            basisSupplier.setDeptId(ShiroUtils.getDeptId());
            basisSupplier.setCreateBy(ShiroUtils.getLoginName());
            basisSupplier.setSupplierCode(String.valueOf(auditDocuments.getUserId()));
            //将审核信息插入值供应商管理表
            basisSupplierService.insertBasisSupplier(basisSupplier);

        }

        return auditDocumentsMapper.updateAuditDocuments(auditDocuments);
    }

    /**
     * 批量删除审核单据管理
     *
     * @param checklistIds 需要删除的审核单据管理主键
     * @return 结果
     */
    @Override
    public int deleteAuditDocumentsByChecklistIds(String checklistIds) {
        return auditDocumentsMapper.deleteAuditDocumentsByChecklistIds(Convert.toStrArray(checklistIds));
    }

    /**
     * 删除审核单据管理信息
     *
     * @param checklistId 审核单据管理主键
     * @return 结果
     */
    @Override
    public int deleteAuditDocumentsByChecklistId(String checklistId) {
        return auditDocumentsMapper.deleteAuditDocumentsByChecklistId(checklistId);
    }

    @Override
    public boolean getUserAuditStatus(long userId) {
        List<AuditDocuments> auditDocumentsList = selectAuditDocumentsByUserId(userId);
        if(auditDocumentsList.size()<2)return false;
        for(AuditDocuments auditDocuments:auditDocumentsList){
            if(auditDocuments.getAuditStatus().equals("1"))return false;
        }
        return true;
    }
}
