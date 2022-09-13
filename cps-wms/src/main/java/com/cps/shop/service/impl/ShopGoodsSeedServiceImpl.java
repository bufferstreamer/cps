package com.cps.shop.service.impl;

import com.cps.common.core.text.Convert;
import com.cps.common.utils.DateUtils;
import com.cps.shop.domain.ShopGoodsSeed;
import com.cps.shop.mapper.ShopGoodsSeedMapper;
import com.cps.shop.mode.ShopGoodsSeedMode;
import com.cps.shop.service.IShopGoodsSeedService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 商品库存信息Service业务层处理
 *
 * @author miki
 * @date 2021-05-25
 */
@Service
public class ShopGoodsSeedServiceImpl implements IShopGoodsSeedService {
    @Autowired
    private ShopGoodsSeedMapper shopGoodsSeedMapper;

    /**
     * 查询商品库存信息
     *
     * @param id 商品库存信息ID
     * @return 商品库存信息
     */
    @Override
    public ShopGoodsSeed selectShopGoodsSeedById(Long id) {
        return shopGoodsSeedMapper.selectShopGoodsSeedById(id);
    }

    /**
     * 查询商品库存信息列表
     *
     * @param shopGoodsSeed 商品库存信息
     * @return 商品库存信息
     */
    @Override
    public List<ShopGoodsSeed> selectShopGoodsSeedList(ShopGoodsSeed shopGoodsSeed) {
        return shopGoodsSeedMapper.selectShopGoodsSeedList(shopGoodsSeed);
    }

    /**
     * 新增商品库存信息
     *
     * @param shopGoodsSeed 商品库存信息
     * @return 结果
     */
    @Override
    public int insertShopGoodsSeed(ShopGoodsSeed shopGoodsSeed) {
        shopGoodsSeed.setCreateTime(DateUtils.getNowDate());
        return shopGoodsSeedMapper.insertShopGoodsSeed(shopGoodsSeed);
    }

    /**
     * 修改商品库存信息
     *
     * @param shopGoodsSeed 商品库存信息
     * @return 结果
     */
    @Override
    public int updateShopGoodsSeed(ShopGoodsSeed shopGoodsSeed) {
        shopGoodsSeed.setUpdateTime(DateUtils.getNowDate());
        return shopGoodsSeedMapper.updateShopGoodsSeed(shopGoodsSeed);
    }

    /**
     * 删除商品库存信息对象
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteShopGoodsSeedByIds(String ids) {
        return shopGoodsSeedMapper.deleteShopGoodsSeedByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除商品库存信息信息
     *
     * @param id 商品库存信息ID
     * @return 结果
     */
    @Override
    public int deleteShopGoodsSeedById(Long id) {
        return shopGoodsSeedMapper.deleteShopGoodsSeedById(id);
    }

    @Override
    public ShopGoodsSeed selectShopGoodsSeedBygoodsId(Long goodsId) {
        return shopGoodsSeedMapper.selectShopGoodsSeedBygoodsId(goodsId);
    }

    @Override
    public int updateShopGoodsSeedStockNumber(List<ShopGoodsSeedMode> data) {
        return shopGoodsSeedMapper.updateShopGoodsSeedStockNumber(data);
    }
}
