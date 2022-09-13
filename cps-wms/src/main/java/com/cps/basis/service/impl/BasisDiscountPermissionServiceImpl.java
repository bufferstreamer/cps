package com.cps.basis.service.impl;

import com.cps.basis.domain.BasisDiscountPermission;
import com.cps.basis.mapper.BasisDiscountPermissionMapper;
import com.cps.basis.service.IBasisDiscountPermissionService;
import com.cps.basis.vo.BasisDiscountPermissionVo;
import com.cps.common.core.text.Convert;
import com.cps.common.enums.Status;
import com.cps.common.utils.DateUtils;
import com.cps.common.utils.ShiroUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * 折扣权限设定Service业务层处理
 * 
 * @author miki
 * @date 2021-06-15
 */
@Service
public class BasisDiscountPermissionServiceImpl implements IBasisDiscountPermissionService 
{
    @Autowired
    private BasisDiscountPermissionMapper basisDiscountPermissionMapper;

    /**
     * 查询折扣权限设定
     * 
     * @param id 折扣权限设定ID
     * @return 折扣权限设定
     */
    @Override
    public BasisDiscountPermission selectBasisDiscountPermissionById(Long id)
    {
        return basisDiscountPermissionMapper.selectBasisDiscountPermissionById(id);
    }

    /**
     * 查询折扣权限设定列表
     * 
     * @param basisDiscountPermission 折扣权限设定
     * @return 折扣权限设定
     */
    @Override
    public List<BasisDiscountPermission> selectBasisDiscountPermissionList(BasisDiscountPermission basisDiscountPermission)
    {
        return basisDiscountPermissionMapper.selectBasisDiscountPermissionList(basisDiscountPermission);
    }

    /**
     * 查询折扣权限设定列表
     *
     * @param basisDiscountPermission 折扣权限设定
     * @return 折扣权限设定
     */
    @Override
    public List<BasisDiscountPermissionVo> selectBasisDiscountPermissionListVo(BasisDiscountPermission basisDiscountPermission)
    {
        return basisDiscountPermissionMapper.selectBasisDiscountPermissionListVo(basisDiscountPermission);
    }

    /**
     * 新增折扣权限设定
     * 
     * @param basisDiscountPermission 折扣权限设定
     * @return 结果
     */
    @Override
    public int insertBasisDiscountPermission(BasisDiscountPermission basisDiscountPermission)
    {
        basisDiscountPermission.setCreateTime(DateUtils.getNowDate());
        return basisDiscountPermissionMapper.insertBasisDiscountPermission(basisDiscountPermission);
    }

    /**
     * 修改折扣权限设定
     * 
     * @param basisDiscountPermission 折扣权限设定
     * @return 结果
     */
    @Override
    public int updateBasisDiscountPermission(BasisDiscountPermission basisDiscountPermission)
    {
        basisDiscountPermission.setUpdateTime(DateUtils.getNowDate());
        return basisDiscountPermissionMapper.updateBasisDiscountPermission(basisDiscountPermission);
    }

    /**
     * 删除折扣权限设定对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    @Transactional
    public int deleteBasisDiscountPermissionByIds(String ids)
    {
        int result = 0;
        Long[] basisDiscountPermissionids = Convert.toLongArray(ids);
        for (Long basisDiscountPermissionid:basisDiscountPermissionids ) {
            BasisDiscountPermission basisDiscountPermission = new BasisDiscountPermission();
            basisDiscountPermission.setId(basisDiscountPermissionid);
            basisDiscountPermission.setDelFlag(Status.DELETED.getCode());
            basisDiscountPermission.setUpdateBy(ShiroUtils.getLoginName());
            result = updateBasisDiscountPermission(basisDiscountPermission);
        }
        return result;
    }

    /**
     * 删除折扣权限设定信息
     * 
     * @param id 折扣权限设定ID
     * @return 结果
     */
    @Override
    public int deleteBasisDiscountPermissionById(Long id)
    {
        return basisDiscountPermissionMapper.deleteBasisDiscountPermissionById(id);
    }

    @Override
    public BasisDiscountPermission selectBasisDiscountPermissionByUserId(Long userId) {
        return basisDiscountPermissionMapper.selectBasisDiscountPermissionByUserId(userId);
    }
}
