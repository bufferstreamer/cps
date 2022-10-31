package com.cps.cp.service;

import com.cps.cp.domain.Contract;
import com.cps.cp.domain.ContractView;

import java.util.List;

/**
 * 合同Service接口
 *
 * @author wxf
 * @date 2022-08-16
 */
public interface IContractService {
    /**
     * 查询合同
     *
     * @param contractId 合同主键
     * @return 合同
     */
    public Contract selectContractByContractId(String contractId);

    /**
     * 查询合同列表
     *
     * @param contract 合同
     * @return 合同集合
     */
    public List<ContractView> selectContractList(Contract contract);

    /**
     * 查询合同列表
     *
     * @param userId 签名方用户ID
     * @return 合同集合
     */
    public List<ContractView> selectContractListByUserId(Long userId);

    /**
     * 新增合同
     *
     * @param contract 合同
     * @return 结果
     */
    public int insertContract(Contract contract);

    /**
     * 修改合同
     *
     * @param contract 合同
     * @return 结果
     */
    public int updateContract(Contract contract);

    /**
     * 批量删除合同
     *
     * @param contractIds 需要删除的合同主键集合
     * @return 结果
     */
    public int deleteContractByContractIds(String contractIds);

    /**
     * 删除合同信息
     *
     * @param contractId 合同主键
     * @return 结果
     */
    public int deleteContractByContractId(String contractId);
}
