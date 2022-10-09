package com.cps.credit.task;

import com.cps.common.core.domain.entity.SysUser;
import com.cps.credit.domain.UserCredit;
import com.cps.credit.service.IUserCreditService;
import com.cps.system.service.ISysUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component("creditTask")
public class CreditTask {

    @Autowired
    private IUserCreditService userCreditService;

    @Autowired
    private ISysUserService userService;

    public void updateUserCreditByProfitability(){
        List<SysUser> bothList = new ArrayList<>();
        bothList = userService.selectSupperMarketAndSupplier();
        for(SysUser user:bothList){
            UserCredit userCredit = userCreditService.selectUserCreditByUserId(user.getUserId());
            double profit = 0;
            //(空缺）获取当前供应商/小商超的月流水 profit = xxx;
            userCreditService.updateUserCreditByProfitability(userCredit,profit);
        }

        System.out.println("根据盈利能力定时更新信用评分");
    }
    public void updateUserCreditByReturnRate(){
        List<SysUser> bothList = new ArrayList<>();
        bothList = userService.selectSupperMarketAndSupplier();
        for(SysUser user:bothList){
            UserCredit userCredit = userCreditService.selectUserCreditByUserId(user.getUserId());
            double returnRate = 0;
            //(空缺）获取当前供应商/小商超的退换货率 returnRate = xxx;
            userCreditService.updateUserCreditByReturnRate(userCredit,returnRate);
        }
        System.out.println("根据退换货率定时更新信用评分");
    }
}
