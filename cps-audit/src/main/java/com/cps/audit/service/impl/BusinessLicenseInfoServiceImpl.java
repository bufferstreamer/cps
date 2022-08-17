package com.cps.audit.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.cps.audit.mapper.BusinessLicenseInfoMapper;
import com.cps.audit.domain.BusinessLicenseInfo;
import com.cps.audit.service.IBusinessLicenseInfoService;
import com.cps.common.core.text.Convert;

/**
 * 小商超审核管理Service业务层处理
 * 
 * @author cps
 * @date 2022-08-16
 */
@Service
public class BusinessLicenseInfoServiceImpl implements IBusinessLicenseInfoService 
{
    @Autowired
    private BusinessLicenseInfoMapper businessLicenseInfoMapper;

    /**
     * 查询小商超审核管理
     * 
     * @param businessAuditDocumentId 小商超审核管理主键
     * @return 小商超审核管理
     */
    @Override
    public BusinessLicenseInfo selectBusinessLicenseInfoByBusinessAuditDocumentId(String businessAuditDocumentId)
    {
        return businessLicenseInfoMapper.selectBusinessLicenseInfoByBusinessAuditDocumentId(businessAuditDocumentId);
    }

    /**
     * 查询小商超审核管理列表
     * 
     * @param businessLicenseInfo 小商超审核管理
     * @return 小商超审核管理
     */
    @Override
    public List<BusinessLicenseInfo> selectBusinessLicenseInfoList(BusinessLicenseInfo businessLicenseInfo)
    {
        return businessLicenseInfoMapper.selectBusinessLicenseInfoList(businessLicenseInfo);
    }

    /**
     * 新增小商超审核管理
     * 
     * @param businessLicenseInfo 小商超审核管理
     * @return 结果
     */
    @Override
    public int insertBusinessLicenseInfo(BusinessLicenseInfo businessLicenseInfo)
    {
        return businessLicenseInfoMapper.insertBusinessLicenseInfo(businessLicenseInfo);
    }

    /**
     * 修改小商超审核管理
     * 
     * @param businessLicenseInfo 小商超审核管理
     * @return 结果
     */
    @Override
    public int updateBusinessLicenseInfo(BusinessLicenseInfo businessLicenseInfo)
    {
        return businessLicenseInfoMapper.updateBusinessLicenseInfo(businessLicenseInfo);
    }

    /**
     * 批量删除小商超审核管理
     * 
     * @param businessAuditDocumentIds 需要删除的小商超审核管理主键
     * @return 结果
     */
    @Override
    public int deleteBusinessLicenseInfoByBusinessAuditDocumentIds(String businessAuditDocumentIds)
    {
        return businessLicenseInfoMapper.deleteBusinessLicenseInfoByBusinessAuditDocumentIds(Convert.toStrArray(businessAuditDocumentIds));
    }

    /**
     * 删除小商超审核管理信息
     * 
     * @param businessAuditDocumentId 小商超审核管理主键
     * @return 结果
     */
    @Override
    public int deleteBusinessLicenseInfoByBusinessAuditDocumentId(String businessAuditDocumentId)
    {
        return businessLicenseInfoMapper.deleteBusinessLicenseInfoByBusinessAuditDocumentId(businessAuditDocumentId);
    }
}
