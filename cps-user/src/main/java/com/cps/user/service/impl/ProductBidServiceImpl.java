package com.cps.user.service.impl;

import java.util.List;

import com.cps.common.annotation.DataSource;
import com.cps.common.enums.DataSourceType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.cps.user.mapper.ProductBidMapper;
import com.cps.user.domain.ProductBid;
import com.cps.user.service.IProductBidService;
import com.cps.common.core.text.Convert;

/**
 * ProductBidService业务层处理
 *
 * @author cps
 * @date 2022-09-27
 */
@DataSource(value = DataSourceType.SLAVE)
@Service
public class ProductBidServiceImpl implements IProductBidService {
    @Autowired
    private ProductBidMapper productBidMapper;

    /**
     * 查询ProductBid
     *
     * @param id ProductBid主键
     * @return ProductBid
     */
    @Override
    public ProductBid selectProductBidById(String id) {
        return productBidMapper.selectProductBidById(id);
    }

    /**
     * 查询ProductBid列表
     *
     * @param productBid ProductBid
     * @return ProductBid
     */
    @Override
    public List<ProductBid> selectProductBidList(ProductBid productBid) {
        return productBidMapper.selectProductBidList(productBid);
    }

    /**
     * 新增ProductBid
     *
     * @param productBid ProductBid
     * @return 结果
     */
    @Override
    public int insertProductBid(ProductBid productBid) {
            return productBidMapper.insertProductBid(productBid);
    }

    /**
     * 修改ProductBid
     *
     * @param productBid ProductBid
     * @return 结果
     */
    @Override
    public int updateProductBid(ProductBid productBid) {
        return productBidMapper.updateProductBid(productBid);
    }

    /**
     * 批量删除ProductBid
     *
     * @param ids 需要删除的ProductBid主键
     * @return 结果
     */
    @Override
    public int deleteProductBidByIds(String ids) {
        return productBidMapper.deleteProductBidByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除ProductBid信息
     *
     * @param id ProductBid主键
     * @return 结果
     */
    @Override
    public int deleteProductBidById(String id) {
        return productBidMapper.deleteProductBidById(id);
    }
}
