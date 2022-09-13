package com.cps.user.service;

import com.cps.user.domain.Supplier;

import java.util.List;

/**
 * 供应商角色Service接口
 *
 * @author cps
 * @date 2022-08-18
 */
public interface ISupplierService {
    /**
     * 查询供应商角色
     *
     * @param supplyId 供应商角色主键
     * @return 供应商角色
     */
    public Supplier selectSupplierBySupplyId(Long supplyId);

    /**
     * 查询供应商角色列表
     *
     * @param supplier 供应商角色
     * @return 供应商角色集合
     */
    public List<Supplier> selectSupplierList(Supplier supplier);

    /**
     * 新增供应商角色
     *
     * @param supplier 供应商角色
     * @return 结果
     */
    public int insertSupplier(Supplier supplier);

    /**
     * 修改供应商角色
     *
     * @param supplier 供应商角色
     * @return 结果
     */
    public int updateSupplier(Supplier supplier);

    /**
     * 批量删除供应商角色
     *
     * @param supplyIds 需要删除的供应商角色主键集合
     * @return 结果
     */
    public int deleteSupplierBySupplyIds(String supplyIds);

    /**
     * 删除供应商角色信息
     *
     * @param supplyId 供应商角色主键
     * @return 结果
     */
    public int deleteSupplierBySupplyId(Long supplyId);
}
