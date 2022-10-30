package com.cps.user.service.impl;

import java.util.List;

import com.cps.common.constant.Constants;
import com.cps.user.domain.Orders;
import com.cps.user.mapper.OrdersMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.cps.user.mapper.GoodsReturnApplyMapper;
import com.cps.user.domain.GoodsReturnApply;
import com.cps.user.service.IGoodsReturnApplyService;
import com.cps.common.core.text.Convert;

/**
 * 售后申请Service业务层处理
 *
 * @author cps
 * @date 2022-10-29
 */
@Service
public class GoodsReturnApplyServiceImpl implements IGoodsReturnApplyService {
    @Autowired
    private GoodsReturnApplyMapper goodsReturnApplyMapper;

    @Autowired
    private OrdersMapper ordersMapper;

    /**
     * 查询售后申请
     *
     * @param goodsReturnApplyId 售后申请主键
     * @return 售后申请
     */
    @Override
    public GoodsReturnApply selectGoodsReturnApplyByGoodsReturnApplyId(String goodsReturnApplyId) {
        return goodsReturnApplyMapper.selectGoodsReturnApplyByGoodsReturnApplyId(goodsReturnApplyId);
    }

    /**
     * 查询售后申请列表
     *
     * @param goodsReturnApply 售后申请
     * @return 售后申请
     */
    @Override
    public List<GoodsReturnApply> selectGoodsReturnApplyList(GoodsReturnApply goodsReturnApply) {
        return goodsReturnApplyMapper.selectGoodsReturnApplyList(goodsReturnApply);
    }

    /**
     * 新增售后申请
     *
     * @param goodsReturnApply 售后申请
     * @return 结果
     */
    @Override
    public int insertGoodsReturnApply(GoodsReturnApply goodsReturnApply) {
            return goodsReturnApplyMapper.insertGoodsReturnApply(goodsReturnApply);
    }

    /**
     * 修改售后申请
     *
     * @param goodsReturnApply 售后申请
     * @return 结果
     */
    @Override
    public int updateGoodsReturnApply(GoodsReturnApply goodsReturnApply) {
        return goodsReturnApplyMapper.updateGoodsReturnApply(goodsReturnApply);
    }

    /**
     * 批量删除售后申请
     *
     * @param goodsReturnApplyIds 需要删除的售后申请主键
     * @return 结果
     */
    @Override
    public int deleteGoodsReturnApplyByGoodsReturnApplyIds(String goodsReturnApplyIds) {
        return goodsReturnApplyMapper.deleteGoodsReturnApplyByGoodsReturnApplyIds(Convert.toStrArray(goodsReturnApplyIds));
    }

    /**
     * 删除售后申请信息
     *
     * @param goodsReturnApplyId 售后申请主键
     * @return 结果
     */
    @Override
    public int deleteGoodsReturnApplyByGoodsReturnApplyId(String goodsReturnApplyId) {
        return goodsReturnApplyMapper.deleteGoodsReturnApplyByGoodsReturnApplyId(goodsReturnApplyId);
    }
}
