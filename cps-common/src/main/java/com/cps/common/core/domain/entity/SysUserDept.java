package com.cps.common.core.domain.entity;

import com.cps.common.annotation.Excel;
import com.cps.common.core.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

/**
 * @描述：用户与公司关联对象
 * @日期：2022/9/13 18:53
 */
public class SysUserDept extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /**
     * 部门id
     */
    private Long id;

    /**
     * 用户主键
     */
    @Excel(name = "用户主键")
    private Long userId;

    /**
     * 部门主键
     */
    @Excel(name = "部门主键")
    private Long deptId;

    /**
     * 删除标志（0代表存在 2代表删除）
     */
    private String delFlag;

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

    public Long getDeptId() {
        return deptId;
    }

    public void setDeptId(Long deptId) {
        this.deptId = deptId;
    }

    public String getDelFlag() {
        return delFlag;
    }

    public void setDelFlag(String delFlag) {
        this.delFlag = delFlag;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
                .append("id", getId())
                .append("userId", getUserId())
                .append("deptId", getDeptId())
                .append("delFlag", getDelFlag())
                .append("createBy", getCreateBy())
                .append("createTime", getCreateTime())
                .append("updateBy", getUpdateBy())
                .append("updateTime", getUpdateTime())
                .append("remark", getRemark())
                .toString();
    }
}

