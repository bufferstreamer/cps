package com.cps.user.service.impl;

import java.util.List;
import com.cps.common.utils.DateUtils;
import com.cps.user.mapper.ProductParamsMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.cps.user.mapper.ProductParamsMapper;
import com.cps.user.domain.ProductParams;
import com.cps.user.service.IProductParamsService;
import com.cps.common.core.text.Convert;

/**
 * 商品参数 Service业务层处理
 * 
 * @author cps
 * @date 2022-09-11
 */
@Service
public class ProductParamsServiceImpl implements IProductParamsService 
{
    @Autowired
    private ProductParamsMapper productParamsMapper;

    /**
     * 查询商品参数 
     * 
     * @param paramId 商品参数 主键
     * @return 商品参数 
     */
    @Override
    public ProductParams selectProductParamsByParamId(String paramId)
    {
        return productParamsMapper.selectProductParamsByParamId(paramId);
    }

    /**
     * 查询商品参数 列表
     * 
     * @param productParams 商品参数 
     * @return 商品参数 
     */
    @Override
    public List<ProductParams> selectProductParamsList(ProductParams productParams)
    {
        return productParamsMapper.selectProductParamsList(productParams);
    }

    /**
     * 新增商品参数 
     * 
     * @param productParams 商品参数 
     * @return 结果
     */
    @Override
    public int insertProductParams(ProductParams productParams)
    {
        Integer id = Integer.valueOf(productParamsMapper.selectBigId());
        productParams.setParamId(String.valueOf(id+1));
        productParams.setCreateTime(DateUtils.getNowDate());
        productParams.setUpdateTime(DateUtils.getNowDate());
        return productParamsMapper.insertProductParams(productParams);
    }

    /**
     * 修改商品参数 
     * 
     * @param productParams 商品参数 
     * @return 结果
     */
    @Override
    public int updateProductParams(ProductParams productParams)
    {
        productParams.setUpdateTime(DateUtils.getNowDate());
        return productParamsMapper.updateProductParams(productParams);
    }

    /**
     * 批量删除商品参数 
     * 
     * @param paramIds 需要删除的商品参数 主键
     * @return 结果
     */
    @Override
    public int deleteProductParamsByParamIds(String paramIds)
    {
        return productParamsMapper.deleteProductParamsByParamIds(Convert.toStrArray(paramIds));
    }

    /**
     * 删除商品参数 信息
     * 
     * @param paramId 商品参数 主键
     * @return 结果
     */
    @Override
    public int deleteProductParamsByParamId(String paramId)
    {
        return productParamsMapper.deleteProductParamsByParamId(paramId);
    }
}
