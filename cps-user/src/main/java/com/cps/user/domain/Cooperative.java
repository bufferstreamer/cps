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
 * 供销社角色对象 cooperative
 * 
 * @author cps
 * @date 2022-08-18
 */
public class Cooperative extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 供销社id */
    @JsonSerialize(using=ToStringSerializer.class)
    private Long gxsId;

    /** 供销社名称 */
    @Excel(name = "供销社名称")
    private String gxsName;

    /** 昵称 */
    @Excel(name = "昵称")
    private String nickname;

    /** 用户名 */
    private String username;

    /** 密码 */
    private String password;

    /** 供销社状态 */
    @Excel(name = "供销社状态")
    private String gxsState;

    /** 注册时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "注册时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date registerTime;

    /** 上次登陆时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "上次登陆时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date lastLogin;

    public void setGxsId(Long gxsId) 
    {
        this.gxsId = gxsId;
    }

    public Long getGxsId() 
    {
        return gxsId;
    }
    public void setGxsName(String gxsName) 
    {
        this.gxsName = gxsName;
    }

    public String getGxsName() 
    {
        return gxsName;
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
    public void setGxsState(String gxsState) 
    {
        this.gxsState = gxsState;
    }

    public String getGxsState() 
    {
        return gxsState;
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

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("gxsId", getGxsId())
            .append("gxsName", getGxsName())
            .append("nickname", getNickname())
            .append("username", getUsername())
            .append("password", getPassword())
            .append("gxsState", getGxsState())
            .append("registerTime", getRegisterTime())
            .append("lastLogin", getLastLogin())
            .toString();
    }
}
