package com.cps.common.enums;

/**
 * @描述：公共状态
 * @日期：2022/9/13 18:45
 */
public enum Status {
    OK("0", "正常"), DISABLE("1", "停用"), DELETED("2", "删除");

    private final String code;
    private final String info;

    Status(String code, String info)
    {
        this.code = code;
        this.info = info;
    }

    public String getCode()
    {
        return code;
    }

    public String getInfo()
    {
        return info;
    }
}
