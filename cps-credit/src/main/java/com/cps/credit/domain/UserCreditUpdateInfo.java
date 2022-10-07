package com.cps.credit.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.cps.common.annotation.Excel;
import com.cps.common.core.domain.BaseEntity;

/**
 * 用户信用评分更新信息对象 user_credit_update_info
 *
 * @author cps
 * @date 2022-10-04
 */
public class UserCreditUpdateInfo extends BaseEntity
        {
private static final long serialVersionUID=1L;

    /** 用户信用评分更新信息id（uuid） */
    private String userCreditUpdateInfoId;

    /** 用户信用评分id */
            @Excel(name = "用户信用评分id")
    private String userCreditId;

    /** 用户id */
            @Excel(name = "用户id")
    private Long userId;

    /** 更新状态（0初始化 1加分 2扣分） */
            @Excel(name = "更新状态", readConverterExp = "0=初始化,1=加分,2=扣分")
    private String updateStatus;

    /** 更新后评分 */
            @Excel(name = "更新后评分")
    private Long updatedCreditScore;

    /** 更新信息 */
            @Excel(name = "更新信息")
    private String updateInfo;

    /** 更新时间 */
            @JsonFormat(pattern = "yyyy-MM-dd")
            @Excel(name = "更新时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date updateDatetime;

    public void setUserCreditUpdateInfoId(String userCreditUpdateInfoId)
            {
            this.userCreditUpdateInfoId = userCreditUpdateInfoId;
            }

    public String getUserCreditUpdateInfoId()
            {
            return userCreditUpdateInfoId;
            }
    public void setUserCreditId(String userCreditId)
            {
            this.userCreditId = userCreditId;
            }

    public String getUserCreditId()
            {
            return userCreditId;
            }
    public void setUserId(Long userId)
            {
            this.userId = userId;
            }

    public Long getUserId()
            {
            return userId;
            }
    public void setUpdateStatus(String updateStatus)
            {
            this.updateStatus = updateStatus;
            }

    public String getUpdateStatus()
            {
            return updateStatus;
            }
    public void setUpdatedCreditScore(Long updatedCreditScore)
            {
            this.updatedCreditScore = updatedCreditScore;
            }

    public Long getUpdatedCreditScore()
            {
            return updatedCreditScore;
            }
    public void setUpdateInfo(String updateInfo)
            {
            this.updateInfo = updateInfo;
            }

    public String getUpdateInfo()
            {
            return updateInfo;
            }
    public void setUpdateDatetime(Date updateDatetime)
            {
            this.updateDatetime = updateDatetime;
            }

    public Date getUpdateDatetime()
            {
            return updateDatetime;
            }

@Override
public String toString(){
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("userCreditUpdateInfoId",getUserCreditUpdateInfoId())
            .append("userCreditId",getUserCreditId())
            .append("userId",getUserId())
            .append("updateStatus",getUpdateStatus())
            .append("updatedCreditScore",getUpdatedCreditScore())
            .append("updateInfo",getUpdateInfo())
            .append("updateDatetime",getUpdateDatetime())
        .toString();
        }
        }
