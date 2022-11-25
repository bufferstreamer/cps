package com.cps.user.domain;

import java.math.BigDecimal;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.cps.common.annotation.Excel;
import com.cps.common.core.domain.BaseEntity;

/**
 * 订单项/快照对象 order_item
 *
 * @author cps
 * @date 2022-09-17
 */
@ApiModel(value = "OrderItem",description = "订单项实体")
public class OrderItem extends BaseEntity
{
    private static final long serialVersionUID=1L;

    /** 订单项ID */
    @ApiModelProperty("主键")
    private String itemId;

    /** 订单ID */
    @ApiModelProperty("订单ID")
    @Excel(name = "订单ID")
    private String orderId;

    /** 商品ID */
    @ApiModelProperty("商品ID")
    @Excel(name = "商品ID")
    private String productId;

    /** 商品名称 */
    @ApiModelProperty("商品名称")
    @Excel(name = "商品名称")
    private String productName;

    /** 商品图片 */
    @ApiModelProperty("商品图片")
    @Excel(name = "商品图片")
    private String productImg;

    /** skuID */
    @ApiModelProperty("skuID")
    @Excel(name = "skuID")
    private String skuId;

    /** sku名称 */
    @ApiModelProperty("sku名称")
    @Excel(name = "sku名称")
    private String skuName;

    /** 商品价格 */
    @ApiModelProperty("商品价格")
    @Excel(name = "商品价格")
    private BigDecimal productPrice;

    /** 购买数量 */
    @ApiModelProperty("购买数量")
    @Excel(name = "购买数量")
    private Long buyCounts;

    /** 商品总金额 */
    @ApiModelProperty("商品总金额")
    @Excel(name = "商品总金额")
    private BigDecimal totalAmount;

    /** 加入购物车时间 */
    @ApiModelProperty("加入购物车时间")
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "加入购物车时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date basketDate;

    /** 购买时间 */
    @ApiModelProperty("购买时间")
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "购买时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date buyTime;

    /** 评论状态： 0 未评价  1 已评价 */
    @ApiModelProperty("评论状态")
    @Excel(name = "评论状态： 0 未评价  1 已评价")
    private Long isComment;

    /** 是否招标，N否Y是 */
    @ApiModelProperty("是否招标")
    @Excel(name = "是否招标，N否Y是")
    private String isBid;

    public void setItemId(String itemId)
            {
            this.itemId = itemId;
            }

    public String getItemId()
            {
            return itemId;
            }
    public void setOrderId(String orderId)
            {
            this.orderId = orderId;
            }

    public String getOrderId()
            {
            return orderId;
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
    public void setProductImg(String productImg)
            {
            this.productImg = productImg;
            }

    public String getProductImg()
            {
            return productImg;
            }
    public void setSkuId(String skuId)
            {
            this.skuId = skuId;
            }

    public String getSkuId()
            {
            return skuId;
            }
    public void setSkuName(String skuName)
            {
            this.skuName = skuName;
            }

    public String getSkuName()
            {
            return skuName;
            }
    public void setProductPrice(BigDecimal productPrice)
            {
            this.productPrice = productPrice;
            }

    public BigDecimal getProductPrice()
            {
            return productPrice;
            }
    public void setBuyCounts(Long buyCounts)
            {
            this.buyCounts = buyCounts;
            }

    public Long getBuyCounts()
            {
            return buyCounts;
            }
    public void setTotalAmount(BigDecimal totalAmount)
            {
            this.totalAmount = totalAmount;
            }

    public BigDecimal getTotalAmount()
            {
            return totalAmount;
            }
    public void setBasketDate(Date basketDate)
            {
            this.basketDate = basketDate;
            }

    public Date getBasketDate()
            {
            return basketDate;
            }
    public void setBuyTime(Date buyTime)
            {
            this.buyTime = buyTime;
            }

    public Date getBuyTime()
            {
            return buyTime;
            }
    public void setIsComment(Long isComment)
            {
            this.isComment = isComment;
            }

    public Long getIsComment()
            {
            return isComment;
            }

    public void setIsBid(String isBid)
    {
        this.isBid = isBid;
    }

    public String getIsBid()
    {
        return isBid;
    }

@Override
public String toString(){
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("itemId",getItemId())
            .append("orderId",getOrderId())
            .append("productId",getProductId())
            .append("productName",getProductName())
            .append("productImg",getProductImg())
            .append("skuId",getSkuId())
            .append("skuName",getSkuName())
            .append("productPrice",getProductPrice())
            .append("buyCounts",getBuyCounts())
            .append("totalAmount",getTotalAmount())
            .append("basketDate",getBasketDate())
            .append("buyTime",getBuyTime())
            .append("isComment",getIsComment())
                .append("isBid",getIsBid())
        .toString();
        }
        }
