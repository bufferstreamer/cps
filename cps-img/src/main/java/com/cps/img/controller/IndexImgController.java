package com.cps.img.controller;

import java.util.List;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.cps.common.annotation.Log;
import com.cps.common.enums.BusinessType;
import com.cps.img.domain.IndexImg;
import com.cps.img.service.IIndexImgService;
import com.cps.common.core.controller.BaseController;
import com.cps.common.core.domain.AjaxResult;
import com.cps.common.utils.poi.ExcelUtil;
import com.cps.common.core.page.TableDataInfo;

/**
 * 轮播图管理Controller
 *
 * @author cps
 * @date 2022-10-27
 */
@Controller
@RequestMapping("/img/indexImgManage")
public class IndexImgController extends BaseController {
    private String prefix = "img/indexImgManage";

    @Autowired
    private IIndexImgService indexImgService;

    @RequiresPermissions("img:indexImgManage:view")
    @GetMapping()
    public String indexImgManage() {
        return prefix + "/indexImgManage";
    }

        /**
         * 查询轮播图管理列表
         */
        @RequiresPermissions("img:indexImgManage:list")
        @PostMapping("/list")
        @ResponseBody
        public TableDataInfo list(IndexImg indexImg) {
            startPage();
            List<IndexImg> list = indexImgService.selectIndexImgList(indexImg);
            return getDataTable(list);
        }

    /**
     * 导出轮播图管理列表
     */
    @RequiresPermissions("img:indexImgManage:export")
    @Log(title = "轮播图管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(IndexImg indexImg) {
        List<IndexImg> list = indexImgService.selectIndexImgList(indexImg);
        ExcelUtil<IndexImg> util = new ExcelUtil<IndexImg>(IndexImg. class);
        return util.exportExcel(list, "轮播图管理数据");
    }

        /**
         * 新增轮播图管理
         */
        @GetMapping("/add")
        public String add() {
            return prefix + "/add";
        }

    /**
     * 新增保存轮播图管理
     */
    @RequiresPermissions("img:indexImgManage:add")
    @Log(title = "轮播图管理", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(IndexImg indexImg) {
        return toAjax(indexImgService.insertIndexImg(indexImg));
    }

    /**
     * 修改轮播图管理
     */
    @RequiresPermissions("img:indexImgManage:edit")
    @GetMapping("/edit/{imgId}")
    public String edit(@PathVariable("imgId") String imgId, ModelMap mmap) {
        IndexImg indexImg =
            indexImgService.selectIndexImgByImgId(imgId);
        mmap.put("indexImg", indexImg);
        return prefix + "/edit";
    }

    /**
     * 修改保存轮播图管理
     */
    @RequiresPermissions("img:indexImgManage:edit")
    @Log(title = "轮播图管理", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(IndexImg indexImg) {
        return toAjax(indexImgService.updateIndexImg(indexImg));
    }

        /**
         * 删除轮播图管理
         */
        @RequiresPermissions("img:indexImgManage:remove")
        @Log(title = "轮播图管理", businessType = BusinessType.DELETE)
        @PostMapping("/remove")
        @ResponseBody
        public AjaxResult remove(String ids) {
            return toAjax(indexImgService.deleteIndexImgByImgIds(ids));
        }
}
