package com.cps.credit.service.impl;

import java.util.List;

import com.cps.audit.domain.AuditDocuments;
import com.cps.audit.service.IAuditDocumentsService;
import com.cps.common.core.domain.entity.SysUser;
import com.cps.common.utils.DateUtils;
import com.cps.common.utils.uuid.IdUtils;
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
    private IAuditDocumentsService auditDocumentsService;

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
            userCredit.setUserCreditId(IdUtils.simpleUUID());
            userCredit.setUpdateDatetime(DateUtils.parseDate(DateUtils.getTime()));
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
//        //权限剥夺
//        if(newScore < CREDIT_SCORE_MAIN){
//            List<AuditDocuments> auditDocumentsList = auditDocumentsService.selectAuditDocumentsByUserId(userCredit.getUserId());
//            for(AuditDocuments auditDocuments:auditDocumentsList){
//                auditDocuments.setAuditStatus("1");
//                auditDocuments.setUpdateDatetime(DateUtils.parseDate(DateUtils.getTime()));
//                auditDocumentsService.updateAuditDocuments(auditDocuments);
//            }
//        }
        userCredit.setCreditScore((long) newScore);
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
            if(userRole.getRoleId()!=1){
                UserCredit userCredit = new UserCredit();
                userCredit.setUserId(userRole.getUserId());
                SysUser user = userMapper.selectUserById(userRole.getUserId());
                userCredit.setUserName(user.getUserName());
                insertUserCredit(userCredit);
            }
        }
    }
}
