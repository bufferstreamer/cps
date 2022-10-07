package com.cps.credit.service;

import java.util.List;

import com.cps.credit.domain.UserCreditUpdateInfo;

/**
 * 用户信用评分更新信息Service接口
 *
 * @author cps
 * @date 2022-10-04
 */
public interface IUserCreditUpdateInfoService {
    /**
     * 查询用户信用评分更新信息
     *
     * @param userCreditUpdateInfoId 用户信用评分更新信息主键
     * @return 用户信用评分更新信息
     */
    public UserCreditUpdateInfo selectUserCreditUpdateInfoByUserCreditUpdateInfoId(String userCreditUpdateInfoId);

    /**
     * 查询用户信用评分更新信息列表
     *
     * @param userCreditUpdateInfo 用户信用评分更新信息
     * @return 用户信用评分更新信息集合
     */
    public List<UserCreditUpdateInfo> selectUserCreditUpdateInfoList(UserCreditUpdateInfo userCreditUpdateInfo);

    /**
     * 根据用户id查询用户信用评分更新信息列表
     * @param UserId 用户id
     * @return 当前用户信用评分更新信息集合
     */
    public List<UserCreditUpdateInfo> selectUserCreditUpdateInfoListByUserId(Long UserId);

    /**
     * 新增用户信用评分更新信息
     *
     * @param userCreditUpdateInfo 用户信用评分更新信息
     * @return 结果
     */
    public int insertUserCreditUpdateInfo(UserCreditUpdateInfo userCreditUpdateInfo);

    /**
     * 修改用户信用评分更新信息
     *
     * @param userCreditUpdateInfo 用户信用评分更新信息
     * @return 结果
     */
    public int updateUserCreditUpdateInfo(UserCreditUpdateInfo userCreditUpdateInfo);

    /**
     * 批量删除用户信用评分更新信息
     *
     * @param userCreditUpdateInfoIds 需要删除的用户信用评分更新信息主键集合
     * @return 结果
     */
    public int deleteUserCreditUpdateInfoByUserCreditUpdateInfoIds(String userCreditUpdateInfoIds);

    /**
     * 删除用户信用评分更新信息信息
     *
     * @param userCreditUpdateInfoId 用户信用评分更新信息主键
     * @return 结果
     */
    public int deleteUserCreditUpdateInfoByUserCreditUpdateInfoId(String userCreditUpdateInfoId);
}
