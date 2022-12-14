package com.cps.basis.mapper;

import com.cps.basis.domain.BasisWarehouse;

import java.util.List;

/**
 * 单位关联Mapper接口
 *
 * @author miki
 * @date 2021-06-11
 */
public interface BasisWarehouseMapper {
    /**
     * 查询单位关联
     *
     * @param id 单位关联ID
     * @return 单位关联
     */
    public BasisWarehouse selectBasisWarehouseById(Long id);

    /**
     * 查询单位关联列表
     *
     * @param basisWarehouse 单位关联
     * @return 单位关联集合
     */
    public List<BasisWarehouse> selectBasisWarehouseList(BasisWarehouse basisWarehouse);

    /**
     * 新增单位关联
     *
     * @param basisWarehouse 单位关联
     * @return 结果
     */
    public int insertBasisWarehouse(BasisWarehouse basisWarehouse);

    /**
     * 修改单位关联
     *
     * @param basisWarehouse 单位关联
     * @return 结果
     */
    public int updateBasisWarehouse(BasisWarehouse basisWarehouse);

    /**
     * 删除单位关联
     *
     * @param id 单位关联ID
     * @return 结果
     */
    public int deleteBasisWarehouseById(Long id);

    /**
     * 批量删除单位关联
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteBasisWarehouseByIds(String[] ids);
}
