package com.cps.credit.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.cps.common.annotation.Excel;
import com.cps.common.core.domain.BaseEntity;

/**
 * 用户信用评价管理对象 user_credit
 *
 * @author cps
 * @date 2022-09-16
 */
public class UserCredit extends BaseEntity
        {
private static final long serialVersionUID=1L;

    /** 用户信用评分id（uuid） */
    private String userCreditId;

    /** 用户id */
            @Excel(name = "用户id")
    private Long userId;

    /** 用户昵称 */
            @Excel(name = "用户昵称")
    private String userName;

    /** 信用评分 */
            @Excel(name = "信用评分")
    private Long creditScore;

    /** 更新时间 */
            @JsonFormat(pattern = "yyyy-MM-dd")
            @Excel(name = "更新时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date updateDatetime;

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
    public void setUserName(String userName)
            {
            this.userName = userName;
            }

    public String getUserName()
            {
            return userName;
            }
    public void setCreditScore(Long creditScore)
            {
            this.creditScore = creditScore;
            }

    public Long getCreditScore()
            {
            return creditScore;
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
            .append("userCreditId",getUserCreditId())
            .append("userId",getUserId())
            .append("userName",getUserName())
            .append("creditScore",getCreditScore())
            .append("updateDatetime",getUpdateDatetime())
        .toString();
        }
        }
