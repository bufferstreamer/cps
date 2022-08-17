package com.cps.audit.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.cps.audit.mapper.TaxAndBankInfoMapper;
import com.cps.audit.domain.TaxAndBankInfo;
import com.cps.audit.service.ITaxAndBankInfoService;
import com.cps.common.core.text.Convert;

/**
 * 税务及银行审核管理Service业务层处理
 * 
 * @author cps
 * @date 2022-08-16
 */
@Service
public class TaxAndBankInfoServiceImpl implements ITaxAndBankInfoService 
{
    @Autowired
    private TaxAndBankInfoMapper taxAndBankInfoMapper;

    /**
     * 查询税务及银行审核管理
     * 
     * @param taxAndBankAuditId 税务及银行审核管理主键
     * @return 税务及银行审核管理
     */
    @Override
    public TaxAndBankInfo selectTaxAndBankInfoByTaxAndBankAuditId(String taxAndBankAuditId)
    {
        return taxAndBankInfoMapper.selectTaxAndBankInfoByTaxAndBankAuditId(taxAndBankAuditId);
    }

    /**
     * 查询税务及银行审核管理列表
     * 
     * @param taxAndBankInfo 税务及银行审核管理
     * @return 税务及银行审核管理
     */
    @Override
    public List<TaxAndBankInfo> selectTaxAndBankInfoList(TaxAndBankInfo taxAndBankInfo)
    {
        return taxAndBankInfoMapper.selectTaxAndBankInfoList(taxAndBankInfo);
    }

    /**
     * 新增税务及银行审核管理
     * 
     * @param taxAndBankInfo 税务及银行审核管理
     * @return 结果
     */
    @Override
    public int insertTaxAndBankInfo(TaxAndBankInfo taxAndBankInfo)
    {
        return taxAndBankInfoMapper.insertTaxAndBankInfo(taxAndBankInfo);
    }

    /**
     * 修改税务及银行审核管理
     * 
     * @param taxAndBankInfo 税务及银行审核管理
     * @return 结果
     */
    @Override
    public int updateTaxAndBankInfo(TaxAndBankInfo taxAndBankInfo)
    {
        return taxAndBankInfoMapper.updateTaxAndBankInfo(taxAndBankInfo);
    }

    /**
     * 批量删除税务及银行审核管理
     * 
     * @param taxAndBankAuditIds 需要删除的税务及银行审核管理主键
     * @return 结果
     */
    @Override
    public int deleteTaxAndBankInfoByTaxAndBankAuditIds(String taxAndBankAuditIds)
    {
        return taxAndBankInfoMapper.deleteTaxAndBankInfoByTaxAndBankAuditIds(Convert.toStrArray(taxAndBankAuditIds));
    }

    /**
     * 删除税务及银行审核管理信息
     * 
     * @param taxAndBankAuditId 税务及银行审核管理主键
     * @return 结果
     */
    @Override
    public int deleteTaxAndBankInfoByTaxAndBankAuditId(String taxAndBankAuditId)
    {
        return taxAndBankInfoMapper.deleteTaxAndBankInfoByTaxAndBankAuditId(taxAndBankAuditId);
    }
}
