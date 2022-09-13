package com.cps.basis.vo;

import java.io.Serializable;
import java.math.BigDecimal;

/**
 * 折扣权限设定对象 wms_basis_discount_permission
 *
 * @author miki
 * @date 2021-06-15
 */
public class BasisDiscountPermissionVo implements Serializable {
    private static final long serialVersionUID = 1L;

    /**
     * id
     */
    private Long id;

    /**
     * 用户主键
     */
    private Long userId;

    /**
     * 最低折扣率
     */
    private BigDecimal minDiscountRate;

    /**
     * 最大折让金额
     */
    private BigDecimal maxDiscountPrice;

    /**
     * 用户名称
     */
    private String userName;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public BigDecimal getMinDiscountRate() {
        return minDiscountRate;
    }

    public void setMinDiscountRate(BigDecimal minDiscountRate) {
        this.minDiscountRate = minDiscountRate;
    }

    public BigDecimal getMaxDiscountPrice() {
        return maxDiscountPrice;
    }

    public void setMaxDiscountPrice(BigDecimal maxDiscountPrice) {
        this.maxDiscountPrice = maxDiscountPrice;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }
}
