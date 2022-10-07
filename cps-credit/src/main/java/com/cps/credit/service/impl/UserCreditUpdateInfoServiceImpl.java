package com.cps.credit.service.impl;

import java.util.List;

import com.cps.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.cps.credit.mapper.UserCreditUpdateInfoMapper;
import com.cps.credit.domain.UserCreditUpdateInfo;
import com.cps.credit.service.IUserCreditUpdateInfoService;
import com.cps.common.core.text.Convert;

/**
 * 用户信用评分更新信息Service业务层处理
 *
 * @author cps
 * @date 2022-10-04
 */
@Service
public class UserCreditUpdateInfoServiceImpl implements IUserCreditUpdateInfoService {
    @Autowired
    private UserCreditUpdateInfoMapper userCreditUpdateInfoMapper;

    /**
     * 查询用户信用评分更新信息
     *
     * @param userCreditUpdateInfoId 用户信用评分更新信息主键
     * @return 用户信用评分更新信息
     */
    @Override
    public UserCreditUpdateInfo selectUserCreditUpdateInfoByUserCreditUpdateInfoId(String userCreditUpdateInfoId) {
        return userCreditUpdateInfoMapper.selectUserCreditUpdateInfoByUserCreditUpdateInfoId(userCreditUpdateInfoId);
    }

    /**
     * 查询用户信用评分更新信息列表
     *
     * @param userCreditUpdateInfo 用户信用评分更新信息
     * @return 用户信用评分更新信息
     */
    @Override
    public List<UserCreditUpdateInfo> selectUserCreditUpdateInfoList(UserCreditUpdateInfo userCreditUpdateInfo) {
        return userCreditUpdateInfoMapper.selectUserCreditUpdateInfoList(userCreditUpdateInfo);
    }

    @Override
    public List<UserCreditUpdateInfo> selectUserCreditUpdateInfoListByUserId(Long UserId) {
        return userCreditUpdateInfoMapper.selectUserCreditUpdateInfoListByUserId(UserId);
    }

    /**
     * 新增用户信用评分更新信息
     *
     * @param userCreditUpdateInfo 用户信用评分更新信息
     * @return 结果
     */
    @Override
    public int insertUserCreditUpdateInfo(UserCreditUpdateInfo userCreditUpdateInfo) {
        return userCreditUpdateInfoMapper.insertUserCreditUpdateInfo(userCreditUpdateInfo);
    }

    /**
     * 修改用户信用评分更新信息
     *
     * @param userCreditUpdateInfo 用户信用评分更新信息
     * @return 结果
     */
    @Override
    public int updateUserCreditUpdateInfo(UserCreditUpdateInfo userCreditUpdateInfo) {
        userCreditUpdateInfo.setUpdateDatetime(DateUtils.parseDate(DateUtils.getTime()));
        return userCreditUpdateInfoMapper.updateUserCreditUpdateInfo(userCreditUpdateInfo);
    }

    /**
     * 批量删除用户信用评分更新信息
     *
     * @param userCreditUpdateInfoIds 需要删除的用户信用评分更新信息主键
     * @return 结果
     */
    @Override
    public int deleteUserCreditUpdateInfoByUserCreditUpdateInfoIds(String userCreditUpdateInfoIds) {
        return userCreditUpdateInfoMapper.deleteUserCreditUpdateInfoByUserCreditUpdateInfoIds(Convert.toStrArray(userCreditUpdateInfoIds));
    }

    /**
     * 删除用户信用评分更新信息信息
     *
     * @param userCreditUpdateInfoId 用户信用评分更新信息主键
     * @return 结果
     */
    @Override
    public int deleteUserCreditUpdateInfoByUserCreditUpdateInfoId(String userCreditUpdateInfoId) {
        return userCreditUpdateInfoMapper.deleteUserCreditUpdateInfoByUserCreditUpdateInfoId(userCreditUpdateInfoId);
    }
}
