package com.cps.user.service.impl;

import java.util.Date;
import java.util.List;

import com.cps.common.annotation.DataSource;
import com.cps.common.enums.DataSourceType;
import com.cps.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.cps.user.mapper.ProductSkuMapper;
import com.cps.user.domain.ProductSku;
import com.cps.user.service.IProductSkuService;
import com.cps.common.core.text.Convert;

/**
 * 商品规格 每一件商品都有不同的规格，不同的规格又有不同的价格和优惠力度，规格为此设计Service业务层处理
 * 
 * @author cps
 * @date 2022-09-11
 */
@DataSource(value = DataSourceType.SLAVE)
@Service
public class ProductSkuServiceImpl implements IProductSkuService 
{
    @Autowired
    private ProductSkuMapper productSkuMapper;

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
        productSku.setSkuId("50");
        Date time = new Date();
        productSku.setCreateTime(time);
        productSku.setStatus(1);
        productSku.setUpdateTime(time);
        productSku.setCreateTime(DateUtils.getNowDate());
        return productSkuMapper.insertProductSku(productSku);
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
}
