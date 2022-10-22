package com.cps.sales.service;

import java.util.List;

import com.cps.sales.domain.SalesForecast;
import com.cps.sales.domain.SalesForecastVO;

/**
 * 销量预测Service接口
 *
 * @author cps
 * @date 2022-10-20
 */
public interface ISalesForecastService {
    /**
     * 查询销量预测
     *
     * @param id 销量预测主键
     * @return 销量预测
     */
    public SalesForecast selectSalesForecastById(Long id);

    /**
     * 查询销量预测列表
     *
     * @param salesForecast 销量预测
     * @return 销量预测集合
     */
    public List<SalesForecast> selectSalesForecastList(SalesForecast salesForecast);

    /**
     * 查询销量预测列表
     *
     * @param salesForecast 销量预测
     * @return 销量预测集合
     */
    public List<SalesForecastVO> selectSalesForecastVOList(SalesForecast salesForecast);

    /**
     * 新增销量预测
     *
     * @param salesForecast 销量预测
     * @return 结果
     */
    public int insertSalesForecast(SalesForecast salesForecast);

    /**
     * 修改销量预测
     *
     * @param salesForecast 销量预测
     * @return 结果
     */
    public int updateSalesForecast(SalesForecast salesForecast);

    /**
     * 批量删除销量预测
     *
     * @param ids 需要删除的销量预测主键集合
     * @return 结果
     */
    public int deleteSalesForecastByIds(String ids);

    /**
     * 删除销量预测信息
     *
     * @param id 销量预测主键
     * @return 结果
     */
    public int deleteSalesForecastById(Long id);
}
