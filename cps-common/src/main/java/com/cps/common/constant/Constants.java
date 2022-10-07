package com.cps.common.constant;

/**
 * 通用常量信息
 *
 * @author cps
 */
public class Constants {
    /**
     * UTF-8 字符集
     */
    public static final String UTF8 = "UTF-8";

    /**
     * GBK 字符集
     */
    public static final String GBK = "GBK";

    /**
     * http请求
     */
    public static final String HTTP = "http://";

    /**
     * https请求
     */
    public static final String HTTPS = "https://";

    /**
     * 通用成功标识
     */
    public static final String SUCCESS = "0";

    /**
     * 通用失败标识
     */
    public static final String FAIL = "1";

    /**
     * 登录成功
     */
    public static final String LOGIN_SUCCESS = "Success";

    /**
     * 注销
     */
    public static final String LOGOUT = "Logout";

    /**
     * 注册
     */
    public static final String REGISTER = "Register";

    /**
     * 登录失败
     */
    public static final String LOGIN_FAIL = "Error";

    /**
     * 系统用户授权缓存
     */
    public static final String SYS_AUTH_CACHE = "sys-authCache";

    /**
     * 参数管理 cache name
     */
    public static final String SYS_CONFIG_CACHE = "sys-config";

    /**
     * 参数管理 cache key
     */
    public static final String SYS_CONFIG_KEY = "sys_config:";

    /**
     * 字典管理 cache name
     */
    public static final String SYS_DICT_CACHE = "sys-dict";

    /**
     * 字典管理 cache key
     */
    public static final String SYS_DICT_KEY = "sys_dict:";

    /**
     * 资源映射路径 前缀
     */
    public static final String RESOURCE_PREFIX = "/profile";

    /**
     * RMI 远程方法调用
     */
    public static final String LOOKUP_RMI = "rmi:";

    /**
     * LDAP 远程方法调用
     */
    public static final String LOOKUP_LDAP = "ldap:";

    /**
     * LDAPS 远程方法调用
     */
    public static final String LOOKUP_LDAPS = "ldaps:";

    /**
     * 定时任务白名单配置（仅允许访问的包名，如其他需要可以自行添加）
     */
    public static final String[] JOB_WHITELIST_STR = {"com.cps"};

    /**
     * 定时任务违规的字符
     */
    public static final String[] JOB_ERROR_STR = {"java.net.URL", "javax.naming.InitialContext", "org.yaml.snakeyaml",
            "org.springframework", "org.apache", "com.cps.common.utils.file"};

    public final static String NAME_UNIQUE = "0";
    public final static String NAME_NOT_UNIQUE = "1";

    public final static long SYS_SUPPERMARKET_ROLEID = 102;
    public final static long SYS_SUPPLIER_ROLEID = 103;

    /**
     * 信用评分临界分数
     */
    public final static int CREDIT_SCORE_FULL = 95;
    public final static int CREDIT_SCORE_MAIN = 60;
    /**
     * 信用评分加减分基数
     */
    public final static int CREDIT_SCORE_ADD_BASE = 1;
    public final static int CREDIT_SCORE_REDUCE_BASE = 1;
    /**
     * 注册资本等级划分
     */
    public final static double REGISTERED_CAPITAL_LEVEL_1 = 100000;
    public final static double REGISTERED_CAPITAL_LEVEL_2 = 500000;
    public final static double REGISTERED_CAPITAL_LEVEL_3 = 2000000;
    public final static double REGISTERED_CAPITAL_LEVEL_4 = 5000000;
    public final static double REGISTERED_CAPITAL_LEVEL_5 = 10000000;
    /**
     * 盈利能力加减基数
     */
    public final static int TURNOVER_MONTH_CEILING = 500000;
    public final static int TURNOVER_MONTH_FLOOR = 100000;
    /**
     * 退换货率基数
     */
    public final static double RETURN_RATE = 0.05;
    /**
     * 供应商/小商超履约/违约加减分基数
     */
    public final static int SUPPLIER_KEEP_A_CONTRACT_ADD = 1;
    public final static int SUPPLIER_BREAK_A_CONTRACT_REDUCE = 5;
    public final static int BUSINESS_KEEP_A_CONTRACT_ADD = 1;
    public final static int BUSINESS_BREAK_A_CONTRACT_REDUCE = 1;
}