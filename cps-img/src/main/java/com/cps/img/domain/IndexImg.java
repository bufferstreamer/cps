package com.cps.img.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.cps.common.annotation.Excel;
import com.cps.common.core.domain.BaseEntity;

/**
 * 轮播图管理对象 index_img
 *
 * @author cps
 * @date 2022-10-27
 */
public class IndexImg extends BaseEntity
        {
private static final long serialVersionUID=1L;

    /** 主键 */
    private String imgId;

    /** 图片 */
            @Excel(name = "图片")
    private String imgUrl;

    /** 背景色 */
            @Excel(name = "背景色")
    private String imgBgColor;

    /** 商品id */
            @Excel(name = "商品id")
    private String prodId;

    /** 商品分类id */
            @Excel(name = "商品分类id")
    private String categoryId;

    /** 轮播图类型 */
            @Excel(name = "轮播图类型")
    private Long indexType;

    /** 轮播图展示顺序 */
            @Excel(name = "轮播图展示顺序")
    private Long seq;

    /** 是否展示 */
            @Excel(name = "是否展示")
    private Long status;

    public void setImgId(String imgId)
            {
            this.imgId = imgId;
            }

    public String getImgId()
            {
            return imgId;
            }
    public void setImgUrl(String imgUrl)
            {
            this.imgUrl = imgUrl;
            }

    public String getImgUrl()
            {
            return imgUrl;
            }
    public void setImgBgColor(String imgBgColor)
            {
            this.imgBgColor = imgBgColor;
            }

    public String getImgBgColor()
            {
            return imgBgColor;
            }
    public void setProdId(String prodId)
            {
            this.prodId = prodId;
            }

    public String getProdId()
            {
            return prodId;
            }
    public void setCategoryId(String categoryId)
            {
            this.categoryId = categoryId;
            }

    public String getCategoryId()
            {
            return categoryId;
            }
    public void setIndexType(Long indexType)
            {
            this.indexType = indexType;
            }

    public Long getIndexType()
            {
            return indexType;
            }
    public void setSeq(Long seq)
            {
            this.seq = seq;
            }

    public Long getSeq()
            {
            return seq;
            }
    public void setStatus(Long status)
            {
            this.status = status;
            }

    public Long getStatus()
            {
            return status;
            }

@Override
public String toString(){
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("imgId",getImgId())
            .append("imgUrl",getImgUrl())
            .append("imgBgColor",getImgBgColor())
            .append("prodId",getProdId())
            .append("categoryId",getCategoryId())
            .append("indexType",getIndexType())
            .append("seq",getSeq())
            .append("status",getStatus())
            .append("createTime",getCreateTime())
            .append("updateTime",getUpdateTime())
        .toString();
        }
        }
