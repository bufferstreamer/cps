package com.cps.common.utils.uuid;

/**
 * @描述：cps系统id生成工具
 * @日期：2022/8/17 19:39
 */
public class CpsIdUtils {
    /**
     * 生成审核单id
     * @param userType 用户类型
     * @return 审核单id
     */
    public static String createChecklistId(char userType){
        long  timeNum =  System.currentTimeMillis()*1000;
        int randomNum = (int)((Math.random()*9+1)*10);
        String checklistId = String.valueOf(userType) + String.valueOf(timeNum) + String.valueOf(randomNum);
        return checklistId;
    }
}
