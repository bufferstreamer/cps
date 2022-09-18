package com.cps.user.service.impl;

import com.cps.common.core.text.Convert;
import com.cps.common.enums.UserType;
import com.cps.common.utils.DateUtils;
import com.cps.common.utils.uuid.CpsIdUtils;
import com.cps.user.domain.Manager;
import com.cps.user.mapper.ManagerMapper;
import com.cps.user.service.IManagerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 管理员角色Service业务层处理
 *
 * @author cps
 * @date 2022-08-18
 */
@Service
public class ManagerServiceImpl implements IManagerService {
    @Autowired
    private ManagerMapper managerMapper;

    /**
     * 查询管理员角色
     *
     * @param managerId 管理员角色主键
     * @return 管理员角色
     */
    @Override
    public Manager selectManagerByManagerId(Long managerId) {
        return managerMapper.selectManagerByManagerId(managerId);
    }

    /**
     * 查询管理员角色列表
     *
     * @param manager 管理员角色
     * @return 管理员角色
     */
    @Override
    public List<Manager> selectManagerList(Manager manager) {
        return managerMapper.selectManagerList(manager);
    }

    /**
     * 新增管理员角色
     *
     * @param manager 管理员角色
     * @return 结果
     */
    @Override
    public int insertManager(Manager manager) {
        manager.setManagerId(CpsIdUtils.GetLongID(UserType.Manager));
        manager.setRegisterTime(DateUtils.getNowDate());
        manager.setManageState("0");
        return managerMapper.insertManager(manager);
    }

    /**
     * 修改管理员角色
     *
     * @param manager 管理员角色
     * @return 结果
     */
    @Override
    public int updateManager(Manager manager) {
        return managerMapper.updateManager(manager);
    }

    /**
     * 批量删除管理员角色
     *
     * @param managerIds 需要删除的管理员角色主键
     * @return 结果
     */
    @Override
    public int deleteManagerByManagerIds(String managerIds) {
        return managerMapper.deleteManagerByManagerIds(Convert.toStrArray(managerIds));
    }

    /**
     * 删除管理员角色信息
     *
     * @param managerId 管理员角色主键
     * @return 结果
     */
    @Override
    public int deleteManagerByManagerId(Long managerId) {
        return managerMapper.deleteManagerByManagerId(managerId);
    }
}
