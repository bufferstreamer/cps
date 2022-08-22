package com.cps.cp.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.cps.cp.mapper.QualificationReviewMapper;
import com.cps.cp.domain.QualificationReview;
import com.cps.cp.service.IQualificationReviewService;
import com.cps.common.core.text.Convert;

/**
 * 资质审核Service业务层处理
 * 
 * @author cps
 * @date 2022-08-16
 */
@Service
public class QualificationReviewServiceImpl implements IQualificationReviewService 
{
    @Autowired
    private QualificationReviewMapper qualificationReviewMapper;

    /**
     * 查询资质审核
     * 
     * @param qualificationReviewId 资质审核主键
     * @return 资质审核
     */
    @Override
    public QualificationReview selectQualificationReviewByQualificationReviewId(String qualificationReviewId)
    {
        return qualificationReviewMapper.selectQualificationReviewByQualificationReviewId(qualificationReviewId);
    }

    /**
     * 查询资质审核列表
     * 
     * @param qualificationReview 资质审核
     * @return 资质审核
     */
    @Override
    public List<QualificationReview> selectQualificationReviewList(QualificationReview qualificationReview)
    {
        return qualificationReviewMapper.selectQualificationReviewList(qualificationReview);
    }

    /**
     * 新增资质审核
     * 
     * @param qualificationReview 资质审核
     * @return 结果
     */
    @Override
    public int insertQualificationReview(QualificationReview qualificationReview)
    {
        return qualificationReviewMapper.insertQualificationReview(qualificationReview);
    }

    /**
     * 修改资质审核
     * 
     * @param qualificationReview 资质审核
     * @return 结果
     */
    @Override
    public int updateQualificationReview(QualificationReview qualificationReview)
    {
        return qualificationReviewMapper.updateQualificationReview(qualificationReview);
    }

    /**
     * 批量删除资质审核
     * 
     * @param qualificationReviewIds 需要删除的资质审核主键
     * @return 结果
     */
    @Override
    public int deleteQualificationReviewByQualificationReviewIds(String qualificationReviewIds)
    {
        return qualificationReviewMapper.deleteQualificationReviewByQualificationReviewIds(Convert.toStrArray(qualificationReviewIds));
    }

    /**
     * 删除资质审核信息
     * 
     * @param qualificationReviewId 资质审核主键
     * @return 结果
     */
    @Override
    public int deleteQualificationReviewByQualificationReviewId(String qualificationReviewId)
    {
        return qualificationReviewMapper.deleteQualificationReviewByQualificationReviewId(qualificationReviewId);
    }
}
