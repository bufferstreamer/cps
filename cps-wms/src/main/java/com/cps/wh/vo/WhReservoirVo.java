package com.cps.wh.vo;

import com.cps.common.core.domain.BaseEntity;

/**
 * 库区设置对象 wms_wh_reservoir
 *
 * @author miki
 * @date 2021-05-21
 */
public class WhReservoirVo extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /**
     * 库区设置id
     */
    private Long id;

    /**
     * 库区编码
     */
    private String reservoirCode;

    /**
     * 库区名称
     */
    private String reservoirName;

    /**
     * 所属仓库
     */
    private Long warehouseId;

    /**
     * 部门ID
     */
    private Long deptId;

    /*********扩展字段************/

    /**
     * 仓库名称
     */
    private String warehouseName;

    /**
     * 仓库编码
     */
    private String warehouseCode;

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

    public Long getDeptId() {
        return deptId;
    }

    public void setDeptId(Long deptId) {
        this.deptId = deptId;
    }

    public String getWarehouseName() {
        return warehouseName;
    }

    public void setWarehouseName(String warehouseName) {
        this.warehouseName = warehouseName;
    }

    public String getWarehouseCode() {
        return warehouseCode;
    }

    public void setWarehouseCode(String warehouseCode) {
        this.warehouseCode = warehouseCode;
    }
}
