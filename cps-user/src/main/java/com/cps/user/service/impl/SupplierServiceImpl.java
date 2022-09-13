package com.cps.user.service.impl;

import com.cps.common.core.text.Convert;
import com.cps.common.enums.UserType;
import com.cps.common.utils.DateUtils;
import com.cps.common.utils.uuid.CpsIdUtils;
import com.cps.user.domain.Supplier;
import com.cps.user.mapper.SupplierMapper;
import com.cps.user.service.ISupplierService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 供应商角色Service业务层处理
 *
 * @author cps
 * @date 2022-08-18
 */
@Service
public class SupplierServiceImpl implements ISupplierService {
    @Autowired
    private SupplierMapper supplierMapper;

    /**
     * 查询供应商角色
     *
     * @param supplyId 供应商角色主键
     * @return 供应商角色
     */
    @Override
    public Supplier selectSupplierBySupplyId(Long supplyId) {
        return supplierMapper.selectSupplierBySupplyId(supplyId);
    }

    /**
     * 查询供应商角色列表
     *
     * @param supplier 供应商角色
     * @return 供应商角色
     */
    @Override
    public List<Supplier> selectSupplierList(Supplier supplier) {
        return supplierMapper.selectSupplierList(supplier);
    }

    /**
     * 新增供应商角色
     *
     * @param supplier 供应商角色
     * @return 结果
     */
    @Override
    public int insertSupplier(Supplier supplier) {
        supplier.setSupplyId(CpsIdUtils.GetLongID(UserType.Supply));
        supplier.setRegisterTime(DateUtils.getNowDate());
        supplier.setSupplyState("0");
        return supplierMapper.insertSupplier(supplier);
    }

    /**
     * 修改供应商角色
     *
     * @param supplier 供应商角色
     * @return 结果
     */
    @Override
    public int updateSupplier(Supplier supplier) {
        return supplierMapper.updateSupplier(supplier);
    }

    /**
     * 批量删除供应商角色
     *
     * @param supplyIds 需要删除的供应商角色主键
     * @return 结果
     */
    @Override
    public int deleteSupplierBySupplyIds(String supplyIds) {
        return supplierMapper.deleteSupplierBySupplyIds(Convert.toStrArray(supplyIds));
    }

    /**
     * 删除供应商角色信息
     *
     * @param supplyId 供应商角色主键
     * @return 结果
     */
    @Override
    public int deleteSupplierBySupplyId(Long supplyId) {
        return supplierMapper.deleteSupplierBySupplyId(supplyId);
    }
}
