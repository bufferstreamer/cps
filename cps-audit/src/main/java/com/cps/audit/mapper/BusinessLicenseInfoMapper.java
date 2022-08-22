package com.cps.audit.mapper;

import java.util.List;
import com.cps.audit.domain.BusinessLicenseInfo;

/**
 * 小商超审核管理Mapper接口
 * 
 * @author cps
 * @date 2022-08-16
 */
public interface BusinessLicenseInfoMapper 
{
    /**
     * 查询小商超审核管理
     * 
     * @param businessAuditDocumentId 小商超审核管理主键
     * @return 小商超审核管理
     */
    public BusinessLicenseInfo selectBusinessLicenseInfoByBusinessAuditDocumentId(String businessAuditDocumentId);

    /**
     * 查询小商超审核管理列表
     * 
     * @param businessLicenseInfo 小商超审核管理
     * @return 小商超审核管理集合
     */
    public List<BusinessLicenseInfo> selectBusinessLicenseInfoList(BusinessLicenseInfo businessLicenseInfo);

    /**
     * 新增小商超审核管理
     * 
     * @param businessLicenseInfo 小商超审核管理
     * @return 结果
     */
    public int insertBusinessLicenseInfo(BusinessLicenseInfo businessLicenseInfo);

    /**
     * 修改小商超审核管理
     * 
     * @param businessLicenseInfo 小商超审核管理
     * @return 结果
     */
    public int updateBusinessLicenseInfo(BusinessLicenseInfo businessLicenseInfo);

    /**
     * 删除小商超审核管理
     * 
     * @param businessAuditDocumentId 小商超审核管理主键
     * @return 结果
     */
    public int deleteBusinessLicenseInfoByBusinessAuditDocumentId(String businessAuditDocumentId);

    /**
     * 批量删除小商超审核管理
     * 
     * @param businessAuditDocumentIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteBusinessLicenseInfoByBusinessAuditDocumentIds(String[] businessAuditDocumentIds);
}
