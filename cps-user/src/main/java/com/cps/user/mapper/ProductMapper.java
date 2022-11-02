package com.cps.user.mapper;


import java.util.List;

import com.cps.common.annotation.DataSource;
import com.cps.common.enums.DataSourceType;
import com.cps.user.domain.Product;
import org.springframework.stereotype.Repository;

/**
 * 商品 商品信息相关：分类，商品图片，商品规格，商品参数Mapper接口
 *
 * @author cps
 * @date 2022-09-11
 */
@DataSource(value = DataSourceType.SLAVE)
@Repository
public interface ProductMapper
{
    /**
     * 查询商品 商品信息相关：分类，商品图片，商品规格，商品参数
     *
     * @param productId 商品 商品信息相关：分类，商品图片，商品规格，商品参数主键
     * @return 商品 商品信息相关：分类，商品图片，商品规格，商品参数
     */
    public Product selectProductByProductId(String productId);

    /**
     * 查询商品 商品信息相关：分类，商品图片，商品规格，商品参数列表
     *
     * @param product 商品 商品信息相关：分类，商品图片，商品规格，商品参数
     * @return 商品 商品信息相关：分类，商品图片，商品规格，商品参数集合
     */
    public List<Product> selectProductList(Product product);

    public String selectBigProduct();

    /**
     * 新增商品 商品信息相关：分类，商品图片，商品规格，商品参数
     *
     * @param product 商品 商品信息相关：分类，商品图片，商品规格，商品参数
     * @return 结果
     */
    public int insertProduct(Product product);

    /**
     * 修改商品 商品信息相关：分类，商品图片，商品规格，商品参数
     *
     * @param product 商品 商品信息相关：分类，商品图片，商品规格，商品参数
     * @return 结果
     */
    public int updateProduct(Product product);

    /**
     * 删除商品 商品信息相关：分类，商品图片，商品规格，商品参数
     *
     * @param productId 商品 商品信息相关：分类，商品图片，商品规格，商品参数主键
     * @return 结果
     */
    public int deleteProductByProductId(String productId);

    /**
     * 批量删除商品 商品信息相关：分类，商品图片，商品规格，商品参数
     *
     * @param productIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteProductByProductIds(String[] productIds);
}

