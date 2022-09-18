package com.cps.user.service;

import java.util.List;
import com.cps.user.domain.ProductSku;

/**
 * 商品规格 每一件商品都有不同的规格，不同的规格又有不同的价格和优惠力度，规格为此设计Service接口
 * 
 * @author cps
 * @date 2022-09-11
 */
public interface IProductSkuService 
{
    /**
     * 查询商品规格 每一件商品都有不同的规格，不同的规格又有不同的价格和优惠力度，规格为此设计
     * 
     * @param skuId 商品规格 每一件商品都有不同的规格，不同的规格又有不同的价格和优惠力度，规格为此设计主键
     * @return 商品规格 每一件商品都有不同的规格，不同的规格又有不同的价格和优惠力度，规格为此设计
     */
    public ProductSku selectProductSkuBySkuId(String skuId);

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
     * 批量删除商品规格 每一件商品都有不同的规格，不同的规格又有不同的价格和优惠力度，规格为此设计
     * 
     * @param skuIds 需要删除的商品规格 每一件商品都有不同的规格，不同的规格又有不同的价格和优惠力度，规格为此设计主键集合
     * @return 结果
     */
    public int deleteProductSkuBySkuIds(String skuIds);

    /**
     * 删除商品规格 每一件商品都有不同的规格，不同的规格又有不同的价格和优惠力度，规格为此设计信息
     * 
     * @param skuId 商品规格 每一件商品都有不同的规格，不同的规格又有不同的价格和优惠力度，规格为此设计主键
     * @return 结果
     */
    public int deleteProductSkuBySkuId(String skuId);
}
