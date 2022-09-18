package com.cps.cp.service.impl;

import com.cps.bid.domain.CentralizedPurchaseRecord;
import com.cps.common.core.text.Convert;
import com.cps.cp.domain.Tender;
import com.cps.cp.mapper.TenderMapper;
import com.cps.cp.service.ITenderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 招标Service业务层处理
 *
 * @author wxf
 * @date 2022-08-16
 */
@Service
public class TenderServiceImpl implements ITenderService {
    @Autowired
    private TenderMapper tenderMapper;

    /**
     * 查询招标
     *
     * @param tenderId 招标主键
     * @return 招标
     */
    @Override
    public Tender selectTenderByTenderId(String tenderId) {
        return tenderMapper.selectTenderByTenderId(tenderId);
    }

    /**
     * 查询招标列表
     *
     * @param tender 招标
     * @return 招标
     */
    @Override
    public List<Tender> selectTender1List(Tender tender) {
        return tenderMapper.selectTender1List(tender);
    }

    @Override
    public List<Tender> selectTender2List(Tender tender) {
        return tenderMapper.selectTender2List(tender);
    }

    /**
     * 新增招标
     *
     * @param tender 招标
     * @return 结果
     */
    @Override
    public int insertTender(Tender tender) {
        return tenderMapper.insertTender(tender);
    }

    /**
     * 修改招标
     *
     * @param tender 招标
     * @return 结果
     */
    @Override
    public int updateTender(Tender tender) {
        return tenderMapper.updateTender(tender);
    }

    /**
     * 批量删除招标
     *
     * @param tenderIds 需要删除的招标主键
     * @return 结果
     */
    @Override
    public int deleteTenderByTenderIds(String tenderIds) {
        return tenderMapper.deleteTenderByTenderIds(Convert.toStrArray(tenderIds));
    }

    /**
     * 删除招标信息
     *
     * @param tenderId 招标主键
     * @return 结果
     */
    @Override
    public int deleteTenderByTenderId(String tenderId) {
        return tenderMapper.deleteTenderByTenderId(tenderId);
    }

    /**
     * 通过tenderId标书ID获取集中采购记录数据，返回List
     *
     * @param tenderId
     * @return
     */
    @Override
    public List<CentralizedPurchaseRecord> selectCentralizedPurchaseRecordList(String tenderId) {
        return tenderMapper.selectCentralizedPurchaseRecordList(tenderId);
    }
}
