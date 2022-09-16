package com.cps.user.service.impl;

import java.util.List;

import com.cps.common.annotation.DataSource;
import com.cps.common.enums.DataSourceType;
import com.cps.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.cps.user.mapper.ProductMapper;
import com.cps.user.domain.Product;
import com.cps.user.service.IProductService;
import com.cps.common.core.text.Convert;

/**
 * 商品 商品信息相关：分类，商品图片，商品规格，商品参数Service业务层处理
 *
 * @author cps
 * @date 2022-09-11
 */
@DataSource(value = DataSourceType.SLAVE)
@Service
public class ProductServiceImpl implements IProductService
{
    @Autowired
    private ProductMapper productMapper;

    /**
     * 查询商品 商品信息相关：分类，商品图片，商品规格，商品参数
     *
     * @param productId 商品 商品信息相关：分类，商品图片，商品规格，商品参数主键
     * @return 商品 商品信息相关：分类，商品图片，商品规格，商品参数
     */
    @Override
    public Product selectProductByProductId(String productId)
    {
        return productMapper.selectProductByProductId(productId);
    }

    /**
     * 查询商品 商品信息相关：分类，商品图片，商品规格，商品参数列表
     *
     * @param product 商品 商品信息相关：分类，商品图片，商品规格，商品参数
     * @return 商品 商品信息相关：分类，商品图片，商品规格，商品参数
     */
    @Override
    public List<Product> selectProductList(Product product)
    {
        return productMapper.selectProductList(product);
    }

    /**
     * 新增商品 商品信息相关：分类，商品图片，商品规格，商品参数
     *
     * @param product 商品 商品信息相关：分类，商品图片，商品规格，商品参数
     * @return 结果
     */
    @Override
    public int insertProduct(Product product)
    {
        product.setProductId("99");
        product.setSoldNum(0);
        product.setProductStatus(1);
        product.setCreateTime(DateUtils.getNowDate());
        product.setUpdateTime(DateUtils.getNowDate());
        return productMapper.insertProduct(product);
    }

    /**
     * 修改商品 商品信息相关：分类，商品图片，商品规格，商品参数
     *
     * @param product 商品 商品信息相关：分类，商品图片，商品规格，商品参数
     * @return 结果
     */
    @Override
    public int updateProduct(Product product)
    {
        product.setUpdateTime(DateUtils.getNowDate());
        return productMapper.updateProduct(product);
    }

    /**
     * 批量删除商品 商品信息相关：分类，商品图片，商品规格，商品参数
     *
     * @param productIds 需要删除的商品 商品信息相关：分类，商品图片，商品规格，商品参数主键
     * @return 结果
     */
    @Override
    public int deleteProductByProductIds(String productIds)
    {
        return productMapper.deleteProductByProductIds(Convert.toStrArray(productIds));
    }

    /**
     * 删除商品 商品信息相关：分类，商品图片，商品规格，商品参数信息
     *
     * @param productId 商品 商品信息相关：分类，商品图片，商品规格，商品参数主键
     * @return 结果
     */
    @Override
    public int deleteProductByProductId(String productId)
    {
        return productMapper.deleteProductByProductId(productId);
    }
}
