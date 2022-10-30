package com.cps.cp.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.cps.cp.mapper.ProductSkuSeedMapper;
import com.cps.cp.domain.ProductSkuSeed;
import com.cps.cp.service.IProductSkuSeedService;
import com.cps.common.core.text.Convert;

/**
 * sku子表Service业务层处理
 *
 * @author cps
 * @date 2022-10-26
 */
@Service
public class ProductSkuSeedServiceImpl implements IProductSkuSeedService {
    @Autowired
    private ProductSkuSeedMapper productSkuSeedMapper;

    /**
     * 查询sku子表
     *
     * @param skuId sku子表主键
     * @return sku子表
     */
    @Override
    public ProductSkuSeed selectProductSkuSeedBySkuId(String skuId) {
        return productSkuSeedMapper.selectProductSkuSeedBySkuId(skuId);
    }

    /**
     * 查询sku子表列表
     *
     * @param productSkuSeed sku子表
     * @return sku子表
     */
    @Override
    public List<ProductSkuSeed> selectProductSkuSeedList(ProductSkuSeed productSkuSeed) {
        return productSkuSeedMapper.selectProductSkuSeedList(productSkuSeed);
    }

    /**
     * 新增sku子表
     *
     * @param productSkuSeed sku子表
     * @return 结果
     */
    @Override
    public int insertProductSkuSeed(ProductSkuSeed productSkuSeed) {
            return productSkuSeedMapper.insertProductSkuSeed(productSkuSeed);
    }

    /**
     * 修改sku子表
     *
     * @param productSkuSeed sku子表
     * @return 结果
     */
    @Override
    public int updateProductSkuSeed(ProductSkuSeed productSkuSeed) {
        return productSkuSeedMapper.updateProductSkuSeed(productSkuSeed);
    }

    /**
     * 批量删除sku子表
     *
     * @param skuIds 需要删除的sku子表主键
     * @return 结果
     */
    @Override
    public int deleteProductSkuSeedBySkuIds(String skuIds) {
        return productSkuSeedMapper.deleteProductSkuSeedBySkuIds(Convert.toStrArray(skuIds));
    }

    /**
     * 删除sku子表信息
     *
     * @param skuId sku子表主键
     * @return 结果
     */
    @Override
    public int deleteProductSkuSeedBySkuId(String skuId) {
        return productSkuSeedMapper.deleteProductSkuSeedBySkuId(skuId);
    }
}
