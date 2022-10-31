package com.cps.user.mapper;


import com.cps.common.annotation.DataSource;
import com.cps.common.enums.DataSourceType;
import com.cps.user.domain.ProductSku;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 商品规格 每一件商品都有不同的规格，不同的规格又有不同的价格和优惠力度，规格为此设计Mapper接口
 *
 * @author cps
 * @date 2022-09-11
 */
@DataSource(value = DataSourceType.SLAVE)
@Repository
public interface ProductSkuMapper
{
    /**
     * 查询商品规格 每一件商品都有不同的规格，不同的规格又有不同的价格和优惠力度，规格为此设计
     *
     * @param skuId 商品规格 每一件商品都有不同的规格，不同的规格又有不同的价格和优惠力度，规格为此设计主键
     * @return 商品规格 每一件商品都有不同的规格，不同的规格又有不同的价格和优惠力度，规格为此设计
     */
    public ProductSku selectProductSkuBySkuId(String skuId);

    /**
     * 根据商品ID获得sku列表
     * @param productId: 商品ID
     * @return ProductSku: sku列表
     * @author LN
     */
    public List<ProductSku> selectProductSkuByProductId(String productId);

    /**
     * 查询商品规格 每一件商品都有不同的规格，不同的规格又有不同的价格和优惠力度，规格为此设计列表
     *
     * @param productSku 商品规格 每一件商品都有不同的规格，不同的规格又有不同的价格和优惠力度，规格为此设计
     * @return 商品规格 每一件商品都有不同的规格，不同的规格又有不同的价格和优惠力度，规格为此设计集合
     */
    public List<ProductSku> selectProductSkuList(ProductSku productSku);

    /**
     * 新增商品规格 每一件商品都有不同的规格，不同的规格又有不同的价格和优惠力度，规格为此设计
     *
     * @param productSku 商品规格 每一件商品都有不同的规格，不同的规格又有不同的价格和优惠力度，规格为此设计
     * @return 结果
     */
    public int insertProductSku(ProductSku productSku);

    /**
     * 修改商品规格 每一件商品都有不同的规格，不同的规格又有不同的价格和优惠力度，规格为此设计
     *
     * @param productSku 商品规格 每一件商品都有不同的规格，不同的规格又有不同的价格和优惠力度，规格为此设计
     * @return 结果
     */
    public int updateProductSku(ProductSku productSku);

    /**
     * 删除商品规格 每一件商品都有不同的规格，不同的规格又有不同的价格和优惠力度，规格为此设计
     *
     * @param skuId 商品规格 每一件商品都有不同的规格，不同的规格又有不同的价格和优惠力度，规格为此设计主键
     * @return 结果
     */
    public int deleteProductSkuBySkuId(String skuId);

    /**
     * 批量删除商品规格 每一件商品都有不同的规格，不同的规格又有不同的价格和优惠力度，规格为此设计
     *
     * @param skuIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteProductSkuBySkuIds(String[] skuIds);

    public int updateProductStockNumber(List<ProductSku> data);
}