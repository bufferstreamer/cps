package com.cps.user.service;

import com.cps.user.domain.Cooperative;

import java.util.List;

/**
 * 供销社角色Service接口
 *
 * @author cps
 * @date 2022-08-18
 */
public interface ICooperativeService {
    /**
     * 查询供销社角色
     *
     * @param gxsId 供销社角色主键
     * @return 供销社角色
     */
    public Cooperative selectCooperativeByGxsId(Long gxsId);

    /**
     * 查询供销社角色列表
     *
     * @param cooperative 供销社角色
     * @return 供销社角色集合
     */
    public List<Cooperative> selectCooperativeList(Cooperative cooperative);

    /**
     * 新增供销社角色
     *
     * @param cooperative 供销社角色
     * @return 结果
     */
    public int insertCooperative(Cooperative cooperative);

    /**
     * 修改供销社角色
     *
     * @param cooperative 供销社角色
     * @return 结果
     */
    public int updateCooperative(Cooperative cooperative);

    /**
     * 批量删除供销社角色
     *
     * @param gxsIds 需要删除的供销社角色主键集合
     * @return 结果
     */
    public int deleteCooperativeByGxsIds(String gxsIds);

    /**
     * 删除供销社角色信息
     *
     * @param gxsId 供销社角色主键
     * @return 结果
     */
    public int deleteCooperativeByGxsId(Long gxsId);
}
