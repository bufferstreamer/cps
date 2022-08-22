package com.cps.user.service;

import java.util.List;
import com.cps.user.domain.Manager;

/**
 * 管理员角色Service接口
 * 
 * @author cps
 * @date 2022-08-18
 */
public interface IManagerService 
{
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
     * 批量删除管理员角色
     * 
     * @param managerIds 需要删除的管理员角色主键集合
     * @return 结果
     */
    public int deleteManagerByManagerIds(String managerIds);

    /**
     * 删除管理员角色信息
     * 
     * @param managerId 管理员角色主键
     * @return 结果
     */
    public int deleteManagerByManagerId(Long managerId);
}
