package com.cps.basis.service.impl;

import com.cps.basis.domain.BasisCarriers;
import com.cps.basis.domain.BasisWarehouse;
import com.cps.basis.enums.WarehouseType;
import com.cps.basis.mapper.BasisCarriersMapper;
import com.cps.basis.service.IBasisCarriersService;
import com.cps.basis.service.IBasisWarehouseService;
import com.cps.common.constant.Constants;
import com.cps.common.core.text.Convert;
import com.cps.common.enums.Status;
import com.cps.common.utils.DateUtils;
import com.cps.common.utils.ShiroUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * 承运商管理Service业务层处理
 *
 * @author miki
 * @date 2021-05-20
 */
@Service
public class BasisCarriersServiceImpl implements IBasisCarriersService {
    @Autowired
    private BasisCarriersMapper basisCarriersMapper;

    @Autowired
    private IBasisWarehouseService basisWarehouseService;

    /**
     * 查询承运商管理
     *
     * @param id 承运商管理ID
     * @return 承运商管理
     */
    @Override
    public BasisCarriers selectBasisCarriersById(Long id) {
        return basisCarriersMapper.selectBasisCarriersById(id);
    }

    /**
     * 查询承运商管理列表
     *
     * @param basisCarriers 承运商管理
     * @return 承运商管理
     */
    @Override
    public List<BasisCarriers> selectBasisCarriersList(BasisCarriers basisCarriers) {
        return basisCarriersMapper.selectBasisCarriersList(basisCarriers);
    }

    /**
     * 新增承运商管理
     *
     * @param basisCarriers 承运商管理
     * @return 结果
     */
    @Override
    @Transactional
    public int insertBasisCarriers(BasisCarriers basisCarriers) {
        int result = 0;
        BasisWarehouse basisWarehouse = new BasisWarehouse();
        basisWarehouse.setWarehouseType(WarehouseType.CARRIERS.getCode());
        basisWarehouse.setDeptId(basisCarriers.getDeptId());
        basisWarehouse.setCreateBy(basisCarriers.getCreateBy());
        result = basisWarehouseService.insertBasisWarehouse(basisWarehouse);
        basisCarriers.setWarehouseId(basisWarehouse.getId());
        basisCarriers.setCreateTime(DateUtils.getNowDate());
        result = basisCarriersMapper.insertBasisCarriers(basisCarriers);
        return result;
    }

    /**
     * 修改承运商管理
     *
     * @param basisCarriers 承运商管理
     * @return 结果
     */
    @Override
    public int updateBasisCarriers(BasisCarriers basisCarriers) {
        basisCarriers.setUpdateTime(DateUtils.getNowDate());
        return basisCarriersMapper.updateBasisCarriers(basisCarriers);
    }

    /**
     * 删除承运商管理对象
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    @Transactional
    public int deleteBasisCarriersByIds(String ids) {
        int result = 0;
        Long[] basisCarriersids = Convert.toLongArray(ids);
        for (Long basisCarriersid : basisCarriersids) {
            BasisCarriers basisCarriers = new BasisCarriers();
            basisCarriers.setId(basisCarriersid);
            basisCarriers.setDelFlag(Status.DELETED.getCode());
            basisCarriers.setUpdateBy(ShiroUtils.getLoginName());
            result = updateBasisCarriers(basisCarriers);
        }
        return result;
    }

    /**
     * 删除承运商管理信息
     *
     * @param id 承运商管理ID
     * @return 结果
     */
    @Override
    public int deleteBasisCarriersById(Long id) {
        return basisCarriersMapper.deleteBasisCarriersById(id);
    }

    @Override
    public String checkCarriersCodeUnique(String carriersCode) {
        int count = basisCarriersMapper.checkCarriersCodeUnique(carriersCode);
        if (count > 0) {
            return Constants.NAME_NOT_UNIQUE;
        }
        return Constants.NAME_UNIQUE;
    }
}
