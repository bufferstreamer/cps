package com.cps.user.service.impl;

import com.cps.common.core.text.Convert;
import com.cps.common.enums.UserType;
import com.cps.common.utils.DateUtils;
import com.cps.common.utils.uuid.CpsIdUtils;
import com.cps.user.domain.Supermarket;
import com.cps.user.mapper.SupermarketMapper;
import com.cps.user.service.ISupermarketService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 超市角色Service业务层处理
 *
 * @author cps
 * @date 2022-08-18
 */
@Service
public class SupermarketServiceImpl implements ISupermarketService {
    @Autowired
    private SupermarketMapper supermarketMapper;

    /**
     * 查询超市角色
     *
     * @param shopId 超市角色主键
     * @return 超市角色
     */
    @Override
    public Supermarket selectSupermarketByShopId(Long shopId) {
        return supermarketMapper.selectSupermarketByShopId(shopId);
    }

    /**
     * 查询超市角色列表
     *
     * @param supermarket 超市角色
     * @return 超市角色
     */
    @Override
    public List<Supermarket> selectSupermarketList(Supermarket supermarket) {
        return supermarketMapper.selectSupermarketList(supermarket);
    }

    /**
     * 新增超市角色
     *
     * @param supermarket 超市角色
     * @return 结果
     */
    @Override
    public int insertSupermarket(Supermarket supermarket) {
        supermarket.setShopId(CpsIdUtils.GetLongID(UserType.Supermarket));
        supermarket.setRegisterTime(DateUtils.getNowDate());
        supermarket.setShopState("0");
        return supermarketMapper.insertSupermarket(supermarket);
    }

    /**
     * 修改超市角色
     *
     * @param supermarket 超市角色
     * @return 结果
     */
    @Override
    public int updateSupermarket(Supermarket supermarket) {
        return supermarketMapper.updateSupermarket(supermarket);
    }

    /**
     * 批量删除超市角色
     *
     * @param shopIds 需要删除的超市角色主键
     * @return 结果
     */
    @Override
    public int deleteSupermarketByShopIds(String shopIds) {
        return supermarketMapper.deleteSupermarketByShopIds(Convert.toStrArray(shopIds));
    }

    /**
     * 删除超市角色信息
     *
     * @param shopId 超市角色主键
     * @return 结果
     */
    @Override
    public int deleteSupermarketByShopId(Long shopId) {
        return supermarketMapper.deleteSupermarketByShopId(shopId);
    }
}
