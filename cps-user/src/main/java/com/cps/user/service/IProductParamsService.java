package com.cps.user.service;

import java.util.List;
import com.cps.user.domain.ProductParams;

/**
 * 商品参数 Service接口
 * 
 * @author cps
 * @date 2022-09-11
 */
public interface IProductParamsService 
{
    /**
     * 查询商品参数 
     * 
     * @param paramId 商品参数 主键
     * @return 商品参数 
     */
    public ProductParams selectProductParamsByParamId(String paramId);

    /**
     * 查询商品参数 列表
     * 
     * @param productParams 商品参数 
     * @return 商品参数 集合
     */
    public List<ProductParams> selectProductParamsList(ProductParams productParams);

    /**
     * 新增商品参数 
     * 
     * @param productParams 商品参数 
     * @return 结果
     */
    public int insertProductParams(ProductParams productParams);

    /**
     * 修改商品参数 
     * 
     * @param productParams 商品参数 
     * @return 结果
     */
    public int updateProductParams(ProductParams productParams);

    /**
     * 批量删除商品参数 
     * 
     * @param paramIds 需要删除的商品参数 主键集合
     * @return 结果
     */
    public int deleteProductParamsByParamIds(String paramIds);

    /**
     * 删除商品参数 信息
     * 
     * @param paramId 商品参数 主键
     * @return 结果
     */
    public int deleteProductParamsByParamId(String paramId);
}
