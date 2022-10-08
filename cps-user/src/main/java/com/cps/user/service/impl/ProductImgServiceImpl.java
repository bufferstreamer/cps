package com.cps.user.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.cps.user.mapper.ProductImgMapper;
import com.cps.user.domain.ProductImg;
import com.cps.user.service.IProductImgService;
import com.cps.common.core.text.Convert;

/**
 * 商品图片 Service业务层处理
 * 
 * @author cps
 * @date 2022-09-11
 */
@Service
public class ProductImgServiceImpl implements IProductImgService 
{
    @Autowired
    private ProductImgMapper productImgMapper;

    /**
     * 查询商品图片 
     * 
     * @param id 商品图片 主键
     * @return 商品图片 
     */
    @Override
    public ProductImg selectProductImgById(String id)
    {
        return productImgMapper.selectProductImgById(id);
    }

    /**
     * 查询商品图片 列表
     * 
     * @param productImg 商品图片 
     * @return 商品图片 
     */
    @Override
    public List<ProductImg> selectProductImgList(ProductImg productImg)
    {
        return productImgMapper.selectProductImgList(productImg);
    }

    /**
     * 新增商品图片 
     * 
     * @param productImg 商品图片 
     * @return 结果
     */
    @Override
    public int insertProductImg(ProductImg productImg)
    {
        return productImgMapper.insertProductImg(productImg);
    }

    /**
     * 修改商品图片 
     * 
     * @param productImg 商品图片 
     * @return 结果
     */
    @Override
    public int updateProductImg(ProductImg productImg)
    {
        return productImgMapper.updateProductImg(productImg);
    }

    /**
     * 批量删除商品图片 
     * 
     * @param ids 需要删除的商品图片 主键
     * @return 结果
     */
    @Override
    public int deleteProductImgByIds(String ids)
    {
        return productImgMapper.deleteProductImgByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除商品图片 信息
     * 
     * @param id 商品图片 主键
     * @return 结果
     */
    @Override
    public int deleteProductImgById(String id)
    {
        return productImgMapper.deleteProductImgById(id);
    }
}
