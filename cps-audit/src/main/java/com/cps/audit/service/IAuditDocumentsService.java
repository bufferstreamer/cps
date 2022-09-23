package com.cps.audit.service;

import com.cps.audit.domain.AuditDocuments;

import java.util.List;

/**
 * 审核单据管理Service接口
 *
 * @author cps
 * @date 2022-08-16
 */
public interface IAuditDocumentsService {
    /**
     * 查询审核单据管理
     *
     * @param checklistId 审核单据管理主键
     * @return 审核单据管理
     */
    public AuditDocuments selectAuditDocumentsByChecklistId(String checklistId);

    /**
     * 查询审核单据管理列表
     *
     * @param auditDocuments 审核单据管理
     * @return 审核单据管理集合
     */
    public List<AuditDocuments> selectAuditDocumentsList(AuditDocuments auditDocuments);

    //根据用户ID查询审核单
    public List<AuditDocuments> selectAuditDocumentsByUserId(Long userId);

    /**
     * 新增审核单据管理
     *
     * @param auditDocuments 审核单据管理
     * @return 结果
     */
    public int insertAuditDocuments(AuditDocuments auditDocuments);

    /**
     * 修改审核单据管理
     *
     * @param auditDocuments 审核单据管理
     * @return 结果
     */
    public int updateAuditDocuments(AuditDocuments auditDocuments);

    /**
     * 批量删除审核单据管理
     *
     * @param checklistIds 需要删除的审核单据管理主键集合
     * @return 结果
     */
    public int deleteAuditDocumentsByChecklistIds(String checklistIds);

    /**
     * 删除审核单据管理信息
     *
     * @param checklistId 审核单据管理主键
     * @return 结果
     */
    public int deleteAuditDocumentsByChecklistId(String checklistId);

    /**
     * 通过用户id查询小商超/供应商是否通过信用评价和营业执照审核
     * @param UserId 用户id
     * @return 结果
     */
    public boolean getUserAuditStatus(long userId);
}
