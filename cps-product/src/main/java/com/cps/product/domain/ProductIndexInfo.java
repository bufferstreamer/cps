package com.cps.product.domain;

import java.math.BigDecimal;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.cps.common.annotation.Excel;
import com.cps.common.core.domain.BaseEntity;

/**
 * 产品指标信息（数值型）对象 product_index_info
 * 
 * @author cps
 * @date 2022-09-03
 */
public class ProductIndexInfo extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 产品指标id（uuid） */
    private String productIndexId;

    /** 产品id */
    @Excel(name = "产品id")
    private String productId;

    /** 产品名 */
    @Excel(name = "产品名")
    private String productName;

    /** 指标名 */
    @Excel(name = "指标名")
    private String indexName;

    /** 指标单位 */
    @Excel(name = "指标单位")
    private String indexUnit;

    /** 指标最小值 */
    @Excel(name = "指标最小值")
    private BigDecimal indexMin;

    /** 指标最大值 */
    @Excel(name = "指标最大值")
    private BigDecimal indexMax;

    /** 排序优先级（1值大优先 2值小优先） */
    @Excel(name = "排序优先级", readConverterExp = "1=值大优先,2=值小优先")
    private String indexStatus;

    /** 更新时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "更新时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date updateDatetime;

    public void setProductIndexId(String productIndexId) 
    {
        this.productIndexId = productIndexId;
    }

    public String getProductIndexId() 
    {
        return productIndexId;
    }
    public void setProductId(String productId) 
    {
        this.productId = productId;
    }

    public String getProductId() 
    {
        return productId;
    }
    public void setProductName(String productName) 
    {
        this.productName = productName;
    }

    public String getProductName() 
    {
        return productName;
    }
    public void setIndexName(String indexName) 
    {
        this.indexName = indexName;
    }

    public String getIndexName() 
    {
        return indexName;
    }
    public void setIndexUnit(String indexUnit) 
    {
        this.indexUnit = indexUnit;
    }

    public String getIndexUnit() 
    {
        return indexUnit;
    }
    public void setIndexMin(BigDecimal indexMin) 
    {
        this.indexMin = indexMin;
    }

    public BigDecimal getIndexMin() 
    {
        return indexMin;
    }
    public void setIndexMax(BigDecimal indexMax) 
    {
        this.indexMax = indexMax;
    }

    public BigDecimal getIndexMax() 
    {
        return indexMax;
    }
    public void setIndexStatus(String indexStatus) 
    {
        this.indexStatus = indexStatus;
    }

    public String getIndexStatus() 
    {
        return indexStatus;
    }
    public void setUpdateDatetime(Date updateDatetime) 
    {
        this.updateDatetime = updateDatetime;
    }

    public Date getUpdateDatetime() 
    {
        return updateDatetime;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("productIndexId", getProductIndexId())
            .append("productId", getProductId())
            .append("productName", getProductName())
            .append("indexName", getIndexName())
            .append("indexUnit", getIndexUnit())
            .append("indexMin", getIndexMin())
            .append("indexMax", getIndexMax())
            .append("indexStatus", getIndexStatus())
            .append("updateDatetime", getUpdateDatetime())
            .toString();
    }
}
