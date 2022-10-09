package com.cps.user.service.impl;

import java.util.Date;
import java.util.List;

import com.cps.common.annotation.DataSource;
import com.cps.common.enums.DataSourceType;
import com.cps.user.domain.*;
import com.cps.user.mapper.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cps.common.core.text.Convert;
import com.cps.common.enums.UserType;
import com.cps.common.utils.DateUtils;
import com.cps.common.utils.uuid.CpsIdUtils;
import com.cps.user.service.ISupplierService;

/**
 * 供应商角色Service业务层处理
 * 
 * @author cps
 * @date 2022-08-18
 */
@Service
public class SupplierServiceImpl implements ISupplierService 
{
    @Autowired
    private SupplierMapper supplierMapper;

    @Autowired
    private ProductMapper productMapper;

    @Autowired
    private ProductSkuMapper productSkuMapper;

    @Autowired
    private ProductParamsMapper productParamsMapper;

    @Autowired
    private ProductImgMapper productImgMapper;

    /**
     * 查询供应商角色
     * 
     * @param supplyId 供应商角色主键
     * @return 供应商角色
     */
    @Override
    public Supplier selectSupplierBySupplyId(Long supplyId)
    {
        return supplierMapper.selectSupplierBySupplyId(supplyId);
    }

    /**
     * 查询供应商角色列表
     * 
     * @param supplier 供应商角色
     * @return 供应商角色
     */
    @Override
    public List<Supplier> selectSupplierList(Supplier supplier)
    {
        return supplierMapper.selectSupplierList(supplier);
    }

    /**
     * 新增供应商角色
     * 
     * @param supplier 供应商角色
     * @return 结果
     */
    @Override
    public int insertSupplier(Supplier supplier)
    {
    	supplier.setSupplyId(CpsIdUtils.GetLongID(UserType.Supply));
    	supplier.setRegisterTime(DateUtils.getNowDate());
    	supplier.setSupplyState("0");
        return supplierMapper.insertSupplier(supplier);
    }

    /**
     * 修改供应商角色
     * 
     * @param supplier 供应商角色
     * @return 结果
     */
    @Override
    public int updateSupplier(Supplier supplier)
    {
        return supplierMapper.updateSupplier(supplier);
    }

    /**
     * 批量删除供应商角色
     * 
     * @param supplyIds 需要删除的供应商角色主键
     * @return 结果
     */
    @Override
    public int deleteSupplierBySupplyIds(String supplyIds)
    {
        return supplierMapper.deleteSupplierBySupplyIds(Convert.toStrArray(supplyIds));
    }

    /**
     * 删除供应商角色信息
     * 
     * @param supplyId 供应商角色主键
     * @return 结果
     */
    @Override
    public int deleteSupplierBySupplyId(Long supplyId)
    {
        return supplierMapper.deleteSupplierBySupplyId(supplyId);
    }

    @Override
    @DataSource(value = DataSourceType.SLAVE)
    public int addNewProduct(Product product) {
        Date time = new Date();
        product.setSoldNum(0);
        product.setProductStatus(1);
        product.setCreateTime(time);
        product.setUpdateTime(time);

        return productMapper.insertProduct(product);
    }

    @Override
    @DataSource(value = DataSourceType.SLAVE)
    public int addNewProductSku(ProductSku productSku) {
        Date time = new Date();
        productSku.setCreateTime(time);
        productSku.setStatus(1);
        productSku.setUpdateTime(time);
        return productSkuMapper.insertProductSku(productSku);
    }

    @Override
    @DataSource(value = DataSourceType.SLAVE)
    public int updateProductStatus(String productId) {
        Product product = productMapper.selectProductByProductId(productId);
        if(product.getProductStatus()==1){
            product.setProductStatus(0);
        }else if(product.getProductStatus()==0) {
            product.setProductStatus(1);
        }
        return productMapper.updateProduct(product);
    }

    @Override
    @DataSource(value = DataSourceType.SLAVE)
    public int updateProductSkuStatus(String productSkuId) {
        ProductSku productSku = productSkuMapper.selectProductSkuBySkuId(productSkuId);
        if(productSku.getStatus()==1){
           productSku.setStatus(0);
        }else if(productSku.getStatus()==0){
            productSku.setStatus(1);
        }
        return productSkuMapper.updateProductSku(productSku);
    }

    @Override
    public int addProductParams(String productId, ProductParams productParams) {
        productParams.setProductId(productId);
        Date time = new Date();
        productParams.setCreateTime(time);
        productParams.setUpdateTime(time);
        return productParamsMapper.insertProductParams(productParams);

    }
}
