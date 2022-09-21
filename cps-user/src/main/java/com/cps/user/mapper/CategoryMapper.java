package com.cps.user.mapper;

import java.util.List;

import com.cps.user.domain.Category;

/**
 * 【请填写功能名称】Mapper接口
 *
 * @author cps
 * @date 2022-09-21
 */
public interface CategoryMapper {
    /**
     * 查询【请填写功能名称】
     *
     * @param categoryId 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    public Category selectCategoryByCategoryId(String categoryId);

    /**
     * 查询【请填写功能名称】列表
     *
     * @param category 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<Category> selectCategoryList(Category category);

    /**
     * 新增【请填写功能名称】
     *
     * @param category 【请填写功能名称】
     * @return 结果
     */
    public int insertCategory(Category category);

    /**
     * 修改【请填写功能名称】
     *
     * @param category 【请填写功能名称】
     * @return 结果
     */
    public int updateCategory(Category category);

    /**
     * 删除【请填写功能名称】
     *
     * @param categoryId 【请填写功能名称】主键
     * @return 结果
     */
    public int deleteCategoryByCategoryId(String categoryId);

    /**
     * 批量删除【请填写功能名称】
     *
     * @param categoryIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteCategoryByCategoryIds(String[] categoryIds);
}
