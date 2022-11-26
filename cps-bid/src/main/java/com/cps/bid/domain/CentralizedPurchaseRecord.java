package com.cps.bid.domain;

import com.cps.common.annotation.Excel;
import com.cps.common.core.domain.BaseEntity;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import java.util.Date;
//import io.swagger.annotations.*;

/**
 * 集中采购记录对象 centralized_purchase_record
 *
 * @author cps
 * @date 2022-09-03
 */
//@ApiModel(value = "CentralizedPurchaseRecord",description = "投标记录实体")
public class CentralizedPurchaseRecord extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /**
     * 集中采购记录ID
     */
    //@ApiModelProperty("主键")
    @Excel(name = "集中采购记录ID")
    private String centralizedPurchaseRecordId;

    /**
     * 标书ID
     */
    //@ApiModelProperty("标书ID")
    @Excel(name = "标书ID")
    private String tenderId;

    /**
     * 供应商ID
     */
    //@ApiModelProperty("供应商ID")
    @Excel(name = "供应商ID")
    private Long supplierId;

    /**
     * 投标文件存储信息
     */
    //@ApiModelProperty("投标文件存储信息")
    @Excel(name = "投标文件存储信息")
    private String tenderDocument;

    /**
     * 时间
     */
    //@ApiModelProperty("投标时间")
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date centralizedPurchaseRecordTime;

    /**
     * 是否中标“0”否 “1”是
     */
    //@ApiModelProperty("是否中标")
    @Excel(name = "是否中标“0”否 “1”是")
    private String isBid;

    public String getCentralizedPurchaseRecordId() {
        return centralizedPurchaseRecordId;
    }

    public void setCentralizedPurchaseRecordId(String centralizedPurchaseRecordId) {
        this.centralizedPurchaseRecordId = centralizedPurchaseRecordId;
    }

    public String getTenderId() {
        return tenderId;
    }

    public void setTenderId(String tenderId) {
        this.tenderId = tenderId;
    }

    public Long getSupplierId() {
        return supplierId;
    }

    public void setSupplierId(Long supplierId) {
        this.supplierId = supplierId;
    }

    public String getTenderDocument() {
        return tenderDocument;
    }

    public void setTenderDocument(String tenderDocument) {
        this.tenderDocument = tenderDocument;
    }

    public Date getCentralizedPurchaseRecordTime() {
        return centralizedPurchaseRecordTime;
    }

    public void setCentralizedPurchaseRecordTime(Date centralizedPurchaseRecordTime) {
        this.centralizedPurchaseRecordTime = centralizedPurchaseRecordTime;
    }

    public String getIsBid() {
        return isBid;
    }

    public void setIsBid(String isBid) {
        this.isBid = isBid;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
                .append("centralizedPurchaseRecordId", getCentralizedPurchaseRecordId())
                .append("tenderId", getTenderId())
                .append("supplierId", getSupplierId())
                .append("tenderDocument", getTenderDocument())
                .append("centralizedPurchaseRecordTime", getCentralizedPurchaseRecordTime())
                .append("isBid", getIsBid())
                .toString();
    }
}
