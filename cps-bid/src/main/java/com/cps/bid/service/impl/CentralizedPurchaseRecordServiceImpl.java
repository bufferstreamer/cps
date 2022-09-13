package com.cps.bid.service.impl;

import com.cps.bid.domain.CentralizedPurchaseRecord;
import com.cps.bid.mapper.CentralizedPurchaseRecordMapper;
import com.cps.bid.service.ICentralizedPurchaseRecordService;
import com.cps.common.core.text.Convert;
import com.cps.common.utils.DateUtils;
import com.cps.common.utils.ShiroUtils;
import com.cps.common.utils.uuid.IdUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 集中采购记录Service业务层处理
 *
 * @author cps
 * @date 2022-09-03
 */
@Service
public class CentralizedPurchaseRecordServiceImpl implements ICentralizedPurchaseRecordService {
    @Autowired
    private CentralizedPurchaseRecordMapper centralizedPurchaseRecordMapper;

    /**
     * 查询集中采购记录
     *
     * @param centralizedPurchaseRecordId 集中采购记录主键
     * @return 集中采购记录
     */
    @Override
    public CentralizedPurchaseRecord selectCentralizedPurchaseRecordByCentralizedPurchaseRecordId(String centralizedPurchaseRecordId) {
        return centralizedPurchaseRecordMapper.selectCentralizedPurchaseRecordByCentralizedPurchaseRecordId(centralizedPurchaseRecordId);
    }

    @Override
    public List<CentralizedPurchaseRecord> selectCentralizedPurchaseRecordsByTenderIdAndSupplyId(String tenderId, String supplyId) {
        return centralizedPurchaseRecordMapper.selectCentralizedPurchaseRecordsByTenderIdAndSupplyId(tenderId, supplyId);
    }

    /**
     * 查询集中采购记录列表
     *
     * @param centralizedPurchaseRecord 集中采购记录
     * @return 集中采购记录
     */
    @Override
    public List<CentralizedPurchaseRecord> selectCentralizedPurchaseRecordList(CentralizedPurchaseRecord centralizedPurchaseRecord) {
        return centralizedPurchaseRecordMapper.selectCentralizedPurchaseRecordList(centralizedPurchaseRecord);
    }

    /**
     * 新增集中采购记录
     *
     * @param centralizedPurchaseRecord 集中采购记录
     * @return 结果
     */
    @Override
    public int insertCentralizedPurchaseRecord(CentralizedPurchaseRecord centralizedPurchaseRecord) {
        centralizedPurchaseRecord.setCentralizedPurchaseRecordId(IdUtils.fastSimpleUUID());
        centralizedPurchaseRecord.setSupplierId(ShiroUtils.getUserId());
        centralizedPurchaseRecord.setCentralizedPurchaseRecordTime(DateUtils.getNowDate());
        return centralizedPurchaseRecordMapper.insertCentralizedPurchaseRecord(centralizedPurchaseRecord);
    }

    /**
     * 修改集中采购记录
     *
     * @param centralizedPurchaseRecord 集中采购记录
     * @return 结果
     */
    @Override
    public int updateCentralizedPurchaseRecord(CentralizedPurchaseRecord centralizedPurchaseRecord) {
        return centralizedPurchaseRecordMapper.updateCentralizedPurchaseRecord(centralizedPurchaseRecord);
    }

    /**
     * 批量删除集中采购记录
     *
     * @param centralizedPurchaseRecordIds 需要删除的集中采购记录主键
     * @return 结果
     */
    @Override
    public int deleteCentralizedPurchaseRecordByCentralizedPurchaseRecordIds(String centralizedPurchaseRecordIds) {
        return centralizedPurchaseRecordMapper.deleteCentralizedPurchaseRecordByCentralizedPurchaseRecordIds(Convert.toStrArray(centralizedPurchaseRecordIds));
    }

    /**
     * 删除集中采购记录信息
     *
     * @param centralizedPurchaseRecordId 集中采购记录主键
     * @return 结果
     */
    @Override
    public int deleteCentralizedPurchaseRecordByCentralizedPurchaseRecordId(String centralizedPurchaseRecordId) {
        return centralizedPurchaseRecordMapper.deleteCentralizedPurchaseRecordByCentralizedPurchaseRecordId(centralizedPurchaseRecordId);
    }
}
