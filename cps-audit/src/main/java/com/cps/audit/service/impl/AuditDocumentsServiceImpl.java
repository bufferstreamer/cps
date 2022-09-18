package com.cps.audit.service.impl;

import com.cps.audit.domain.AuditDocuments;
import com.cps.audit.mapper.AuditDocumentsMapper;
import com.cps.audit.service.IAuditDocumentsService;
import com.cps.common.core.text.Convert;
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
}
