package com.cps.wh.service.impl;

import com.cps.common.constant.Constants;
import com.cps.common.constant.UserConstants;
import com.cps.common.core.text.Convert;
import com.cps.common.enums.Status;
import com.cps.common.exception.BusinessException;
import com.cps.common.utils.DateUtils;
import com.cps.common.utils.ShiroUtils;
import com.cps.common.utils.StringUtils;
import com.cps.shop.domain.ShopGoods;
import com.cps.shop.service.IShopGoodsService;
import com.cps.wh.domain.WhStorage;
import com.cps.wh.mapper.WhStorageMapper;
import com.cps.wh.service.IWhStorageService;
import com.cps.wh.vo.WhStorageVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * 库位(储位)设置Service业务层处理
 *
 * @author miki
 * @date 2021-05-23
 */
@Service
public class WhStorageServiceImpl implements IWhStorageService {
    @Autowired
    private WhStorageMapper whStorageMapper;

    @Autowired
    private IShopGoodsService shopGoodsService;

    /**
     * 查询库位(储位)设置
     *
     * @param id 库位(储位)设置ID
     * @return 库位(储位)设置
     */
    @Override
    public WhStorage selectWhStorageById(Long id) {
        return whStorageMapper.selectWhStorageById(id);
    }

    /**
     * 查询库位(储位)设置列表
     *
     * @param whStorage 库位(储位)设置
     * @return 库位(储位)设置
     */
    @Override
    public List<WhStorage> selectWhStorageList(WhStorage whStorage) {
        return whStorageMapper.selectWhStorageList(whStorage);
    }

    /**
     * 新增库位(储位)设置
     *
     * @param whStorage 库位(储位)设置
     * @return 结果
     */
    @Override
    public int insertWhStorage(WhStorage whStorage) {
        whStorage.setCreateTime(DateUtils.getNowDate());
        return whStorageMapper.insertWhStorage(whStorage);
    }

    /**
     * 修改库位(储位)设置
     *
     * @param whStorage 库位(储位)设置
     * @return 结果
     */
    @Override
    public int updateWhStorage(WhStorage whStorage) {
        whStorage.setUpdateTime(DateUtils.getNowDate());
        return whStorageMapper.updateWhStorage(whStorage);
    }

    /**
     * 删除库位(储位)设置对象
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    @Transactional
    public int deleteWhStorageByIds(String ids) {
        int result = 0;
        Long[] whStorageids = Convert.toLongArray(ids);
        WhStorage whStorage = new WhStorage();
        for (Long whStorageid : whStorageids) {

            ShopGoods shopGoods = new ShopGoods();
            shopGoods.setStorageId(whStorageid);
            if (shopGoodsService.selectShopGoodsCount(shopGoods) > 0) {
                throw new BusinessException("有绑定商品不能删除，不允许删除");
            }
            whStorage.setId(whStorageid);
            whStorage.setDelFlag(Status.DELETED.getCode());
            whStorage.setUpdateBy(ShiroUtils.getLoginName());
            result = updateWhStorage(whStorage);
        }
        return result;
    }

    /**
     * 删除库位(储位)设置信息
     *
     * @param id 库位(储位)设置ID
     * @return 结果
     */
    @Override
    public int deleteWhStorageById(Long id) {
        return whStorageMapper.deleteWhStorageById(id);
    }

    @Override
    public String checkStorageCodeUnique(String storageCode) {
        int count = whStorageMapper.checkStorageCodeUnique(storageCode);
        if (count > 0) {
            return Constants.NAME_NOT_UNIQUE;
        }
        return Constants.NAME_UNIQUE;
    }

    @Override
    public List<WhStorageVo> selectWhStorageVoList(WhStorage whStorage) {
        return whStorageMapper.selectWhStorageVoList(whStorage);
    }

    @Override
    public int updateWhStorageBatch(String isEmpty, List<Long> ids) {
        return whStorageMapper.updateWhStorageBatch(isEmpty, ids);
    }

    @Override
    @Transactional
    public int updateisEmptyTask() {
        int result = 0;
        List<Long> ids = whStorageMapper.selecisEmptyList();
        //把空位标识改为 Y
        if (StringUtils.isNotNull(ids) && ids.size() > 0) {
            result = updateWhStorageBatch(UserConstants.YES, ids);
        }
        return result;
    }
}
