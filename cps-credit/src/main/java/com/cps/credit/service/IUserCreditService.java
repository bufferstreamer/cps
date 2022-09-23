package com.cps.credit.service;

import java.util.List;

import com.cps.credit.domain.UserCredit;

/**
 * 用户信用评价管理Service接口
 *
 * @author cps
 * @date 2022-09-16
 */
public interface IUserCreditService {
    /**
     * 查询用户信用评价管理
     *
     * @param userCreditId 用户信用评价管理主键
     * @return 用户信用评价管理
     */
    public UserCredit selectUserCreditByUserCreditId(String userCreditId);

    /**
     * 通过用户id查询用户信用评价管理
     *
     * @param userId 用户id
     * @return 用户信用评价管理
     */
    public UserCredit selectUserCreditByUserId(long userId);

    /**
     * 查询用户信用评价管理列表
     *
     * @param userCredit 用户信用评价管理
     * @return 用户信用评价管理集合
     */
    public List<UserCredit> selectUserCreditList(UserCredit userCredit);

    /**
     * 新增用户信用评价管理
     *
     * @param userCredit 用户信用评价管理
     * @return 结果
     */
    public int insertUserCredit(UserCredit userCredit);

    /**
     * 修改用户信用评价管理
     *
     * @param userCredit 用户信用评价管理
     * @return 结果
     */
    public int updateUserCredit(UserCredit userCredit);

    /**
     * 批量删除用户信用评价管理
     *
     * @param userCreditIds 需要删除的用户信用评价管理主键集合
     * @return 结果
     */
    public int deleteUserCreditByUserCreditIds(String userCreditIds);

    /**
     * 删除用户信用评价管理信息
     *
     * @param userCreditId 用户信用评价管理主键
     * @return 结果
     */
    public int deleteUserCreditByUserCreditId(String userCreditId);

    /**
     * 删除所有用户信用评价管理信息记录
     */
    public int deleteAllUserCredit();

    /**
     * 增加用户信用评价分数
     * @param userCredit 用户信用评分对象
     * @param score 增加的分数
     * @return 结果
     */
    public int addUserCreditScore(UserCredit userCredit, int score);

    /**
     * 减少用户信用评价分数
     * @param userCredit 用户信用评分对象
     * @param score 减少的分数
     * @return 结果
     */
    public int reduceUserCreditScore(UserCredit userCredit, int score);

    /**
     * 初始化用户信用评价表
     *
     */
    public void initUserCredit();

    /**
     * 通过注册资本初始化供应商的信用评分
     * @param userCredit 要更新的对象
     * @param capital 注册资本值
     * @return 结果
     */
    public int initUserCreditByCapital(UserCredit userCredit,double capital);

    /**
     * 更新注册资本后更新信用评分
     * @param userCredit 要更新的对象
     * @param oldCapital 旧的注册资本值
     * @param newCapital 新的注册资本值
     * @return 结果
     */
    public int updateUserCreditByCapital(UserCredit userCredit,double oldCapital,double newCapital);

    /**
     * 检测注册资本等级
     * @param capital 注册资本
     * @return 结果
     */
    public int checkCapitalLevel(double capital);

    /**
     * 根据盈利能力更新信用评分
     * @param userCredit 要更新的对象
     * @param profit 流水
     * @return 结果
     */
    public int updateUserCreditByProfitability(UserCredit userCredit, double profit);

    /**
     * 根据退换货率更新信用评分
     * @param userCredit 要更新的对象
     * @param returnRate 退换货率
     * @return 结果
     */
    public int updateUserCreditByReturnRate(UserCredit userCredit, double returnRate);

    /**
     * 供应商成功交易更新信用评分
     * @param userCredit 更新对象
     * @return 结果
     */
    public int updateSupplierCreditWhenKeepAContract(UserCredit userCredit);

    /**
     * 供应商违约更新信用评分
     * @param userCredit 更新对象
     * @return 结果
     */
    public int updateSupplierCreditWhenBreakAContract(UserCredit userCredit);

    /**
     * 小商超成功交易更新信用评分
     * @param userCredit 更新对象
     * @return 结果
     */
    public int updateBusinessCreditWhenKeepAContract(UserCredit userCredit);

    /**
     * 小商超违约交易更新信用评分
     * @param userCredit 更新对象
     * @return 结果
     */
    public int updateBusinessCreditWhenBreakAContract(UserCredit userCredit);
}
