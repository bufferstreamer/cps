package com.cps.cp.service;

import java.util.List;

import com.cps.cp.domain.ProductSkuSeed;

/**
 * sku子表Service接口
 *
 * @author cps
 * @date 2022-10-26
 */
public interface IProductSkuSeedService {
    /**
     * 查询sku子表
     *
     * @param skuId sku子表主键
     * @return sku子表
     */
    public ProductSkuSeed selectProductSkuSeedBySkuId(String skuId);

    /**
     * 查询sku子表列表
     *
     * @param productSkuSeed sku子表
     * @return sku子表集合
     */
    public List<ProductSkuSeed> selectProductSkuSeedList(ProductSkuSeed productSkuSeed);

    /**
     * 新增sku子表
     *
     * @param productSkuSeed sku子表
     * @return 结果
     */
    public int insertProductSkuSeed(ProductSkuSeed productSkuSeed);

    /**
     * 修改sku子表
     *
     * @param productSkuSeed sku子表
     * @return 结果
     */
    public int updateProductSkuSeed(ProductSkuSeed productSkuSeed);

    /**
     * 批量删除sku子表
     *
     * @param skuIds 需要删除的sku子表主键集合
     * @return 结果
     */
    public int deleteProductSkuSeedBySkuIds(String skuIds);

    /**
     * 删除sku子表信息
     *
     * @param skuId sku子表主键
     * @return 结果
     */
    public int deleteProductSkuSeedBySkuId(String skuId);
}
