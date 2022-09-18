package com.cps.user.mapper;

import com.cps.user.domain.Manager;

import java.util.List;

/**
 * 管理员角色Mapper接口
 *
 * @author cps
 * @date 2022-08-18
 */
public interface ManagerMapper {
    /**
     * 查询管理员角色
     *
     * @param managerId 管理员角色主键
     * @return 管理员角色
     */
    public Manager selectManagerByManagerId(Long managerId);

    /**
     * 查询管理员角色列表
     *
     * @param manager 管理员角色
     * @return 管理员角色集合
     */
    public List<Manager> selectManagerList(Manager manager);

    /**
     * 新增管理员角色
     *
     * @param manager 管理员角色
     * @return 结果
     */
    public int insertManager(Manager manager);

    /**
     * 修改管理员角色
     *
     * @param manager 管理员角色
     * @return 结果
     */
    public int updateManager(Manager manager);

    /**
     * 删除管理员角色
     *
     * @param managerId 管理员角色主键
     * @return 结果
     */
    public int deleteManagerByManagerId(Long managerId);

    /**
     * 批量删除管理员角色
     *
     * @param managerIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteManagerByManagerIds(String[] managerIds);
}
