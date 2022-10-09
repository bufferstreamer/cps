package com.cps.credit.service.impl;

import java.util.List;


import com.cps.common.constant.Constants;
import com.cps.common.core.domain.entity.SysUser;
import com.cps.common.utils.DateUtils;
import com.cps.common.utils.uuid.IdUtils;
import com.cps.credit.domain.UserCreditUpdateInfo;
import com.cps.credit.mapper.UserCreditUpdateInfoMapper;
import com.cps.system.domain.SysUserRole;
import com.cps.system.mapper.SysUserMapper;
import com.cps.system.mapper.SysUserRoleMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.cps.credit.mapper.UserCreditMapper;
import com.cps.credit.domain.UserCredit;
import com.cps.credit.service.IUserCreditService;
import com.cps.common.core.text.Convert;

/**
 * 用户信用评价管理Service业务层处理
 *
 * @author cps
 * @date 2022-09-16
 */
@Service
public class UserCreditServiceImpl implements IUserCreditService {
    @Autowired
    private UserCreditMapper userCreditMapper;

    @Autowired
    private SysUserRoleMapper userRoleMapper;

    @Autowired
    private SysUserMapper userMapper;

    @Autowired
    private UserCreditUpdateInfoMapper userCreditUpdateInfoMapper;

    /**
     * 查询用户信用评价管理
     *
     * @param userCreditId 用户信用评价管理主键
     * @return 用户信用评价管理
     */
    @Override
    public UserCredit selectUserCreditByUserCreditId(String userCreditId) {
        return userCreditMapper.selectUserCreditByUserCreditId(userCreditId);
    }

    @Override
    public UserCredit selectUserCreditByUserId(long userId) {
        return userCreditMapper.selectUserCreditByUserId(userId);
    }

    /**
     * 查询用户信用评价管理列表
     *
     * @param userCredit 用户信用评价管理
     * @return 用户信用评价管理
     */
    @Override
    public List<UserCredit> selectUserCreditList(UserCredit userCredit) {
        return userCreditMapper.selectUserCreditList(userCredit);
    }

    /**
     * 新增用户信用评价管理
     *
     * @param userCredit 用户信用评价管理
     * @return 结果
     */
    @Override
    public int insertUserCredit(UserCredit userCredit) {
            return userCreditMapper.insertUserCredit(userCredit);
    }

    /**
     * 修改用户信用评价管理
     *
     * @param userCredit 用户信用评价管理
     * @return 结果
     */
    @Override
    public int updateUserCredit(UserCredit userCredit) {
        userCredit.setUpdateDatetime(DateUtils.parseDate(DateUtils.getTime()));
        return userCreditMapper.updateUserCredit(userCredit);
    }

    /**
     * 批量删除用户信用评价管理
     *
     * @param userCreditIds 需要删除的用户信用评价管理主键
     * @return 结果
     */
    @Override
    public int deleteUserCreditByUserCreditIds(String userCreditIds) {
        return userCreditMapper.deleteUserCreditByUserCreditIds(Convert.toStrArray(userCreditIds));
    }

    /**
     * 删除用户信用评价管理信息
     *
     * @param userCreditId 用户信用评价管理主键
     * @return 结果
     */
    @Override
    public int deleteUserCreditByUserCreditId(String userCreditId) {
        return userCreditMapper.deleteUserCreditByUserCreditId(userCreditId);
    }

    /**
     * 删除所有用户信用评价管理信息记录
     */
    @Override
    public int deleteAllUserCredit() {
        return userCreditMapper.deleteAllUserCredit();
    }

    /**
     * 增加用户信用评价分数
     * @param userCredit 用户信用评分对象
     * @param score 增加的分数
     * @return 结果
     */
    @Override
    public int addUserCreditScore(UserCredit userCredit, int score) {
        int newScore = (int) (userCredit.getCreditScore() + score);
        if(newScore > 100){
            newScore = 100;
        }
        userCredit.setCreditScore((long) newScore);
        userCredit.setUpdateDatetime(DateUtils.parseDate(DateUtils.getTime()));
        return updateUserCredit(userCredit);
    }

    /**
     * 减少用户信用评价分数
     * @param userCredit 用户信用评分对象
     * @param score 减少的分数
     * @return 结果
     */
    @Override
    public int reduceUserCreditScore(UserCredit userCredit, int score) {
        int newScore = (int) (userCredit.getCreditScore() - score);
        if(newScore < 0){
            newScore = 0;
        }
        userCredit.setCreditScore((long) newScore);
        userCredit.setUpdateDatetime(DateUtils.parseDate(DateUtils.getTime()));
        return updateUserCredit(userCredit);
    }

    /**
     * 初始化用户信用评价表
     *
     */
    @Override
    public void initUserCredit() {
        deleteAllUserCredit();
        List<SysUserRole> userRoleList = userRoleMapper.selectAllUserRoleInfos();
        for(SysUserRole userRole:userRoleList){
            if(userRole.getRoleId()==Constants.SYS_SUPPERMARKET_ROLEID||userRole.getRoleId()==Constants.SYS_SUPPLIER_ROLEID){
                UserCredit userCredit = new UserCredit();
                userCredit.setUserCreditId(IdUtils.simpleUUID());
                userCredit.setCreditScore((long) Constants.CREDIT_SCORE_FULL);
                userCredit.setUserId(userRole.getUserId());
                SysUser user = userMapper.selectUserById(userRole.getUserId());
                userCredit.setUserName(user.getUserName());
                userCredit.setUpdateDatetime(DateUtils.parseDate(DateUtils.getTime()));
                insertUserCredit(userCredit);
                UserCreditUpdateInfo userCreditUpdateInfo = new UserCreditUpdateInfo();
                userCreditUpdateInfo.setUserCreditUpdateInfoId(IdUtils.fastSimpleUUID());
                userCreditUpdateInfo.setUserCreditId(userCredit.getUserCreditId());
                userCreditUpdateInfo.setUserId(userCredit.getUserId());
                userCreditUpdateInfo.setUpdateStatus("0");
                userCreditUpdateInfo.setUpdatedCreditScore(userCredit.getCreditScore());
                userCreditUpdateInfo.setUpdateInfo("初始化");
                userCreditUpdateInfo.setUpdateDatetime(userCredit.getUpdateDatetime());
                userCreditUpdateInfoMapper.insertUserCreditUpdateInfo(userCreditUpdateInfo);
            }
        }
    }

    /**
     * 通过注册资本初始化供应商的信用评分
     * @param userCredit 要更新的对象
     * @param capital 注册资本值
     * @return 结果
     */
    @Override
    public int initUserCreditByCapital(UserCredit userCredit, double capital) {
        int ans = addUserCreditScore(userCredit,checkCapitalLevel(capital));
        UserCreditUpdateInfo userCreditUpdateInfo = new UserCreditUpdateInfo();
        userCreditUpdateInfo.setUserCreditUpdateInfoId(IdUtils.fastSimpleUUID());
        userCreditUpdateInfo.setUserCreditId(userCredit.getUserCreditId());
        userCreditUpdateInfo.setUserId(userCredit.getUserId());
        userCreditUpdateInfo.setUpdateStatus("1");
        userCreditUpdateInfo.setUpdatedCreditScore(userCredit.getCreditScore());
        userCreditUpdateInfo.setUpdateInfo("根据初始注册资本修改");
        userCreditUpdateInfo.setUpdateDatetime(userCredit.getUpdateDatetime());
        userCreditUpdateInfoMapper.insertUserCreditUpdateInfo(userCreditUpdateInfo);
        return ans;
    }

    /**
     * 更新注册资本后更新信用评分
     * @param userCredit 要更新的对象
     * @param oldCapital 旧的注册资本值
     * @param newCapital 新的注册资本值
     * @return 结果
     */
    @Override
    public int updateUserCreditByCapital(UserCredit userCredit, double oldCapital, double newCapital) {
        int oldLevel = checkCapitalLevel(oldCapital);
        int newLevel = checkCapitalLevel(newCapital);
        int ans = 0;
        UserCreditUpdateInfo userCreditUpdateInfo = new UserCreditUpdateInfo();
        userCreditUpdateInfo.setUserCreditUpdateInfoId(IdUtils.fastSimpleUUID());
        userCreditUpdateInfo.setUserCreditId(userCredit.getUserCreditId());
        userCreditUpdateInfo.setUserId(userCredit.getUserId());
        userCreditUpdateInfo.setUpdateInfo("注册资本更新修改");
        if(oldLevel<=newLevel) {
            ans = addUserCreditScore(userCredit,newLevel-oldLevel);
            userCreditUpdateInfo.setUpdateStatus("1");
        }
        else {
            ans = reduceUserCreditScore(userCredit,oldLevel-newLevel);
            userCreditUpdateInfo.setUpdateStatus("2");
        }
        userCreditUpdateInfo.setUpdatedCreditScore(userCredit.getCreditScore());
        userCreditUpdateInfo.setUpdateDatetime(userCredit.getUpdateDatetime());
        userCreditUpdateInfoMapper.insertUserCreditUpdateInfo(userCreditUpdateInfo);
        return ans;
    }

    /**
     * 检测注册资本等级
     * @param capital 注册资本
     * @return 结果
     */
    @Override
    public int checkCapitalLevel(double capital) {
        if(capital<Constants.REGISTERED_CAPITAL_LEVEL_1) return 0;
        else if(capital<Constants.REGISTERED_CAPITAL_LEVEL_2)return 1;
        else if(capital<Constants.REGISTERED_CAPITAL_LEVEL_3)return 2;
        else if(capital<Constants.REGISTERED_CAPITAL_LEVEL_4)return 3;
        else if(capital<Constants.REGISTERED_CAPITAL_LEVEL_5)return 4;
        else return 5;
    }

    /**
     * 根据盈利能力更新信用评分
     * @param userCredit 要更新的对象
     * @param profit 流水
     * @return 结果
     */
    @Override
    public int updateUserCreditByProfitability(UserCredit userCredit, double profit) {
        int ans = 0;
        UserCreditUpdateInfo userCreditUpdateInfo = new UserCreditUpdateInfo();
        userCreditUpdateInfo.setUserCreditUpdateInfoId(IdUtils.fastSimpleUUID());
        userCreditUpdateInfo.setUserCreditId(userCredit.getUserCreditId());
        userCreditUpdateInfo.setUserId(userCredit.getUserId());
        userCreditUpdateInfo.setUpdateInfo("根据上月盈利情况修改");
        if(profit>=Constants.TURNOVER_MONTH_CEILING) {
            ans = addUserCreditScore(userCredit,Constants.CREDIT_SCORE_ADD_BASE);
            userCreditUpdateInfo.setUpdateStatus("1");
        }
        if(profit<Constants.TURNOVER_MONTH_FLOOR) {
            ans = reduceUserCreditScore(userCredit,Constants.CREDIT_SCORE_REDUCE_BASE);
            userCreditUpdateInfo.setUpdateStatus("2");
        }
        userCreditUpdateInfo.setUpdatedCreditScore(userCredit.getCreditScore());
        userCreditUpdateInfo.setUpdateDatetime(userCredit.getUpdateDatetime());
        userCreditUpdateInfoMapper.insertUserCreditUpdateInfo(userCreditUpdateInfo);
        return ans;
    }

    /**
     * 根据退换货率更新信用评分
     * @param userCredit 要更新的对象
     * @param returnRate 退换货率
     * @return 结果
     */
    @Override
    public int updateUserCreditByReturnRate(UserCredit userCredit, double returnRate) {
        int ans = 0;
        UserCreditUpdateInfo userCreditUpdateInfo = new UserCreditUpdateInfo();
        userCreditUpdateInfo.setUserCreditUpdateInfoId(IdUtils.fastSimpleUUID());
        userCreditUpdateInfo.setUserCreditId(userCredit.getUserCreditId());
        userCreditUpdateInfo.setUserId(userCredit.getUserId());
        userCreditUpdateInfo.setUpdateInfo("根据上月退换货率修改");
        if(returnRate>Constants.RETURN_RATE) {
            ans = reduceUserCreditScore(userCredit, Constants.CREDIT_SCORE_REDUCE_BASE);
            userCreditUpdateInfo.setUpdateStatus("2");
        }else{
            ans = addUserCreditScore(userCredit, Constants.CREDIT_SCORE_ADD_BASE);
            userCreditUpdateInfo.setUpdateStatus("1");
        }
        userCreditUpdateInfo.setUpdatedCreditScore(userCredit.getCreditScore());
        userCreditUpdateInfo.setUpdateDatetime(userCredit.getUpdateDatetime());
        userCreditUpdateInfoMapper.insertUserCreditUpdateInfo(userCreditUpdateInfo);
        return ans;
    }

    /**
     * 供应商成功交易更新信用评分
     * @param userCredit 更新对象
     * @return 结果
     */
    @Override
    public int updateSupplierCreditWhenKeepAContract(UserCredit userCredit) {
        int ans = addUserCreditScore(userCredit,Constants.SUPPLIER_KEEP_A_CONTRACT_ADD);
        UserCreditUpdateInfo userCreditUpdateInfo = new UserCreditUpdateInfo();
        userCreditUpdateInfo.setUserCreditUpdateInfoId(IdUtils.fastSimpleUUID());
        userCreditUpdateInfo.setUserCreditId(userCredit.getUserCreditId());
        userCreditUpdateInfo.setUserId(userCredit.getUserId());
        userCreditUpdateInfo.setUpdateStatus("1");
        userCreditUpdateInfo.setUpdatedCreditScore(userCredit.getCreditScore());
        userCreditUpdateInfo.setUpdateInfo("成功交易");
        userCreditUpdateInfo.setUpdateDatetime(userCredit.getUpdateDatetime());
        userCreditUpdateInfoMapper.insertUserCreditUpdateInfo(userCreditUpdateInfo);
        return ans;
    }

    /**
     * 供应商违约更新信用评分
     * @param userCredit 更新对象
     * @return 结果
     */
    @Override
    public int updateSupplierCreditWhenBreakAContract(UserCredit userCredit) {
        int ans = reduceUserCreditScore(userCredit,Constants.SUPPLIER_BREAK_A_CONTRACT_REDUCE);
        UserCreditUpdateInfo userCreditUpdateInfo = new UserCreditUpdateInfo();
        userCreditUpdateInfo.setUserCreditUpdateInfoId(IdUtils.fastSimpleUUID());
        userCreditUpdateInfo.setUserCreditId(userCredit.getUserCreditId());
        userCreditUpdateInfo.setUserId(userCredit.getUserId());
        userCreditUpdateInfo.setUpdateStatus("2");
        userCreditUpdateInfo.setUpdatedCreditScore(userCredit.getCreditScore());
        userCreditUpdateInfo.setUpdateInfo("违约");
        userCreditUpdateInfo.setUpdateDatetime(userCredit.getUpdateDatetime());
        userCreditUpdateInfoMapper.insertUserCreditUpdateInfo(userCreditUpdateInfo);
        return ans;
    }

    /**
     * 小商超成功交易更新信用评分
     * @param userCredit 更新对象
     * @return 结果
     */
    @Override
    public int updateBusinessCreditWhenKeepAContract(UserCredit userCredit) {
        int ans = addUserCreditScore(userCredit,Constants.BUSINESS_KEEP_A_CONTRACT_ADD);
        UserCreditUpdateInfo userCreditUpdateInfo = new UserCreditUpdateInfo();
        userCreditUpdateInfo.setUserCreditUpdateInfoId(IdUtils.fastSimpleUUID());
        userCreditUpdateInfo.setUserCreditId(userCredit.getUserCreditId());
        userCreditUpdateInfo.setUserId(userCredit.getUserId());
        userCreditUpdateInfo.setUpdateStatus("1");
        userCreditUpdateInfo.setUpdatedCreditScore(userCredit.getCreditScore());
        userCreditUpdateInfo.setUpdateInfo("成功交易");
        userCreditUpdateInfo.setUpdateDatetime(userCredit.getUpdateDatetime());
        userCreditUpdateInfoMapper.insertUserCreditUpdateInfo(userCreditUpdateInfo);
        return ans;
    }

    /**
     * 小商超违约交易更新信用评分
     * @param userCredit 更新对象
     * @return 结果
     */
    @Override
    public int updateBusinessCreditWhenBreakAContract(UserCredit userCredit) {
        int ans = reduceUserCreditScore(userCredit,Constants.BUSINESS_BREAK_A_CONTRACT_REDUCE);
        UserCreditUpdateInfo userCreditUpdateInfo = new UserCreditUpdateInfo();
        userCreditUpdateInfo.setUserCreditUpdateInfoId(IdUtils.fastSimpleUUID());
        userCreditUpdateInfo.setUserCreditId(userCredit.getUserCreditId());
        userCreditUpdateInfo.setUserId(userCredit.getUserId());
        userCreditUpdateInfo.setUpdateStatus("2");
        userCreditUpdateInfo.setUpdatedCreditScore(userCredit.getCreditScore());
        userCreditUpdateInfo.setUpdateInfo("违约");
        userCreditUpdateInfo.setUpdateDatetime(userCredit.getUpdateDatetime());
        userCreditUpdateInfoMapper.insertUserCreditUpdateInfo(userCreditUpdateInfo);
        return ans;
    }

    @Override
    public int updateUserCreditByAdmin(UserCredit userCredit) {
        UserCredit OldUserCredit = userCreditMapper.selectUserCreditByUserCreditId(userCredit.getUserCreditId());
        Long oldScore = OldUserCredit.getCreditScore();
        Long newScore = userCredit.getCreditScore();
        UserCreditUpdateInfo userCreditUpdateInfo = new UserCreditUpdateInfo();
        userCreditUpdateInfo.setUserCreditUpdateInfoId(IdUtils.fastSimpleUUID());
        userCreditUpdateInfo.setUserCreditId(userCredit.getUserCreditId());
        userCreditUpdateInfo.setUserId(userCredit.getUserId());
        userCreditUpdateInfo.setUpdatedCreditScore(userCredit.getCreditScore());
        userCreditUpdateInfo.setUpdateInfo("管理员修改: "+userCredit.getUserName());
        userCreditUpdateInfo.setUpdateDatetime(DateUtils.parseDate(DateUtils.getTime()));
        if(oldScore > newScore){
            userCreditUpdateInfo.setUpdateStatus("2");
        }else if(newScore > oldScore){
            userCreditUpdateInfo.setUpdateStatus("1");
        }
        userCredit.setUserName(null);
        userCreditUpdateInfoMapper.insertUserCreditUpdateInfo(userCreditUpdateInfo);
        return updateUserCredit(userCredit);
    }
}
