package com.cps.bid.service.impl;

import com.cps.bid.domain.CentralizedPurchaseRecord;
import com.cps.bid.mapper.CentralizedPurchaseRecordMapper;
import com.cps.bid.service.ICentralizedPurchaseRecordService;
import com.cps.common.core.text.Convert;
import com.cps.common.json.JSON;
import com.cps.common.utils.DateUtils;
import com.cps.common.utils.ShiroUtils;
import com.cps.common.utils.uuid.IdUtils;
import com.cps.fabric.bean.CAEnrollment;
import com.cps.fabric.service.SDKService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
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

    @Autowired
    private SDKService sdkService;
    /**
     * 查询集中采购记录
     *
     * @param centralizedPurchaseRecordId 集中采购记录主键
     * @return 集中采购记录
     */
    @Override
    public CentralizedPurchaseRecord selectCentralizedPurchaseRecordByCentralizedPurchaseRecordId(String centralizedPurchaseRecordId) {
//        try{
//            String jsonStr = sdkService.queryChainCode("query",new String[]{centralizedPurchaseRecordId});
//
//            CentralizedPurchaseRecord record = JSON.unmarshal(jsonStr,CentralizedPurchaseRecord.class);
//            System.out.println(record);
//            return record;
//        }
//        catch (Exception e){
//            System.out.println(e.toString());
//            return null;
//        }

        return centralizedPurchaseRecordMapper.selectCentralizedPurchaseRecordByCentralizedPurchaseRecordId(centralizedPurchaseRecordId);
    }

    /**
     * 查询集中采购记录列表
     *
     * @param centralizedPurchaseRecord 集中采购记录
     * @return 集中采购记录
     */
    @Override
    public List<CentralizedPurchaseRecord> selectCentralizedPurchaseRecordList(CentralizedPurchaseRecord centralizedPurchaseRecord){
        try{
            if (sdkService.fabricClient==null){
                sdkService.Init();
                //sdkService.chainCodeInstall();
                //sdkService.initChainCode();
            }
        }
        catch (Exception e){
            System.out.println(e.toString());
        }

//        List<CentralizedPurchaseRecord> list=new ArrayList<>();
//        try{
//            for (String jsonStr:sdkService.queryChainCode("queryByRange",new String[]{"a","z"}).split("\\|"))
//            {
//                list.add(JSON.unmarshal(jsonStr,CentralizedPurchaseRecord.class));
//            }
//
//            for (String jsonStr:sdkService.queryChainCode("queryByRange",new String[]{"0","9"}).split("\\|"))
//            {
//                list.add(JSON.unmarshal(jsonStr,CentralizedPurchaseRecord.class));
//            }
//        }
//        catch (Exception e){
//            System.out.println(e.toString());
//        }
//
//
//        return list;

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

//        try{
//            String jsonStr= JSON.marshal(centralizedPurchaseRecord);
//            sdkService.chainCodeInvoke("add",new String[]{centralizedPurchaseRecord.getCentralizedPurchaseRecordId(),jsonStr});
//            return 1;
//        }
//        catch (Exception e){
//            System.out.println(e.toString());
//            return 0;
//        }

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
//        try{
//            System.out.println(centralizedPurchaseRecord);
//            String jsonStr= JSON.marshal(centralizedPurchaseRecord);
//            sdkService.chainCodeInvoke("update",new String[]{centralizedPurchaseRecord.getCentralizedPurchaseRecordId(),jsonStr});
//            return 1;
//        }
//        catch (Exception e){
//            System.out.println(e.toString());
//            return 0;
//        }

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
//        String[] idArray = Convert.toStrArray(centralizedPurchaseRecordIds);
//        for (String centralizedPurchaseRecordId:idArray)
//        {
//            try{
//                sdkService.chainCodeInvoke("remove",new String[]{centralizedPurchaseRecordId});
//            }
//            catch (Exception e){
//                System.out.println(e.toString());
//                return 0;
//            }
//        }
//
//        return idArray.length;

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
//        try{
//            sdkService.chainCodeInvoke("remove",new String[]{centralizedPurchaseRecordId});
//            return 1;
//        }
//        catch (Exception e){
//            System.out.println(e.toString());
//            return 0;
//        }

        return centralizedPurchaseRecordMapper.deleteCentralizedPurchaseRecordByCentralizedPurchaseRecordId(centralizedPurchaseRecordId);
    }
}
