package com.cps.shop.mapper;

import com.cps.shop.domain.ShopGoodsSeed;
import com.cps.shop.mode.ShopGoodsSeedMode;

import java.util.List;

/**
 * 商品库存信息Mapper接口
 *
 * @author miki
 * @date 2021-05-25
 */
public interface ShopGoodsSeedMapper {
    /**
     * 查询商品库存信息
     *
     * @param id 商品库存信息ID
     * @return 商品库存信息
     */
    public ShopGoodsSeed selectShopGoodsSeedById(Long id);

    /**
     * 查询商品库存信息列表
     *
     * @param shopGoodsSeed 商品库存信息
     * @return 商品库存信息集合
     */
    public List<ShopGoodsSeed> selectShopGoodsSeedList(ShopGoodsSeed shopGoodsSeed);

    /**
     * 新增商品库存信息
     *
     * @param shopGoodsSeed 商品库存信息
     * @return 结果
     */
    public int insertShopGoodsSeed(ShopGoodsSeed shopGoodsSeed);

    /**
     * 修改商品库存信息
     *
     * @param shopGoodsSeed 商品库存信息
     * @return 结果
     */
    public int updateShopGoodsSeed(ShopGoodsSeed shopGoodsSeed);

    /**
     * 删除商品库存信息
     *
     * @param id 商品库存信息ID
     * @return 结果
     */
    public int deleteShopGoodsSeedById(Long id);

    /**
     * 批量删除商品库存信息
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteShopGoodsSeedByIds(String[] ids);

    /**
     * 根据商品ID查询商品库存信息
     *
     * @param goodsId 商品信息id
     * @return 商品库存信息
     */
    public ShopGoodsSeed selectShopGoodsSeedBygoodsId(Long goodsId);

    /**
     * 批量修改入库商品库存数量信息
     *
     * @param data 商品库存数量ShopGoodsSeedMode
     * @return 结果
     */
    public int updateShopGoodsSeedStockNumber(List<ShopGoodsSeedMode> data);
}
