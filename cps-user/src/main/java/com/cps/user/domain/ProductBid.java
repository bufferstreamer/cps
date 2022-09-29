package com.cps.user.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.cps.common.annotation.Excel;
import com.cps.common.core.domain.BaseEntity;

/**
 * ProductBid对象 product_bid
 *
 * @author cps
 * @date 2022-09-27
 */
public class ProductBid extends BaseEntity
        {
private static final long serialVersionUID=1L;

    /** 主键ID */
    private String id;

    /** 产品id */
            @Excel(name = "产品id")
    private String productId;

    /** sku编号 */
            @Excel(name = "sku编号")
    private String skuId;

    /** 种类id */
            @Excel(name = "种类id")
    private String categoryId;

    /** 中标开始日期 */
            @JsonFormat(pattern = "yyyy-MM-dd")
            @Excel(name = "中标开始日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date startDate;

    /** 中标结束日期 */
            @JsonFormat(pattern = "yyyy-MM-dd")
            @Excel(name = "中标结束日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date endDate;

    public void setId(String id)
            {
            this.id = id;
            }

    public String getId()
            {
            return id;
            }
    public void setProductId(String productId)
            {
            this.productId = productId;
            }

    public String getProductId()
            {
            return productId;
            }
    public void setSkuId(String skuId)
            {
            this.skuId = skuId;
            }

    public String getSkuId()
            {
            return skuId;
            }
    public void setCategoryId(String categoryId)
            {
            this.categoryId = categoryId;
            }

    public String getCategoryId()
            {
            return categoryId;
            }
    public void setStartDate(Date startDate)
            {
            this.startDate = startDate;
            }

    public Date getStartDate()
            {
            return startDate;
            }
    public void setEndDate(Date endDate)
            {
            this.endDate = endDate;
            }

    public Date getEndDate()
            {
            return endDate;
            }

@Override
public String toString(){
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id",getId())
            .append("productId",getProductId())
            .append("skuId",getSkuId())
            .append("categoryId",getCategoryId())
            .append("startDate",getStartDate())
            .append("endDate",getEndDate())
        .toString();
        }
        }
