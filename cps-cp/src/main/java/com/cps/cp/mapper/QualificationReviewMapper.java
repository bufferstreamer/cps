package com.cps.cp.mapper;

import java.util.List;
import com.cps.cp.domain.QualificationReview;

/**
 * 资质审核Mapper接口
 * 
 * @author cps
 * @date 2022-08-16
 */
public interface QualificationReviewMapper 
{
    /**
     * 查询资质审核
     * 
     * @param qualificationReviewId 资质审核主键
     * @return 资质审核
     */
    public QualificationReview selectQualificationReviewByQualificationReviewId(String qualificationReviewId);

    /**
     * 查询资质审核列表
     * 
     * @param qualificationReview 资质审核
     * @return 资质审核集合
     */
    public List<QualificationReview> selectQualificationReviewList(QualificationReview qualificationReview);

    /**
     * 新增资质审核
     * 
     * @param qualificationReview 资质审核
     * @return 结果
     */
    public int insertQualificationReview(QualificationReview qualificationReview);

    /**
     * 修改资质审核
     * 
     * @param qualificationReview 资质审核
     * @return 结果
     */
    public int updateQualificationReview(QualificationReview qualificationReview);

    /**
     * 删除资质审核
     * 
     * @param qualificationReviewId 资质审核主键
     * @return 结果
     */
    public int deleteQualificationReviewByQualificationReviewId(String qualificationReviewId);

    /**
     * 批量删除资质审核
     * 
     * @param qualificationReviewIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteQualificationReviewByQualificationReviewIds(String[] qualificationReviewIds);
}
