package com.cps.user.service;

import java.util.List;
import com.cps.user.domain.Supermarket;

/**
 * 超市角色Service接口
 * 
 * @author cps
 * @date 2022-08-18
 */
public interface ISupermarketService 
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
     * 批量删除超市角色
     * 
     * @param shopIds 需要删除的超市角色主键集合
     * @return 结果
     */
    public int deleteSupermarketByShopIds(String shopIds);

    /**
     * 删除超市角色信息
     * 
     * @param shopId 超市角色主键
     * @return 结果
     */
    public int deleteSupermarketByShopId(Long shopId);
}
