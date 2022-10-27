package com.cps.img.service.impl;

import java.util.List;
        import com.cps.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.cps.img.mapper.IndexImgMapper;
import com.cps.img.domain.IndexImg;
import com.cps.img.service.IIndexImgService;
import com.cps.common.core.text.Convert;

/**
 * 轮播图管理Service业务层处理
 *
 * @author cps
 * @date 2022-10-27
 */
@Service
public class IndexImgServiceImpl implements IIndexImgService {
    @Autowired
    private IndexImgMapper indexImgMapper;

    /**
     * 查询轮播图管理
     *
     * @param imgId 轮播图管理主键
     * @return 轮播图管理
     */
    @Override
    public IndexImg selectIndexImgByImgId(String imgId) {
        return indexImgMapper.selectIndexImgByImgId(imgId);
    }

    /**
     * 查询轮播图管理列表
     *
     * @param indexImg 轮播图管理
     * @return 轮播图管理
     */
    @Override
    public List<IndexImg> selectIndexImgList(IndexImg indexImg) {
        return indexImgMapper.selectIndexImgList(indexImg);
    }

    /**
     * 新增轮播图管理
     *
     * @param indexImg 轮播图管理
     * @return 结果
     */
    @Override
    public int insertIndexImg(IndexImg indexImg) {
                indexImg.setCreateTime(DateUtils.getNowDate());
            return indexImgMapper.insertIndexImg(indexImg);
    }

    /**
     * 修改轮播图管理
     *
     * @param indexImg 轮播图管理
     * @return 结果
     */
    @Override
    public int updateIndexImg(IndexImg indexImg) {
                indexImg.setUpdateTime(DateUtils.getNowDate());
        return indexImgMapper.updateIndexImg(indexImg);
    }

    /**
     * 批量删除轮播图管理
     *
     * @param imgIds 需要删除的轮播图管理主键
     * @return 结果
     */
    @Override
    public int deleteIndexImgByImgIds(String imgIds) {
        return indexImgMapper.deleteIndexImgByImgIds(Convert.toStrArray(imgIds));
    }

    /**
     * 删除轮播图管理信息
     *
     * @param imgId 轮播图管理主键
     * @return 结果
     */
    @Override
    public int deleteIndexImgByImgId(String imgId) {
        return indexImgMapper.deleteIndexImgByImgId(imgId);
    }
}
