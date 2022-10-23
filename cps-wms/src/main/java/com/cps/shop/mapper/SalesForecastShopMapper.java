package com.cps.shop.mapper;

import com.cps.shop.domain.SalesForecastShop;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 销量预测Mapper接口
 *
 * @author cps
 * @date 2022-10-20
 */
@Repository
public interface SalesForecastShopMapper {

    public int insertSalesForecast(SalesForecastShop salesForecast);

    /**
     * 修改销量预测
     *
     * @param salesForecast 销量预测
     * @return 结果
     */
    public int updateSalesForecast(SalesForecastShop salesForecast);


    /**
     * 修改销量预测
     *
     * @param salesForecast 销量预测
     * @return 结果
     */
    public int updateSalesForecastName(SalesForecastShop salesForecast);


    /**
     * 删除销量预测
     *
     * @param productId 销量预测主键
     * @return 结果
     */
    public int deleteSalesForecastByProductId(Long productId);


}
