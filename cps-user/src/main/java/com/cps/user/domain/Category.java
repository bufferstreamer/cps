package com.cps.user.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.cps.common.annotation.Excel;
import com.cps.common.core.domain.BaseEntity;

/**
 * 【请填写功能名称】对象 category
 *
 * @author cps
 * @date 2022-09-21
 */
public class Category extends BaseEntity
        {
private static final long serialVersionUID=1L;

    /** $column.columnComment */
    private String categoryId;

    /** $column.columnComment */
            @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String categoryLevel;

    /** $column.columnComment */
            @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String parentId;

    /** $column.columnComment */
            @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String categoryName;

    public void setCategoryId(String categoryId)
            {
            this.categoryId = categoryId;
            }

    public String getCategoryId()
            {
            return categoryId;
            }
    public void setCategoryLevel(String categoryLevel)
            {
            this.categoryLevel = categoryLevel;
            }

    public String getCategoryLevel()
            {
            return categoryLevel;
            }
    public void setParentId(String parentId)
            {
            this.parentId = parentId;
            }

    public String getParentId()
            {
            return parentId;
            }
    public void setCategoryName(String categoryName)
            {
            this.categoryName = categoryName;
            }

    public String getCategoryName()
            {
            return categoryName;
            }

@Override
public String toString(){
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("categoryId",getCategoryId())
            .append("categoryLevel",getCategoryLevel())
            .append("parentId",getParentId())
            .append("categoryName",getCategoryName())
        .toString();
        }
        }
