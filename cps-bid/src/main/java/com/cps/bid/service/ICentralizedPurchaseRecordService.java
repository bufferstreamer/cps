package com.cps.bid.service;

import java.util.List;
import com.cps.bid.domain.CentralizedPurchaseRecord;

/**
 * 集中采购记录Service接口
 * 
 * @author cps
 * @date 2022-09-03
 */
public interface ICentralizedPurchaseRecordService 
{
    /**
     * 查询集中采购记录
     * 
     * @param centralizedPurchaseRecordId 集中采购记录主键
     * @return 集中采购记录
     */
    public CentralizedPurchaseRecord selectCentralizedPurchaseRecordByCentralizedPurchaseRecordId(String centralizedPurchaseRecordId);

    public List<CentralizedPurchaseRecord> selectCentralizedPurchaseRecordsByTenderIdAndSupplyId(String tenderId, String supplyId);

    /**
     * 查询集中采购记录列表
     * 
     * @param centralizedPurchaseRecord 集中采购记录
     * @return 集中采购记录集合
     */
    public List<CentralizedPurchaseRecord> selectCentralizedPurchaseRecordList(CentralizedPurchaseRecord centralizedPurchaseRecord);

    /**
     * 新增集中采购记录
     * 
     * @param centralizedPurchaseRecord 集中采购记录
     * @return 结果
     */
    public int insertCentralizedPurchaseRecord(CentralizedPurchaseRecord centralizedPurchaseRecord);

    /**
     * 修改集中采购记录
     * 
     * @param centralizedPurchaseRecord 集中采购记录
     * @return 结果
     */
    public int updateCentralizedPurchaseRecord(CentralizedPurchaseRecord centralizedPurchaseRecord);

    /**
     * 批量删除集中采购记录
     * 
     * @param centralizedPurchaseRecordIds 需要删除的集中采购记录主键集合
     * @return 结果
     */
    public int deleteCentralizedPurchaseRecordByCentralizedPurchaseRecordIds(String centralizedPurchaseRecordIds);

    /**
     * 删除集中采购记录信息
     * 
     * @param centralizedPurchaseRecordId 集中采购记录主键
     * @return 结果
     */
    public int deleteCentralizedPurchaseRecordByCentralizedPurchaseRecordId(String centralizedPurchaseRecordId);
}
