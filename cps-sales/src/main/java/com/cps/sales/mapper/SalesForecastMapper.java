package com.cps.sales.mapper;

import java.util.List;

import com.cps.sales.domain.SalesForecast;
import com.cps.sales.domain.SalesForecastVO;
import org.springframework.stereotype.Repository;

/**
 * 销量预测Mapper接口
 *
 * @author cps
 * @date 2022-10-20
 */
@Repository
public interface SalesForecastMapper {
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

    //public List<SalesForecastVO> selectSalesForecastVOList(SalesForecast salesForecast);

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
     * @param id:
     * @return int: 结果
     * @author LN
     * @description 修改商品招标状态
     */
    public int updateStatusById(Long id);

    /**
     * @param ids: 需要招标的主键集合
     * @return int: 结果
     * @author LN
     * @description 批量招标
     */
    public int updateStatusByIds(String[] ids);

    /**
     * 删除销量预测
     *
     * @param id 销量预测主键
     * @return 结果
     */
    public int deleteSalesForecastById(Long id);

    /**
     * 删除销量预测
     *
     * @param productId 销量预测主键
     * @return 结果
     */
    public int deleteSalesForecastByProductId(Long productId);

    /**
     * 批量删除销量预测
     *
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteSalesForecastByIds(String[] ids);
}
