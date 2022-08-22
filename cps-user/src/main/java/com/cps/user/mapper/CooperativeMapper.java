package com.cps.user.mapper;

import java.util.List;
import com.cps.user.domain.Cooperative;

/**
 * 供销社角色Mapper接口
 * 
 * @author cps
 * @date 2022-08-18
 */
public interface CooperativeMapper 
{
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
     * 删除供销社角色
     * 
     * @param gxsId 供销社角色主键
     * @return 结果
     */
    public int deleteCooperativeByGxsId(Long gxsId);

    /**
     * 批量删除供销社角色
     * 
     * @param gxsIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteCooperativeByGxsIds(String[] gxsIds);
}
