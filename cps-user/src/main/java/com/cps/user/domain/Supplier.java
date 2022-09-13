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
 * 供应商角色对象 supplier
 *
 * @author cps
 * @date 2022-08-18
 */
public class Supplier extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /**
     *
     */
    @JsonSerialize(using = ToStringSerializer.class)
    private Long supplyId;

    /**
     * 昵称
     */
    @Excel(name = "昵称")
    private String nickname;

    /**
     * 公司名称
     */
    @Excel(name = "公司名称")
    private String companyName;

    /**
     * 用户名
     */
    private String username;

    /**
     * 密码
     */
    private String password;

    /**
     * 公司性质
     */
    @Excel(name = "公司性质")
    private String companyProperty;

    /**
     * 企业类型
     */
    @Excel(name = "企业类型")
    private String companyType;

    /**
     * 是否使用统一社会信用代码证
     */
    @Excel(name = "是否使用统一社会信用代码证")
    private String useCode;

    /**
     * 社会信用代码证号/组织机构代码证号
     */
    @Excel(name = "社会信用代码证号/组织机构代码证号")
    private String codeId;

    /**
     * 联系人姓名
     */
    @Excel(name = "联系人姓名")
    private String contactPerson;

    /**
     * 联系人证件类型
     */
    @Excel(name = "联系人证件类型")
    private String contactCardType;

    /**
     * 联系人证件号
     */
    @Excel(name = "联系人证件号")
    private String cardId;

    /**
     * 联系人电话号
     */
    @Excel(name = "联系人电话号")
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
     * 供应商状态
     */
    @Excel(name = "供应商状态")
    private String supplyState;

    public Long getSupplyId() {
        return supplyId;
    }

    public void setSupplyId(Long supplyId) {
        this.supplyId = supplyId;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
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

    public String getCompanyProperty() {
        return companyProperty;
    }

    public void setCompanyProperty(String companyProperty) {
        this.companyProperty = companyProperty;
    }

    public String getCompanyType() {
        return companyType;
    }

    public void setCompanyType(String companyType) {
        this.companyType = companyType;
    }

    public String getUseCode() {
        return useCode;
    }

    public void setUseCode(String useCode) {
        this.useCode = useCode;
    }

    public String getCodeId() {
        return codeId;
    }

    public void setCodeId(String codeId) {
        this.codeId = codeId;
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

    public String getSupplyState() {
        return supplyState;
    }

    public void setSupplyState(String supplyState) {
        this.supplyState = supplyState;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
                .append("supplyId", getSupplyId())
                .append("nickname", getNickname())
                .append("companyName", getCompanyName())
                .append("username", getUsername())
                .append("password", getPassword())
                .append("companyProperty", getCompanyProperty())
                .append("companyType", getCompanyType())
                .append("useCode", getUseCode())
                .append("codeId", getCodeId())
                .append("contactPerson", getContactPerson())
                .append("contactCardType", getContactCardType())
                .append("cardId", getCardId())
                .append("contactPhone", getContactPhone())
                .append("contactEmail", getContactEmail())
                .append("registerTime", getRegisterTime())
                .append("lastLogin", getLastLogin())
                .append("supplyState", getSupplyState())
                .toString();
    }
}
