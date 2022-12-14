package com.cps.wh.domain;

import com.cps.common.annotation.Excel;
import com.cps.common.core.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

/**
 * 库区设置对象 wms_wh_reservoir
 *
 * @author miki
 * @date 2021-05-21
 */
public class WhReservoir extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /**
     * 库区设置id
     */
    private Long id;

    /**
     * 库区编码
     */
    @Excel(name = "库区编码")
    private String reservoirCode;

    /**
     * 库区名称
     */
    @Excel(name = "库区名称")
    private String reservoirName;

    /**
     * 所属仓库
     */
    @Excel(name = "所属仓库")
    private Long warehouseId;

    /**
     * 删除标志（0代表存在 2代表删除）
     */
    private String delFlag;

    /**
     * 部门ID
     */
    @Excel(name = "部门ID")
    private Long deptId;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getReservoirCode() {
        return reservoirCode;
    }

    public void setReservoirCode(String reservoirCode) {
        this.reservoirCode = reservoirCode;
    }

    public String getReservoirName() {
        return reservoirName;
    }

    public void setReservoirName(String reservoirName) {
        this.reservoirName = reservoirName;
    }

    public Long getWarehouseId() {
        return warehouseId;
    }

    public void setWarehouseId(Long warehouseId) {
        this.warehouseId = warehouseId;
    }

    public String getDelFlag() {
        return delFlag;
    }

    public void setDelFlag(String delFlag) {
        this.delFlag = delFlag;
    }

    public Long getDeptId() {
        return deptId;
    }

    public void setDeptId(Long deptId) {
        this.deptId = deptId;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
                .append("id", getId())
                .append("reservoirCode", getReservoirCode())
                .append("reservoirName", getReservoirName())
                .append("warehouseId", getWarehouseId())
                .append("delFlag", getDelFlag())
                .append("createBy", getCreateBy())
                .append("createTime", getCreateTime())
                .append("updateBy", getUpdateBy())
                .append("updateTime", getUpdateTime())
                .append("remark", getRemark())
                .append("deptId", getDeptId())
                .toString();
    }
}
