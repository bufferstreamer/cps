package com.cps.user.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import java.util.Date;

public class Product {
    /**
     * 商品主键id
     */
    private String productId;

    /**
     * 商品名称 商品名称
     */
    private String productName;

    /** 分类外键id 分类id */
    private String categoryId;

    /**
     * 一级分类外键id 一级分类id，用于优化查询
     */
    private Integer rootCategoryId;

    /**
     * 销量 累计销售
     */
    private Integer soldNum;

    /**
     * 默认是1，表示正常状态, -1表示删除, 0下架 默认是1，表示正常状态, -1表示删除, 0下架
     */
    private Integer productStatus;

    /**
     * 创建时间
     */
    private Date createTime;

    /**
     * 更新时间
     */
    private Date updateTime;

    /**
     * 商品内容 商品内容
     */
    private String content;

    /** 是否投标“N”否 “Y”是 */
    private String isBid;

    /**
     * 获取商品主键id
     *
     * @return product_id - 商品主键id
     */
    public String getProductId() {
        return productId;
    }

    /**
     * 设置商品主键id
     *
     * @param productId 商品主键id
     */
    public void setProductId(String productId) {
        this.productId = productId;
    }

    /**
     * 获取商品名称 商品名称
     *
     * @return product_name - 商品名称 商品名称
     */
    public String getProductName() {
        return productName;
    }

    /**
     * 设置商品名称 商品名称
     *
     * @param productName 商品名称 商品名称
     */
    public void setProductName(String productName) {
        this.productName = productName;
    }

    /**
     * 获取分类外键id 分类id
     *
     * @return category_id - 分类外键id 分类id
     */
    public String getCategoryId() {
        return categoryId;
    }

    /**
     * 设置分类外键id 分类id
     *
     * @param categoryId 分类外键id 分类id
     */
    public void setCategoryId(String categoryId) {
        this.categoryId = categoryId;
    }

    /**
     * 获取一级分类外键id 一级分类id，用于优化查询
     *
     * @return root_category_id - 一级分类外键id 一级分类id，用于优化查询
     */
    public Integer getRootCategoryId() {
        return rootCategoryId;
    }

    /**
     * 设置一级分类外键id 一级分类id，用于优化查询
     *
     * @param rootCategoryId 一级分类外键id 一级分类id，用于优化查询
     */
    public void setRootCategoryId(Integer rootCategoryId) {
        this.rootCategoryId = rootCategoryId;
    }

    /**
     * 获取销量 累计销售
     *
     * @return sold_num - 销量 累计销售
     */
    public Integer getSoldNum() {
        return soldNum;
    }

    /**
     * 设置销量 累计销售
     *
     * @param soldNum 销量 累计销售
     */
    public void setSoldNum(Integer soldNum) {
        this.soldNum = soldNum;
    }

    /**
     * 获取默认是1，表示正常状态, -1表示删除, 0下架 默认是1，表示正常状态, -1表示删除, 0下架
     *
     * @return product_status - 默认是1，表示正常状态, -1表示删除, 0下架 默认是1，表示正常状态, -1表示删除, 0下架
     */
    public Integer getProductStatus() {
        return productStatus;
    }

    /**
     * 设置默认是1，表示正常状态, -1表示删除, 0下架 默认是1，表示正常状态, -1表示删除, 0下架
     *
     * @param productStatus 默认是1，表示正常状态, -1表示删除, 0下架 默认是1，表示正常状态, -1表示删除, 0下架
     */
    public void setProductStatus(Integer productStatus) {
        this.productStatus = productStatus;
    }

    /**
     * 获取创建时间
     *
     * @return create_time - 创建时间
     */
    public Date getCreateTime() {
        return createTime;
    }

    /**
     * 设置创建时间
     *
     * @param createTime 创建时间
     */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    /**
     * 获取更新时间
     *
     * @return update_time - 更新时间
     */
    public Date getUpdateTime() {
        return updateTime;
    }

    /**
     * 设置更新时间
     *
     * @param updateTime 更新时间
     */
    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    /**
     * 获取商品内容 商品内容
     *
     * @return content - 商品内容 商品内容
     */
    public String getContent() {
        return content;
    }

    /**
     * 设置商品内容 商品内容
     *
     * @param content 商品内容 商品内容
     */
    public void setContent(String content) {
        this.content = content;
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
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
                .append("productId",getProductId())
                .append("productName",getProductName())
                .append("categoryId",getCategoryId())
                .append("rootCategoryId",getRootCategoryId())
                .append("soldNum",getSoldNum())
                .append("productStatus",getProductStatus())
                .append("content",getContent())
                .append("createTime",getCreateTime())
                .append("updateTime",getUpdateTime())
                .append("isBid",getIsBid())
                .toString();
    }
}