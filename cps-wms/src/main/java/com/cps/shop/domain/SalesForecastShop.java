package com.cps.shop.domain;

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
public class SalesForecastShop extends BaseEntity
        {
private static final long serialVersionUID=1L;

    /** 销量预测项id */
    private Long id;

    /** 商品id */
    @Excel(name = "商品id")
    private Long productId;



    /** 商品名称 */
    @Excel(name = "商品名称")
    private String goodName;
    public String getGoodName() {
        return goodName;
    }

    public void setGoodName(String goodName) {
        this.goodName = goodName;
    }
    /** 次月销量预测 */
    @Excel(name = "次月销量预测")
    private String salesForecast1;

    /** 次次月销量预测 */
    @Excel(name = "次次月销量预测")
    private String salesForecast2;

    public void setId(Long id)
            {
            this.id = id;
            }

    public Long getId()
            {
            return id;
            }
    public void setProductId(Long productId)
            {
            this.productId = productId;
            }

    public Long getProductId()
            {
            return productId;
            }
    public void setSalesForecast1(String salesForecast1)
            {
            this.salesForecast1 = salesForecast1;
            }

    public String getSalesForecast1()
            {
            return salesForecast1;
            }
    public void setSalesForecast2(String salesForecast2)
            {
            this.salesForecast2 = salesForecast2;
            }

    public String getSalesForecast2()
            {
            return salesForecast2;
            }

@Override
public String toString(){
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id",getId())
            .append("productId",getProductId())
            .append("goodName",getGoodName())
            .append("salesForecast1",getSalesForecast1())
            .append("salesForecast2",getSalesForecast2())
        .toString();
        }
        }
