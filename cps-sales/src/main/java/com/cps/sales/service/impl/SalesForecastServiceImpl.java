package com.cps.sales.service.impl;

import java.util.ArrayList;
import java.util.List;

import com.cps.common.enums.WhOutboundOrderType;
import com.cps.sales.domain.SalesForecastVO;
import com.cps.wh.mapper.WhOutboundOrderSeedMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.cps.sales.mapper.SalesForecastMapper;
import com.cps.sales.domain.SalesForecast;
import com.cps.sales.service.ISalesForecastService;
import com.cps.common.core.text.Convert;

/**
 * 销量预测Service业务层处理
 *
 * @author cps
 * @date 2022-10-20
 */
@Service
public class SalesForecastServiceImpl implements ISalesForecastService {
    @Autowired
    private SalesForecastMapper salesForecastMapper;
    @Autowired
    private WhOutboundOrderSeedMapper whOutboundOrderSeedMapper;
    /**
     * 查询销量预测
     *
     * @param id 销量预测主键
     * @return 销量预测
     */
    @Override
    public SalesForecast selectSalesForecastById(Long id) {
        return salesForecastMapper.selectSalesForecastById(id);
    }

    /**
     * 查询销量预测列表
     *
     * @param salesForecast 销量预测
     * @return 销量预测
     */
    @Override
    public List<SalesForecast> selectSalesForecastList(SalesForecast salesForecast) {
        return salesForecastMapper.selectSalesForecastList(salesForecast);
    }

    /**
     * 查询销量预测列表
     *
     * @param salesForecast 销量预测
     * @return 销量预测
     */
    @Override
    public List<SalesForecastVO> selectSalesForecastVOList(SalesForecast salesForecast) {
        salesForecast.setGoodName("%" +salesForecast.getGoodName() + "%");
        List<SalesForecast> salesForecastVOS = salesForecastMapper.selectSalesForecastList(salesForecast);
        int monthSales = 0 ;
        ArrayList<SalesForecastVO> vos = new ArrayList<>();
        for(SalesForecast sf : salesForecastVOS){
            monthSales =  whOutboundOrderSeedMapper.selectSingleMonthSalesDataByGoodsId(sf.getProductId());
            SalesForecastVO SFV = new SalesForecastVO();
            SFV.setMonthSales(monthSales);
            SFV.setSalesForecast1(sf.getSalesForecast1());
            SFV.setSalesForecast2(sf.getSalesForecast2());
            SFV.setGoodName(sf.getGoodName());
            SFV.setId(sf.getId());
            SFV.setProductId(sf.getProductId());
            SFV.setStatus(sf.getStatus());
            vos.add(SFV);
        }
        return vos;
    }

    /**
     * 新增销量预测
     *
     * @param salesForecast 销量预测
     * @return 结果
     */
    @Override
    public int insertSalesForecast(SalesForecast salesForecast) {
            return salesForecastMapper.insertSalesForecast(salesForecast);
    }

    /**
     * 修改销量预测
     *
     * @param salesForecast 销量预测
     * @return 结果
     */
    @Override
    public int updateSalesForecast(SalesForecast salesForecast) {
        return salesForecastMapper.updateSalesForecast(salesForecast);
    }

    /**
     * @param id:
     * @return int: 结果
     * @author LN
     * @description 修改商品招标状态
     */
    @Override
    public int updateStatusById(Long id) {
        return salesForecastMapper.updateStatusById(id);
    }
    /**
     * @param ids: 需要招标的主键集合
     * @return int: 结果
     * @author LN
     * @description 批量招标
     */

    @Override
    public int updateStatusByIds(String ids) {
        return salesForecastMapper.updateStatusByIds(Convert.toStrArray(ids));
    }

    /**
     * 批量删除销量预测
     *
     * @param ids 需要删除的销量预测主键
     * @return 结果
     */
    @Override
    public int deleteSalesForecastByIds(String ids) {
        return salesForecastMapper.deleteSalesForecastByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除销量预测信息
     *
     * @param id 销量预测主键
     * @return 结果
     */
    @Override
    public int deleteSalesForecastById(Long id) {
        return salesForecastMapper.deleteSalesForecastById(id);
    }
}
