package com.cps.cp.mapper;

import java.util.List;

import com.cps.bid.domain.CentralizedPurchaseRecord;
import com.cps.cp.domain.Tender;

/**
 * 招标Mapper接口
 * 
 * @author wxf
 * @date 2022-08-16
 */
public interface TenderMapper 
{
    /**
     * 查询招标
     * 
     * @param tenderId 招标主键
     * @return 招标
     */
    public Tender selectTenderByTenderId(String tenderId);

    /**
     * 查询招标列表
     * 
     * @param tender 招标
     * @return 招标集合
     */
    public List<Tender> selectTender1List(Tender tender);
    public List<Tender> selectTender2List(Tender tender);
    /**
     * 新增招标
     * 
     * @param tender 招标
     * @return 结果
     */
    public int insertTender(Tender tender);

    /**
     * 修改招标
     * 
     * @param tender 招标
     * @return 结果
     */
    public int updateTender(Tender tender);

    /**
     * 删除招标
     * 
     * @param tenderId 招标主键
     * @return 结果
     */
    public int deleteTenderByTenderId(String tenderId);

    /**
     * 批量删除招标
     * 
     * @param tenderIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteTenderByTenderIds(String[] tenderIds);

    /**
     * 通过tenderId标书ID获取集中采购记录数据，返回List
     *
     * @param tenderId
     * @return
     */
    public List<CentralizedPurchaseRecord> selectCentralizedPurchaseRecordList(String tenderId);
}
