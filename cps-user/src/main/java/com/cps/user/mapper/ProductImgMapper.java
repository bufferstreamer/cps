package com.cps.user.mapper;


import com.cps.common.annotation.DataSource;
import com.cps.common.enums.DataSourceType;
import com.cps.user.domain.ProductImg;
import org.springframework.stereotype.Repository;

import java.util.List;
@DataSource(value = DataSourceType.SLAVE)
@Repository
/**
 * 商品图片 Mapper接口
 *
 * @author cps
 * @date 2022-09-11
 */
public interface ProductImgMapper
{
    /**
     * 查询商品图片
     *
     * @param id 商品图片 主键
     * @return 商品图片
     */
    public ProductImg selectProductImgById(String id);

    /**
     * 查询商品图片 列表
     *
     * @param productImg 商品图片
     * @return 商品图片 集合
     */
    public List<ProductImg> selectProductImgList(ProductImg productImg);

    /**
     * 新增商品图片
     *
     * @param productImg 商品图片
     * @return 结果
     */
    public int insertProductImg(ProductImg productImg);

    /**
     * 修改商品图片
     *
     * @param productImg 商品图片
     * @return 结果
     */
    public int updateProductImg(ProductImg productImg);

    /**
     * 删除商品图片
     *
     * @param id 商品图片 主键
     * @return 结果
     */
    public int deleteProductImgById(String id);

    /**
     * 批量删除商品图片
     *
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteProductImgByIds(String[] ids);
}