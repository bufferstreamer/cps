package com.cps.basis.service;

import com.cps.basis.domain.BasisDiscountPermission;
import com.cps.basis.vo.BasisDiscountPermissionVo;

import java.util.List;

/**
 * 折扣权限设定Service接口
 *
 * @author miki
 * @date 2021-06-15
 */
public interface IBasisDiscountPermissionService {
    /**
     * 查询折扣权限设定
     *
     * @param id 折扣权限设定ID
     * @return 折扣权限设定
     */
    public BasisDiscountPermission selectBasisDiscountPermissionById(Long id);

    /**
     * 查询折扣权限设定列表
     *
     * @param basisDiscountPermission 折扣权限设定
     * @return 折扣权限设定集合
     */
    public List<BasisDiscountPermission> selectBasisDiscountPermissionList(BasisDiscountPermission basisDiscountPermission);

    /**
     * 查询折扣权限设定列表Vo
     *
     * @param basisDiscountPermission 折扣权限设定
     * @return 折扣权限设定集合
     */
    public List<BasisDiscountPermissionVo> selectBasisDiscountPermissionListVo(BasisDiscountPermission basisDiscountPermission);

    /**
     * 新增折扣权限设定
     *
     * @param basisDiscountPermission 折扣权限设定
     * @return 结果
     */
    public int insertBasisDiscountPermission(BasisDiscountPermission basisDiscountPermission);

    /**
     * 修改折扣权限设定
     *
     * @param basisDiscountPermission 折扣权限设定
     * @return 结果
     */
    public int updateBasisDiscountPermission(BasisDiscountPermission basisDiscountPermission);

    /**
     * 批量删除折扣权限设定
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteBasisDiscountPermissionByIds(String ids);

    /**
     * 删除折扣权限设定信息
     *
     * @param id 折扣权限设定ID
     * @return 结果
     */
    public int deleteBasisDiscountPermissionById(Long id);

    /**
     * 查询折扣权限设定
     *
     * @param userId 用户主键ID
     * @return 折扣权限设定
     */
    public BasisDiscountPermission selectBasisDiscountPermissionByUserId(Long userId);
}
