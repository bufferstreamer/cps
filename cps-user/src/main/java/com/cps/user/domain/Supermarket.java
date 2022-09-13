package com.cps.user.domain;

import com.cps.common.annotation.Excel;
import com.cps.common.core.domain.BaseEntity;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.ser.std.ToStringSerializer;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import java.util.Date;

/**
 * 超市角色对象 supermarket
 *
 * @author cps
 * @date 2022-08-18
 */
public class Supermarket extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /**
     *
     */
    @JsonSerialize(using = ToStringSerializer.class)
    private Long shopId;

    /**
     * 超市名称
     */
    @Excel(name = "超市名称")
    private String shopName;

    /**
     * 昵称
     */
    @Excel(name = "昵称")
    private String nickname;

    /**
     * 用户名
     */
    private String username;

    /**
     * 密码
     */
    private String password;

    /**
     * 联系人姓名
     */
    @Excel(name = "联系人姓名")
    private String contactPerson;

    /**
     * 证件类型
     */
    private String contactCardType;

    /**
     * 证件号
     */
    private String cardId;

    /**
     * 联系人电话
     */
    @Excel(name = "联系人电话")
    private String contactPhone;

    /**
     * 联系人邮箱
     */
    @Excel(name = "联系人邮箱")
    private String contactEmail;

    /**
     * 注册时间
     */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "注册时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date registerTime;

    /**
     * 上次登陆时间
     */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "上次登陆时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date lastLogin;

    /**
     * 角色状态
     */
    @Excel(name = "角色状态")
    private String shopState;

    public Long getShopId() {
        return shopId;
    }

    public void setShopId(Long shopId) {
        this.shopId = shopId;
    }

    public String getShopName() {
        return shopName;
    }

    public void setShopName(String shopName) {
        this.shopName = shopName;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getContactPerson() {
        return contactPerson;
    }

    public void setContactPerson(String contactPerson) {
        this.contactPerson = contactPerson;
    }

    public String getContactCardType() {
        return contactCardType;
    }

    public void setContactCardType(String contactCardType) {
        this.contactCardType = contactCardType;
    }

    public String getCardId() {
        return cardId;
    }

    public void setCardId(String cardId) {
        this.cardId = cardId;
    }

    public String getContactPhone() {
        return contactPhone;
    }

    public void setContactPhone(String contactPhone) {
        this.contactPhone = contactPhone;
    }

    public String getContactEmail() {
        return contactEmail;
    }

    public void setContactEmail(String contactEmail) {
        this.contactEmail = contactEmail;
    }

    public Date getRegisterTime() {
        return registerTime;
    }

    public void setRegisterTime(Date registerTime) {
        this.registerTime = registerTime;
    }

    public Date getLastLogin() {
        return lastLogin;
    }

    public void setLastLogin(Date lastLogin) {
        this.lastLogin = lastLogin;
    }

    public String getShopState() {
        return shopState;
    }

    public void setShopState(String shopState) {
        this.shopState = shopState;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
                .append("shopId", getShopId())
                .append("shopName", getShopName())
                .append("nickname", getNickname())
                .append("username", getUsername())
                .append("password", getPassword())
                .append("contactPerson", getContactPerson())
                .append("contactCardType", getContactCardType())
                .append("cardId", getCardId())
                .append("contactPhone", getContactPhone())
                .append("contactEmail", getContactEmail())
                .append("registerTime", getRegisterTime())
                .append("lastLogin", getLastLogin())
                .append("shopState", getShopState())
                .toString();
    }
}
