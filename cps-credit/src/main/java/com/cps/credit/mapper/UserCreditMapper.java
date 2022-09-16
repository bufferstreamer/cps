package com.cps.credit.mapper;

import java.util.List;

import com.cps.credit.domain.UserCredit;

/**
 * 用户信用评价管理Mapper接口
 *
 * @author cps
 * @date 2022-09-16
 */
public interface UserCreditMapper {
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
     * 删除用户信用评价管理
     *
     * @param userCreditId 用户信用评价管理主键
     * @return 结果
     */
    public int deleteUserCreditByUserCreditId(String userCreditId);

    /**
     * 批量删除用户信用评价管理
     *
     * @param userCreditIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteUserCreditByUserCreditIds(String[] userCreditIds);

    /**
     * 删除所有用户信用评价信息
     *
     * @return 结果
     */
    public int deleteAllUserCredit();
}
