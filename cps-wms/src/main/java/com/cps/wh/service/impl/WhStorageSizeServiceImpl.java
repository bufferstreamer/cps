package com.cps.wh.service.impl;

import com.cps.common.core.text.Convert;
import com.cps.common.enums.Status;
import com.cps.common.utils.DateUtils;
import com.cps.common.utils.ShiroUtils;
import com.cps.wh.domain.WhStorageSize;
import com.cps.wh.mapper.WhStorageSizeMapper;
import com.cps.wh.service.IWhStorageSizeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * 库位尺寸Service业务层处理
 *
 * @author miki
 * @date 2021-05-23
 */
@Service
public class WhStorageSizeServiceImpl implements IWhStorageSizeService {
    @Autowired
    private WhStorageSizeMapper whStorageSizeMapper;

    /**
     * 查询库位尺寸
     *
     * @param id 库位尺寸ID
     * @return 库位尺寸
     */
    @Override
    public WhStorageSize selectWhStorageSizeById(Long id) {
        return whStorageSizeMapper.selectWhStorageSizeById(id);
    }

    /**
     * 查询库位尺寸列表
     *
     * @param whStorageSize 库位尺寸
     * @return 库位尺寸
     */
    @Override
    public List<WhStorageSize> selectWhStorageSizeList(WhStorageSize whStorageSize) {
        return whStorageSizeMapper.selectWhStorageSizeList(whStorageSize);
    }

    /**
     * 新增库位尺寸
     *
     * @param whStorageSize 库位尺寸
     * @return 结果
     */
    @Override
    public int insertWhStorageSize(WhStorageSize whStorageSize) {
        whStorageSize.setCreateTime(DateUtils.getNowDate());
        return whStorageSizeMapper.insertWhStorageSize(whStorageSize);
    }

    /**
     * 修改库位尺寸
     *
     * @param whStorageSize 库位尺寸
     * @return 结果
     */
    @Override
    public int updateWhStorageSize(WhStorageSize whStorageSize) {
        whStorageSize.setUpdateTime(DateUtils.getNowDate());
        return whStorageSizeMapper.updateWhStorageSize(whStorageSize);
    }

    /**
     * 删除库位尺寸对象
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    @Transactional
    public int deleteWhStorageSizeByIds(String ids) {
        int result = 0;
        Long[] whStorageSizeids = Convert.toLongArray(ids);
        for (Long whStorageSizeid : whStorageSizeids) {
            WhStorageSize whStorageSize = new WhStorageSize();
            whStorageSize.setId(whStorageSizeid);
            whStorageSize.setDelFlag(Status.DELETED.getCode());
            whStorageSize.setUpdateBy(ShiroUtils.getLoginName());
            result = updateWhStorageSize(whStorageSize);
        }
        return result;
    }

    /**
     * 删除库位尺寸信息
     *
     * @param id 库位尺寸ID
     * @return 结果
     */
    @Override
    public int deleteWhStorageSizeById(Long id) {
        return whStorageSizeMapper.deleteWhStorageSizeById(id);
    }
}
