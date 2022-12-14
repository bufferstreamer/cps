package com.cps.basis.service.impl;

import com.cps.basis.domain.BasisCustomer;
import com.cps.basis.domain.BasisWarehouse;
import com.cps.basis.enums.WarehouseType;
import com.cps.basis.mapper.BasisCustomerMapper;
import com.cps.basis.service.IBasisCustomerService;
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
 * 客户资料Service业务层处理
 *
 * @author miki
 * @date 2021-05-19
 */
@Service
public class BasisCustomerServiceImpl implements IBasisCustomerService {
    @Autowired
    private BasisCustomerMapper basisCustomerMapper;

    @Autowired
    private IBasisWarehouseService basisWarehouseService;

    /**
     * 查询客户资料
     *
     * @param id 客户资料ID
     * @return 客户资料
     */
    @Override
    public BasisCustomer selectBasisCustomerById(Long id) {
        return basisCustomerMapper.selectBasisCustomerById(id);
    }

    /**
     * 查询客户资料列表
     *
     * @param basisCustomer 客户资料
     * @return 客户资料
     */
    @Override
    public List<BasisCustomer> selectBasisCustomerList(BasisCustomer basisCustomer) {
        return basisCustomerMapper.selectBasisCustomerList(basisCustomer);
    }

    /**
     * 新增客户资料
     *
     * @param basisCustomer 客户资料
     * @return 结果
     */
    @Override
    public int insertBasisCustomer(BasisCustomer basisCustomer) {
        int result = 0;
        BasisWarehouse basisWarehouse = new BasisWarehouse();
        basisWarehouse.setWarehouseType(WarehouseType.CUSTOMER.getCode());
        basisWarehouse.setDeptId(basisCustomer.getDeptId());
        basisWarehouse.setCreateBy(basisCustomer.getCreateBy());
        result = basisWarehouseService.insertBasisWarehouse(basisWarehouse);
        basisCustomer.setWarehouseId(basisWarehouse.getId());
        basisCustomer.setCreateTime(DateUtils.getNowDate());
        result = basisCustomerMapper.insertBasisCustomer(basisCustomer);
        return result;
    }

    /**
     * 修改客户资料
     *
     * @param basisCustomer 客户资料
     * @return 结果
     */
    @Override
    public int updateBasisCustomer(BasisCustomer basisCustomer) {
        basisCustomer.setUpdateTime(DateUtils.getNowDate());
        return basisCustomerMapper.updateBasisCustomer(basisCustomer);
    }

    /**
     * 删除客户资料对象
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    @Transactional
    public int deleteBasisCustomerByIds(String ids) {
        int result = 0;
        Long[] customerids = Convert.toLongArray(ids);
        for (Long customerid : customerids) {
            BasisCustomer basisCustomer = new BasisCustomer();
            basisCustomer.setId(customerid);
            basisCustomer.setDelFlag(Status.DELETED.getCode());
            basisCustomer.setUpdateBy(ShiroUtils.getLoginName());
            result = updateBasisCustomer(basisCustomer);
        }
        return result;

    }

    /**
     * 删除客户资料信息
     *
     * @param id 客户资料ID
     * @return 结果
     */
    @Override
    public int deleteBasisCustomerById(Long id) {
        return basisCustomerMapper.deleteBasisCustomerById(id);
    }

    @Override
    public String checkCustomerCodeUnique(String customerCode) {
        int count = basisCustomerMapper.checkCustomerCodeUnique(customerCode);
        if (count > 0) {
            return Constants.NAME_NOT_UNIQUE;
        }
        return Constants.NAME_UNIQUE;
    }
}
