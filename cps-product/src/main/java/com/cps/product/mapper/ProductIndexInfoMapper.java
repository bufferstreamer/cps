package com.cps.product.mapper;

import java.util.List;
import com.cps.product.domain.ProductIndexInfo;
import org.apache.ibatis.annotations.Param;

/**
 * 产品指标信息（数值型）Mapper接口
 * 
 * @author cps
 * @date 2022-09-03
 */
public interface ProductIndexInfoMapper 
{
    /**
     * 查询产品指标信息（数值型）
     * 
     * @param productIndexId 产品指标信息（数值型）主键
     * @return 产品指标信息（数值型）
     */
    public ProductIndexInfo selectProductIndexInfoByProductIndexId(String productIndexId);

    /**
     * 查询产品指标信息（数值型）列表
     * 
     * @param productIndexInfo 产品指标信息（数值型）
     * @return 产品指标信息（数值型）集合
     */
    public List<ProductIndexInfo> selectProductIndexInfoList(ProductIndexInfo productIndexInfo);

    /**
     * 新增产品指标信息（数值型）
     * 
     * @param productIndexInfo 产品指标信息（数值型）
     * @return 结果
     */
    public int insertProductIndexInfo(ProductIndexInfo productIndexInfo);

    /**
     * 修改产品指标信息（数值型）
     * 
     * @param productIndexInfo 产品指标信息（数值型）
     * @return 结果
     */
    public int updateProductIndexInfo(ProductIndexInfo productIndexInfo);

    /**
     * 删除产品指标信息（数值型）
     * 
     * @param productIndexId 产品指标信息（数值型）主键
     * @return 结果
     */
    public int deleteProductIndexInfoByProductIndexId(String productIndexId);

    /**
     * 批量删除产品指标信息（数值型）
     * 
     * @param productIndexIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteProductIndexInfoByProductIndexIds(String[] productIndexIds);

    /**
     * 通过产品名和指标名查询指标排序信息
     *
     * @param productName 产品名
     * @param indexName 指标名
     * @return 排序信息（1值大优先， 2值小优先）
     */
    public char selectIndexSortByProductNameAndIndexName(@Param("productName")String productName, @Param("indexName")String indexName);
}
