package com.cps.common.utils.uuid;

import org.apache.commons.lang3.RandomUtils;

import com.cps.common.enums.UserType;


/**
 * @描述：cps系统id生成工具
 * @日期：2022/8/17 19:39
 */
public class CpsIdUtils {
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
    }
}
