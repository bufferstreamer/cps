package com.cps.user.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.cps.user.mapper.CategoryMapper;
import com.cps.user.domain.Category;
import com.cps.user.service.ICategoryService;
import com.cps.common.core.text.Convert;

/**
 * 【请填写功能名称】Service业务层处理
 *
 * @author cps
 * @date 2022-09-21
 */
@Service
public class CategoryServiceImpl implements ICategoryService {
    @Autowired
    private CategoryMapper categoryMapper;

    /**
     * 查询【请填写功能名称】
     *
     * @param categoryId 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    @Override
    public Category selectCategoryByCategoryId(String categoryId) {
        return categoryMapper.selectCategoryByCategoryId(categoryId);
    }

    /**
     * 查询【请填写功能名称】列表
     *
     * @param category 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<Category> selectCategoryList(Category category) {
        return categoryMapper.selectCategoryList(category);
    }

    /**
     * 新增【请填写功能名称】
     *
     * @param category 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertCategory(Category category) {
            return categoryMapper.insertCategory(category);
    }

    /**
     * 修改【请填写功能名称】
     *
     * @param category 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateCategory(Category category) {
        return categoryMapper.updateCategory(category);
    }

    /**
     * 批量删除【请填写功能名称】
     *
     * @param categoryIds 需要删除的【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteCategoryByCategoryIds(String categoryIds) {
        return categoryMapper.deleteCategoryByCategoryIds(Convert.toStrArray(categoryIds));
    }

    /**
     * 删除【请填写功能名称】信息
     *
     * @param categoryId 【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteCategoryByCategoryId(String categoryId) {
        return categoryMapper.deleteCategoryByCategoryId(categoryId);
    }
}
