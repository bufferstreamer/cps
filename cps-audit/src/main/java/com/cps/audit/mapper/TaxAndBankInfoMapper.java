package com.cps.audit.mapper;

import com.cps.audit.domain.TaxAndBankInfo;

import java.util.List;

/**
 * 税务及银行审核管理Mapper接口
 *
 * @author cps
 * @date 2022-08-16
 */
public interface TaxAndBankInfoMapper {
    /**
     * 查询税务及银行审核管理
     *
     * @param taxAndBankAuditId 税务及银行审核管理主键
     * @return 税务及银行审核管理
     */
    public TaxAndBankInfo selectTaxAndBankInfoByTaxAndBankAuditId(String taxAndBankAuditId);

    /**
     * 查询税务及银行审核管理列表
     *
     * @param taxAndBankInfo 税务及银行审核管理
     * @return 税务及银行审核管理集合
     */
    public List<TaxAndBankInfo> selectTaxAndBankInfoList(TaxAndBankInfo taxAndBankInfo);

    /**
     * 新增税务及银行审核管理
     *
     * @param taxAndBankInfo 税务及银行审核管理
     * @return 结果
     */
    public int insertTaxAndBankInfo(TaxAndBankInfo taxAndBankInfo);

    /**
     * 修改税务及银行审核管理
     *
     * @param taxAndBankInfo 税务及银行审核管理
     * @return 结果
     */
    public int updateTaxAndBankInfo(TaxAndBankInfo taxAndBankInfo);

    /**
     * 删除税务及银行审核管理
     *
     * @param taxAndBankAuditId 税务及银行审核管理主键
     * @return 结果
     */
    public int deleteTaxAndBankInfoByTaxAndBankAuditId(String taxAndBankAuditId);

    /**
     * 批量删除税务及银行审核管理
     *
     * @param taxAndBankAuditIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteTaxAndBankInfoByTaxAndBankAuditIds(String[] taxAndBankAuditIds);
}
