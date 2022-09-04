package com.cps.bidRecord.mapper;

import java.util.List;
import com.cps.bidRecord.domain.CentralizedPurchaseRecord;

/**
 * 集中采购记录Mapper接口
 * 
 * @author cps
 * @date 2022-09-03
 */
public interface CentralizedPurchaseRecordMapper 
{
    /**
     * 查询集中采购记录
     * 
     * @param centralizedPurchaseRecordId 集中采购记录主键
     * @return 集中采购记录
     */
    public CentralizedPurchaseRecord selectCentralizedPurchaseRecordByCentralizedPurchaseRecordId(String centralizedPurchaseRecordId);

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
     * 删除集中采购记录
     * 
     * @param centralizedPurchaseRecordId 集中采购记录主键
     * @return 结果
     */
    public int deleteCentralizedPurchaseRecordByCentralizedPurchaseRecordId(String centralizedPurchaseRecordId);

    /**
     * 批量删除集中采购记录
     * 
     * @param centralizedPurchaseRecordIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteCentralizedPurchaseRecordByCentralizedPurchaseRecordIds(String[] centralizedPurchaseRecordIds);
}
