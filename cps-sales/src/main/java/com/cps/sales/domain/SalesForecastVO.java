package com.cps.sales.domain;

import com.cps.common.annotation.Excel;
import com.cps.common.core.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

/**
 * 销量预测对象 sales_forecast
 *
 * @author cps
 * @date 2022-10-20
 */
public class SalesForecastVO extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /**
     * 销量预测项id
     */
    private Long id;

    /**
     * 商品id
     */
    @Excel(name = "商品id")
    private Long productId;

    /**
     * 次月销量预测
     */
    @Excel(name = "次月销量预测")
    private String salesForecast1;

    /**
     * 次次月销量预测
     */
    @Excel(name = "次次月销量预测")
    private String salesForecast2;

    /**
     * 近一个月销量
     */
    @Excel(name = "近一个月销量")
    private int monthSales;

    /**
     * 商品名称
     */
    @Excel(name = "商品名称")
    private String goodName;
    @Excel(name = "是否招标状态")
    private int status;

    @Override
    public String toString() {
        return "SalesForecastVO{" +
                "id=" + id +
                ", productId=" + productId +
                ", salesForecast1='" + salesForecast1 + '\'' +
                ", salesForecast2='" + salesForecast2 + '\'' +
                ", monthSales=" + monthSales +
                ", goodName='" + goodName + '\'' +
                ", status=" + status +
                '}';
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getMonthSales() {
        return monthSales;
    }

    public void setMonthSales(int monthSales) {
        this.monthSales = monthSales;
    }

    public String getGoodName() {
        return goodName;
    }

    public void setGoodName(String goodName) {
        this.goodName = goodName;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getProductId() {
        return productId;
    }

    public void setProductId(Long productId) {
        this.productId = productId;
    }

    public String getSalesForecast1() {
        return salesForecast1;
    }

    public void setSalesForecast1(String salesForecast1) {
        this.salesForecast1 = salesForecast1;
    }

    public String getSalesForecast2() {
        return salesForecast2;
    }

    public void setSalesForecast2(String salesForecast2) {
        this.salesForecast2 = salesForecast2;
    }

}
