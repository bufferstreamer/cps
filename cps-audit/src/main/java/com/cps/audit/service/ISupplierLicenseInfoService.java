package com.cps.audit.service;

import java.util.List;
import com.cps.audit.domain.SupplierLicenseInfo;

/**
 * 供应商营业执照审核管理Service接口
 * 
 * @author cps
 * @date 2022-08-16
 */
public interface ISupplierLicenseInfoService 
{
    /**
     * 查询供应商营业执照审核管理
     * 
     * @param checklistId 供应商营业执照审核管理主键
     * @return 供应商营业执照审核管理
     */
    public SupplierLicenseInfo selectSupplierLicenseInfoByChecklistId(String checklistId);

    /**
     * 查询供应商营业执照审核管理列表
     * 
     * @param supplierLicenseInfo 供应商营业执照审核管理
     * @return 供应商营业执照审核管理集合
     */
    public List<SupplierLicenseInfo> selectSupplierLicenseInfoList(SupplierLicenseInfo supplierLicenseInfo);

    /**
     * 新增供应商营业执照审核管理
     * 
     * @param supplierLicenseInfo 供应商营业执照审核管理
     * @return 结果
     */
    public int insertSupplierLicenseInfo(SupplierLicenseInfo supplierLicenseInfo);

    /**
     * 修改供应商营业执照审核管理
     * 
     * @param supplierLicenseInfo 供应商营业执照审核管理
     * @return 结果
     */
    public int updateSupplierLicenseInfo(SupplierLicenseInfo supplierLicenseInfo);

    /**
     * 批量删除供应商营业执照审核管理
     * 
     * @param checklistIds 需要删除的供应商营业执照审核管理主键集合
     * @return 结果
     */
    public int deleteSupplierLicenseInfoByChecklistIds(String checklistIds);

    /**
     * 删除供应商营业执照审核管理信息
     * 
     * @param checklistId 供应商营业执照审核管理主键
     * @return 结果
     */
    public int deleteSupplierLicenseInfoByChecklistId(String checklistId);
}
