package com.cps.user.domain;

import java.util.Date;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import com.cps.common.annotation.Excel;
import com.cps.common.core.domain.BaseEntity;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.ser.std.ToStringSerializer;

/**
 * 管理员角色对象 manager
 * 
 * @author cps
 * @date 2022-08-18
 */
public class Manager extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 管理员id */
    @JsonSerialize(using=ToStringSerializer.class)
    private Long managerId;

    /** 昵称 */
    @Excel(name = "昵称")
    private String nickname;

    /** 用户名 */
    private String username;

    /** 密码 */
    private String password;

    /** 证件类型 */
    private String contactCardType;

    /** 证件号 */
    private String contactCardId;

    /** 联系人姓名 */
    @Excel(name = "联系人姓名")
    private String contactName;

    /** 联系人电话号码 */
    @Excel(name = "联系人电话号码")
    private String contactPhoneNumber;

    /** 注册时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "注册时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date registerTime;

    /** 上次登录时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "上次登录时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date lastLogin;

    /** 角色状态 */
    @Excel(name = "角色状态")
    private String manageState;

    public void setManagerId(Long managerId) 
    {
        this.managerId = managerId;
    }

    public Long getManagerId() 
    {
        return managerId;
    }
    public void setNickname(String nickname) 
    {
        this.nickname = nickname;
    }

    public String getNickname() 
    {
        return nickname;
    }
    public void setUsername(String username) 
    {
        this.username = username;
    }

    public String getUsername() 
    {
        return username;
    }
    public void setPassword(String password) 
    {
        this.password = password;
    }

    public String getPassword() 
    {
        return password;
    }
    public void setContactCardType(String contactCardType) 
    {
        this.contactCardType = contactCardType;
    }

    public String getContactCardType() 
    {
        return contactCardType;
    }
    public void setContactCardId(String contactCardId) 
    {
        this.contactCardId = contactCardId;
    }

    public String getContactCardId() 
    {
        return contactCardId;
    }
    public void setContactName(String contactName) 
    {
        this.contactName = contactName;
    }

    public String getContactName() 
    {
        return contactName;
    }
    public void setContactPhoneNumber(String contactPhoneNumber) 
    {
        this.contactPhoneNumber = contactPhoneNumber;
    }

    public String getContactPhoneNumber() 
    {
        return contactPhoneNumber;
    }
    public void setRegisterTime(Date registerTime) 
    {
        this.registerTime = registerTime;
    }

    public Date getRegisterTime() 
    {
        return registerTime;
    }
    public void setLastLogin(Date lastLogin) 
    {
        this.lastLogin = lastLogin;
    }

    public Date getLastLogin() 
    {
        return lastLogin;
    }
    public void setManageState(String manageState) 
    {
        this.manageState = manageState;
    }

    public String getManageState() 
    {
        return manageState;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("managerId", getManagerId())
            .append("nickname", getNickname())
            .append("username", getUsername())
            .append("password", getPassword())
            .append("contactCardType", getContactCardType())
            .append("contactCardId", getContactCardId())
            .append("contactName", getContactName())
            .append("contactPhoneNumber", getContactPhoneNumber())
            .append("registerTime", getRegisterTime())
            .append("lastLogin", getLastLogin())
            .append("manageState", getManageState())
            .toString();
    }
}
