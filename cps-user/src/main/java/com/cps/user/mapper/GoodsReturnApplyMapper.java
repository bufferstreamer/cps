package com.cps.user.mapper;

import java.util.List;

import com.cps.common.annotation.DataSource;
import com.cps.common.enums.DataSourceType;
import com.cps.user.domain.GoodsReturnApply;
import org.springframework.stereotype.Repository;

/**
 * 售后申请Mapper接口
 *
 * @author cps
 * @date 2022-10-29
 */
@DataSource(value = DataSourceType.SLAVE)
@Repository
public interface GoodsReturnApplyMapper {
    /**
     * 查询售后申请
     *
     * @param goodsReturnApplyId 售后申请主键
     * @return 售后申请
     */
    public GoodsReturnApply selectGoodsReturnApplyByGoodsReturnApplyId(String goodsReturnApplyId);

    /**
     * 查询售后申请列表
     *
     * @param goodsReturnApply 售后申请
     * @return 售后申请集合
     */
    public List<GoodsReturnApply> selectGoodsReturnApplyList(GoodsReturnApply goodsReturnApply);

    /**
     * 新增售后申请
     *
     * @param goodsReturnApply 售后申请
     * @return 结果
     */
    public int insertGoodsReturnApply(GoodsReturnApply goodsReturnApply);

    /**
     * 修改售后申请
     *
     * @param goodsReturnApply 售后申请
     * @return 结果
     */
    public int updateGoodsReturnApply(GoodsReturnApply goodsReturnApply);

    /**
     * 删除售后申请
     *
     * @param goodsReturnApplyId 售后申请主键
     * @return 结果
     */
    public int deleteGoodsReturnApplyByGoodsReturnApplyId(String goodsReturnApplyId);

    /**
     * 批量删除售后申请
     *
     * @param goodsReturnApplyIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteGoodsReturnApplyByGoodsReturnApplyIds(String[] goodsReturnApplyIds);
}
