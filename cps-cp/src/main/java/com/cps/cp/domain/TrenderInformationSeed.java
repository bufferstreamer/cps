package com.cps.cp.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.cps.common.annotation.Excel;
import com.cps.common.core.domain.BaseEntity;

/**
 * 生成标书小项对象 trender_information_seed
 *
 * @author cps
 * @date 2022-10-24
 */
public class TrenderInformationSeed extends BaseEntity
        {
private static final long serialVersionUID=1L;

    /** 标书小项id */
    private Long seedId;

    /** 商品id */
            @Excel(name = "商品id")
    private Long goodId;

    /** 商品名称 */
            @Excel(name = "商品名称")
    private String goodName;

    /** 指标名称 */
            @Excel(name = "指标名称")
    private String targetName;

    /** 指标要求 */
            @Excel(name = "指标要求")
    private String targetRequire;

    /** 需求数量 */
            @Excel(name = "需求数量")
    private String amount;

    /** 预算金额 */
            @Excel(name = "预算金额")
    private String budgent;

    /** 标书id */
            @Excel(name = "标书id")
    private Long trenderId;

    public void setSeedId(Long seedId)
            {
            this.seedId = seedId;
            }

    public Long getSeedId()
            {
            return seedId;
            }
    public void setGoodId(Long goodId)
            {
            this.goodId = goodId;
            }

    public Long getGoodId()
            {
            return goodId;
            }
    public void setGoodName(String goodName)
            {
            this.goodName = goodName;
            }

    public String getGoodName()
            {
            return goodName;
            }
    public void setTargetName(String targetName)
            {
            this.targetName = targetName;
            }

    public String getTargetName()
            {
            return targetName;
            }
    public void setTargetRequire(String targetRequire)
            {
            this.targetRequire = targetRequire;
            }

    public String getTargetRequire()
            {
            return targetRequire;
            }
    public void setAmount(String amount)
            {
            this.amount = amount;
            }

    public String getAmount()
            {
            return amount;
            }
    public void setBudgent(String budgent)
            {
            this.budgent = budgent;
            }

    public String getBudgent()
            {
            return budgent;
            }
    public void setTrenderId(Long trenderId)
            {
            this.trenderId = trenderId;
            }

    public Long getTrenderId()
            {
            return trenderId;
            }

@Override
public String toString(){
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("seedId",getSeedId())
            .append("goodId",getGoodId())
            .append("goodName",getGoodName())
            .append("targetName",getTargetName())
            .append("targetRequire",getTargetRequire())
            .append("amount",getAmount())
            .append("budgent",getBudgent())
            .append("trenderId",getTrenderId())
        .toString();
        }
        }
