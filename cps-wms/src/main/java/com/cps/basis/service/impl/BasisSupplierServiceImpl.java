package com.cps.basis.service.impl;

import com.cps.basis.domain.BasisSupplier;
import com.cps.basis.domain.BasisWarehouse;
import com.cps.basis.enums.WarehouseType;
import com.cps.basis.mapper.BasisSupplierMapper;
import com.cps.basis.service.IBasisSupplierService;
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
 * 供应商管理Service业务层处理
 *
 * @author miki
 * @date 2021-05-20
 */
@Service
public class BasisSupplierServiceImpl implements IBasisSupplierService {
    @Autowired
    private BasisSupplierMapper basisSupplierMapper;

    @Autowired
    private IBasisWarehouseService basisWarehouseService;

    /**
     * 查询供应商管理
     *
     * @param id 供应商管理ID
     * @return 供应商管理
     */
    @Override
    public BasisSupplier selectBasisSupplierById(Long id) {
        return basisSupplierMapper.selectBasisSupplierById(id);
    }

    /**
     * 查询供应商管理列表
     *
     * @param basisSupplier 供应商管理
     * @return 供应商管理
     */
    @Override
    public List<BasisSupplier> selectBasisSupplierList(BasisSupplier basisSupplier) {
        return basisSupplierMapper.selectBasisSupplierList(basisSupplier);
    }

    /**
     * 新增供应商管理
     *
     * @param basisSupplier 供应商管理
     * @return 结果
     */
    @Override
    public int insertBasisSupplier(BasisSupplier basisSupplier) {
        int result = 0;
        BasisWarehouse basisWarehouse = new BasisWarehouse();
        basisWarehouse.setWarehouseType(WarehouseType.SUPPLIER.getCode());
        basisWarehouse.setDeptId(basisSupplier.getDeptId());
        basisWarehouse.setCreateBy(basisSupplier.getCreateBy());
        result = basisWarehouseService.insertBasisWarehouse(basisWarehouse);
        basisSupplier.setWarehouseId(basisWarehouse.getId());
        basisSupplier.setCreateTime(DateUtils.getNowDate());
        result = basisSupplierMapper.insertBasisSupplier(basisSupplier);
        return result;
    }

    /**
     * 修改供应商管理
     *
     * @param basisSupplier 供应商管理
     * @return 结果
     */
    @Override
    public int updateBasisSupplier(BasisSupplier basisSupplier) {
        basisSupplier.setUpdateTime(DateUtils.getNowDate());
        return basisSupplierMapper.updateBasisSupplier(basisSupplier);
    }

    /**
     * 删除供应商管理对象
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    @Transactional
    public int deleteBasisSupplierByIds(String ids) {
        int result = 0;
        Long[] basisSupplierids = Convert.toLongArray(ids);
        for (Long basisSupplierid : basisSupplierids) {
            BasisSupplier basisSupplier = new BasisSupplier();
            basisSupplier.setId(basisSupplierid);
            basisSupplier.setDelFlag(Status.DELETED.getCode());
            basisSupplier.setUpdateBy(ShiroUtils.getLoginName());
            result = updateBasisSupplier(basisSupplier);
        }
        return result;
    }

    /**
     * 删除供应商管理信息
     *
     * @param id 供应商管理ID
     * @return 结果
     */
    @Override
    public int deleteBasisSupplierById(Long id) {
        return basisSupplierMapper.deleteBasisSupplierById(id);
    }

    @Override
    public String checkSupplierCodeUnique(String supplierCode) {
        int count = basisSupplierMapper.checkSupplierCodeUnique(supplierCode);
        if (count > 0) {
            return Constants.NAME_NOT_UNIQUE;
        }
        return Constants.NAME_UNIQUE;
    }
}
