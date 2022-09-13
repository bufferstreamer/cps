package com.cps.product.service.impl;

import com.cps.common.core.text.Convert;
import com.cps.product.domain.ProductIndexInfo;
import com.cps.product.mapper.ProductIndexInfoMapper;
import com.cps.product.service.IProductIndexInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 产品指标信息（数值型）Service业务层处理
 *
 * @author cps
 * @date 2022-09-03
 */
@Service
public class ProductIndexInfoServiceImpl implements IProductIndexInfoService {
    @Autowired
    private ProductIndexInfoMapper productIndexInfoMapper;

    /**
     * 查询产品指标信息（数值型）
     *
     * @param productIndexId 产品指标信息（数值型）主键
     * @return 产品指标信息（数值型）
     */
    @Override
    public ProductIndexInfo selectProductIndexInfoByProductIndexId(String productIndexId) {
        return productIndexInfoMapper.selectProductIndexInfoByProductIndexId(productIndexId);
    }

    /**
     * 查询产品指标信息（数值型）列表
     *
     * @param productIndexInfo 产品指标信息（数值型）
     * @return 产品指标信息（数值型）
     */
    @Override
    public List<ProductIndexInfo> selectProductIndexInfoList(ProductIndexInfo productIndexInfo) {
        return productIndexInfoMapper.selectProductIndexInfoList(productIndexInfo);
    }

    /**
     * 新增产品指标信息（数值型）
     *
     * @param productIndexInfo 产品指标信息（数值型）
     * @return 结果
     */
    @Override
    public int insertProductIndexInfo(ProductIndexInfo productIndexInfo) {
        return productIndexInfoMapper.insertProductIndexInfo(productIndexInfo);
    }

    /**
     * 修改产品指标信息（数值型）
     *
     * @param productIndexInfo 产品指标信息（数值型）
     * @return 结果
     */
    @Override
    public int updateProductIndexInfo(ProductIndexInfo productIndexInfo) {
        return productIndexInfoMapper.updateProductIndexInfo(productIndexInfo);
    }

    /**
     * 批量删除产品指标信息（数值型）
     *
     * @param productIndexIds 需要删除的产品指标信息（数值型）主键
     * @return 结果
     */
    @Override
    public int deleteProductIndexInfoByProductIndexIds(String productIndexIds) {
        return productIndexInfoMapper.deleteProductIndexInfoByProductIndexIds(Convert.toStrArray(productIndexIds));
    }

    /**
     * 删除产品指标信息（数值型）信息
     *
     * @param productIndexId 产品指标信息（数值型）主键
     * @return 结果
     */
    @Override
    public int deleteProductIndexInfoByProductIndexId(String productIndexId) {
        return productIndexInfoMapper.deleteProductIndexInfoByProductIndexId(productIndexId);
    }

    @Override
    public char selectIndexSortByProductNameAndIndexName(String productName, String indexName) {
        return productIndexInfoMapper.selectIndexSortByProductNameAndIndexName(productName, indexName);
    }
}
