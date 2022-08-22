package com.cps.user.mapper;

import java.util.List;
import com.cps.user.domain.Supermarket;

/**
 * 超市角色Mapper接口
 * 
 * @author cps
 * @date 2022-08-18
 */
public interface SupermarketMapper 
{
    /**
     * 查询超市角色
     * 
     * @param shopId 超市角色主键
     * @return 超市角色
     */
    public Supermarket selectSupermarketByShopId(Long shopId);

    /**
     * 查询超市角色列表
     * 
     * @param supermarket 超市角色
     * @return 超市角色集合
     */
    public List<Supermarket> selectSupermarketList(Supermarket supermarket);

    /**
     * 新增超市角色
     * 
     * @param supermarket 超市角色
     * @return 结果
     */
    public int insertSupermarket(Supermarket supermarket);

    /**
     * 修改超市角色
     * 
     * @param supermarket 超市角色
     * @return 结果
     */
    public int updateSupermarket(Supermarket supermarket);

    /**
     * 删除超市角色
     * 
     * @param shopId 超市角色主键
     * @return 结果
     */
    public int deleteSupermarketByShopId(Long shopId);

    /**
     * 批量删除超市角色
     * 
     * @param shopIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteSupermarketByShopIds(String[] shopIds);
}
