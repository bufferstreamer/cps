package com.cps.user.service.impl;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;


import com.cps.common.annotation.DataSource;
import com.cps.common.enums.DataSourceType;
import com.cps.common.utils.DateUtils;
import com.cps.shop.domain.ShopGoods;
import com.cps.shop.service.IShopGoodsService;
import com.cps.user.domain.Product;
import com.cps.user.service.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.cps.user.mapper.ProductSkuMapper;
import com.cps.user.domain.ProductSku;
import com.cps.user.service.IProductSkuService;
import com.cps.common.core.text.Convert;
import com.cps.common.utils.uuid.IdUtils;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

/**
 * 商品规格 每一件商品都有不同的规格，不同的规格又有不同的价格和优惠力度，规格为此设计Service业务层处理
 * 
 * @author cps
 * @date 2022-09-11
 */
@Service
public class ProductSkuServiceImpl implements IProductSkuService 
{
    @Autowired
    private ProductSkuMapper productSkuMapper;
    @Resource
    private IShopGoodsService shopGoodsService;
    @Resource
    private IProductService productService;
    /**
     * 查询商品规格 每一件商品都有不同的规格，不同的规格又有不同的价格和优惠力度，规格为此设计
     * 
     * @param skuId 商品规格 每一件商品都有不同的规格，不同的规格又有不同的价格和优惠力度，规格为此设计主键
     * @return 商品规格 每一件商品都有不同的规格，不同的规格又有不同的价格和优惠力度，规格为此设计
     */
    @Override
    public ProductSku selectProductSkuBySkuId(String skuId)
    {
        return productSkuMapper.selectProductSkuBySkuId(skuId);
    }

    /**
     * 根据商品ID获得sku列表
     * @param productId: 商品ID
     * @return ProductSku: sku列表
     * @author LN
     */
    @Override
    public List<ProductSku> selectProductSkuByProductId(String productId) {
        return productSkuMapper.selectProductSkuByProductId(productId);
    }

    /**
     * 查询商品规格 每一件商品都有不同的规格，不同的规格又有不同的价格和优惠力度，规格为此设计列表
     * 
     * @param productSku 商品规格 每一件商品都有不同的规格，不同的规格又有不同的价格和优惠力度，规格为此设计
     * @return 商品规格 每一件商品都有不同的规格，不同的规格又有不同的价格和优惠力度，规格为此设计
     */
    @Override
    public List<ProductSku> selectProductSkuList(ProductSku productSku)
    {
        return productSkuMapper.selectProductSkuList(productSku);
    }

    /**
     * 新增商品规格 每一件商品都有不同的规格，不同的规格又有不同的价格和优惠力度，规格为此设计
     * 
     * @param productSku 商品规格 每一件商品都有不同的规格，不同的规格又有不同的价格和优惠力度，规格为此设计
     * @return 结果
     */
    @Override
    public int insertProductSku(ProductSku productSku)
    {
        productSku.setSkuId(IdUtils.simpleUUID());
        Date time = new Date();
        productSku.setCreateTime(time);
        productSku.setStatus(1);
        productSku.setUpdateTime(time);
        productSku.setCreateTime(DateUtils.getNowDate());
        shopGoodsService.insertShopGoods(productSku2ShopGoods(productSku));
        return productSkuMapper.insertProductSku(productSku);
    }

    /**
     * productSku转换为shopGoods
     * @return
     */
    private ShopGoods productSku2ShopGoods(ProductSku productSku){
        Product product = productService.selectProductByProductId(productSku.getProductId());
        ShopGoods target = new ShopGoods();
        target.setGoodsTypeId(Long.valueOf(product.getCategoryId()));
        target.setGoodsName(product.getProductName());
        target.setGoodsCode(productSku.getSkuId());
        target.setStorageId(5L);
        target.setCostPrice(BigDecimal.valueOf(productSku.getOriginalPrice()));
        target.setRetailPrice(BigDecimal.valueOf(productSku.getSellPrice()));
        target.setSellingPrice(productSku.getDiscounts());
        target.setWholesalePrice(BigDecimal.ZERO);
        target.setIsCost("N");
        target.setDeptId(100L);

        return target;
    }

    /**
     * 修改商品规格 每一件商品都有不同的规格，不同的规格又有不同的价格和优惠力度，规格为此设计
     * 
     * @param productSku 商品规格 每一件商品都有不同的规格，不同的规格又有不同的价格和优惠力度，规格为此设计
     * @return 结果
     */
    @Override
    public int updateProductSku(ProductSku productSku)
    {
        productSku.setUpdateTime(DateUtils.getNowDate());
        return productSkuMapper.updateProductSku(productSku);
    }

    /**
     * 批量删除商品规格 每一件商品都有不同的规格，不同的规格又有不同的价格和优惠力度，规格为此设计
     * 
     * @param skuIds 需要删除的商品规格 每一件商品都有不同的规格，不同的规格又有不同的价格和优惠力度，规格为此设计主键
     * @return 结果
     */
    @Override
    public int deleteProductSkuBySkuIds(String skuIds)
    {
        return productSkuMapper.deleteProductSkuBySkuIds(Convert.toStrArray(skuIds));
    }

    /**
     * 删除商品规格 每一件商品都有不同的规格，不同的规格又有不同的价格和优惠力度，规格为此设计信息
     * 
     * @param skuId 商品规格 每一件商品都有不同的规格，不同的规格又有不同的价格和优惠力度，规格为此设计主键
     * @return 结果
     */
    @Override
    public int deleteProductSkuBySkuId(String skuId)
    {
        return productSkuMapper.deleteProductSkuBySkuId(skuId);
    }

    @Override
    public int updateProductStockNumber(List<ProductSku> data) {

        return productSkuMapper.updateProductStockNumber(data);
    }
}
