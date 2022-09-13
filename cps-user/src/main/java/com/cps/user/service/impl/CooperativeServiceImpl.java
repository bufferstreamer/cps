package com.cps.user.service.impl;

import com.cps.common.core.text.Convert;
import com.cps.common.enums.UserType;
import com.cps.common.utils.DateUtils;
import com.cps.common.utils.uuid.CpsIdUtils;
import com.cps.user.domain.Cooperative;
import com.cps.user.mapper.CooperativeMapper;
import com.cps.user.service.ICooperativeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 供销社角色Service业务层处理
 *
 * @author cps
 * @date 2022-08-18
 */
@Service
public class CooperativeServiceImpl implements ICooperativeService {
    @Autowired
    private CooperativeMapper cooperativeMapper;

    /**
     * 查询供销社角色
     *
     * @param gxsId 供销社角色主键
     * @return 供销社角色
     */
    @Override
    public Cooperative selectCooperativeByGxsId(Long gxsId) {
        return cooperativeMapper.selectCooperativeByGxsId(gxsId);
    }

    /**
     * 查询供销社角色列表
     *
     * @param cooperative 供销社角色
     * @return 供销社角色
     */
    @Override
    public List<Cooperative> selectCooperativeList(Cooperative cooperative) {
        return cooperativeMapper.selectCooperativeList(cooperative);
    }

    /**
     * 新增供销社角色
     *
     * @param cooperative 供销社角色
     * @return 结果
     */
    @Override
    public int insertCooperative(Cooperative cooperative) {
        cooperative.setGxsId(CpsIdUtils.GetLongID(UserType.Coopetative));
        cooperative.setGxsState("0");
        cooperative.setRegisterTime(DateUtils.getNowDate());
        return cooperativeMapper.insertCooperative(cooperative);
    }

    /**
     * 修改供销社角色
     *
     * @param cooperative 供销社角色
     * @return 结果
     */
    @Override
    public int updateCooperative(Cooperative cooperative) {
        return cooperativeMapper.updateCooperative(cooperative);
    }

    /**
     * 批量删除供销社角色
     *
     * @param gxsIds 需要删除的供销社角色主键
     * @return 结果
     */
    @Override
    public int deleteCooperativeByGxsIds(String gxsIds) {
        return cooperativeMapper.deleteCooperativeByGxsIds(Convert.toStrArray(gxsIds));
    }

    /**
     * 删除供销社角色信息
     *
     * @param gxsId 供销社角色主键
     * @return 结果
     */
    @Override
    public int deleteCooperativeByGxsId(Long gxsId) {
        return cooperativeMapper.deleteCooperativeByGxsId(gxsId);
    }
}
