package com.cps.common.utils.uuid;

import org.apache.commons.lang3.RandomUtils;

import com.cps.common.enums.UserType;


/**
 * @描述：cps系统id生成工具
 * @日期：2022/8/17 19:39
 */
public class CpsIdUtils {
<<<<<<< HEAD
	//生成四种角色的long型ID
	public static long GetLongID(UserType type) {
		String typeStr=String.valueOf(type.ordinal());
		
		String timeStr=String.valueOf(GetMicTime());
				
		int ran=RandomUtils.nextInt(10, 100);
		String randomStr=String.valueOf(ran);
		
		return Long.parseLong(typeStr+timeStr+randomStr);
	}
	
	//获取16位时间戳
    private static long GetMicTime() {
        long curTime = System.currentTimeMillis() * 1000;
        long nanoTime = System.nanoTime();
        return curTime + (nanoTime - nanoTime / 1000000 * 1000000) / 1000;
=======
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
>>>>>>> 0c415620d6494e216a828dae3b90e403b73ad2b7
    }
}
