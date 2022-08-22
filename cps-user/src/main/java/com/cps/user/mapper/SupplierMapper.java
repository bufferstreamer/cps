package com.cps.user.mapper;

import java.util.List;
import com.cps.user.domain.Supplier;

/**
 * 供应商角色Mapper接口
 * 
 * @author cps
 * @date 2022-08-18
 */
public interface SupplierMapper 
{
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
     * 删除供应商角色
     * 
     * @param supplyId 供应商角色主键
     * @return 结果
     */
    public int deleteSupplierBySupplyId(Long supplyId);

    /**
     * 批量删除供应商角色
     * 
     * @param supplyIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteSupplierBySupplyIds(String[] supplyIds);
}
