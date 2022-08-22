package com.cps.cp.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.cps.cp.mapper.ContractMapper;
import com.cps.cp.domain.Contract;
import com.cps.cp.service.IContractService;
import com.cps.common.core.text.Convert;

/**
 * 合同Service业务层处理
 * 
 * @author wxf
 * @date 2022-08-16
 */
@Service
public class ContractServiceImpl implements IContractService 
{
    @Autowired
    private ContractMapper contractMapper;

    /**
     * 查询合同
     * 
     * @param contractId 合同主键
     * @return 合同
     */
    @Override
    public Contract selectContractByContractId(String contractId)
    {
        return contractMapper.selectContractByContractId(contractId);
    }

    /**
     * 查询合同列表
     * 
     * @param contract 合同
     * @return 合同
     */
    @Override
    public List<Contract> selectContractList(Contract contract)
    {
        return contractMapper.selectContractList(contract);
    }

    /**
     * 新增合同
     * 
     * @param contract 合同
     * @return 结果
     */
    @Override
    public int insertContract(Contract contract)
    {
        return contractMapper.insertContract(contract);
    }

    /**
     * 修改合同
     * 
     * @param contract 合同
     * @return 结果
     */
    @Override
    public int updateContract(Contract contract)
    {
        return contractMapper.updateContract(contract);
    }

    /**
     * 批量删除合同
     * 
     * @param contractIds 需要删除的合同主键
     * @return 结果
     */
    @Override
    public int deleteContractByContractIds(String contractIds)
    {
        return contractMapper.deleteContractByContractIds(Convert.toStrArray(contractIds));
    }

    /**
     * 删除合同信息
     * 
     * @param contractId 合同主键
     * @return 结果
     */
    @Override
    public int deleteContractByContractId(String contractId)
    {
        return contractMapper.deleteContractByContractId(contractId);
    }
}
