package com.cps.img.mapper;

import java.util.List;

import com.cps.common.annotation.DataSource;
import com.cps.common.enums.DataSourceType;
import com.cps.img.domain.IndexImg;
import org.springframework.stereotype.Repository;

/**
 * 轮播图管理Mapper接口
 *
 * @author cps
 * @date 2022-10-27
 */
@DataSource(value = DataSourceType.SLAVE)
@Repository
public interface IndexImgMapper {
    /**
     * 查询轮播图管理
     *
     * @param imgId 轮播图管理主键
     * @return 轮播图管理
     */
    public IndexImg selectIndexImgByImgId(String imgId);

    /**
     * 查询轮播图管理列表
     *
     * @param indexImg 轮播图管理
     * @return 轮播图管理集合
     */
    public List<IndexImg> selectIndexImgList(IndexImg indexImg);

    /**
     * 新增轮播图管理
     *
     * @param indexImg 轮播图管理
     * @return 结果
     */
    public int insertIndexImg(IndexImg indexImg);

    /**
     * 修改轮播图管理
     *
     * @param indexImg 轮播图管理
     * @return 结果
     */
    public int updateIndexImg(IndexImg indexImg);

    /**
     * 删除轮播图管理
     *
     * @param imgId 轮播图管理主键
     * @return 结果
     */
    public int deleteIndexImgByImgId(String imgId);

    /**
     * 批量删除轮播图管理
     *
     * @param imgIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteIndexImgByImgIds(String[] imgIds);
}
