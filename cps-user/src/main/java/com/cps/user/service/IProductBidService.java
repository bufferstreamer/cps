package com.cps.user.service;

import java.util.List;

import com.cps.user.domain.ProductBid;

/**
 * ProductBidService接口
 *
 * @author cps
 * @date 2022-09-27
 */
public interface IProductBidService {
    /**
     * 查询ProductBid
     *
     * @param id ProductBid主键
     * @return ProductBid
     */
    public ProductBid selectProductBidById(String id);

    /**
     * 查询ProductBid列表
     *
     * @param productBid ProductBid
     * @return ProductBid集合
     */
    public List<ProductBid> selectProductBidList(ProductBid productBid);

    /**
     * 新增ProductBid
     *
     * @param productBid ProductBid
     * @return 结果
     */
    public int insertProductBid(ProductBid productBid);

    /**
     * 修改ProductBid
     *
     * @param productBid ProductBid
     * @return 结果
     */
    public int updateProductBid(ProductBid productBid);

    /**
     * 批量删除ProductBid
     *
     * @param ids 需要删除的ProductBid主键集合
     * @return 结果
     */
    public int deleteProductBidByIds(String ids);

    /**
     * 删除ProductBid信息
     *
     * @param id ProductBid主键
     * @return 结果
     */
    public int deleteProductBidById(String id);
}
