package com.cps.cp.controller;

import com.cps.common.annotation.Log;
import com.cps.common.core.controller.BaseController;
import com.cps.common.core.domain.AjaxResult;
import com.cps.common.core.page.TableDataInfo;
import com.cps.common.enums.BusinessType;
import com.cps.common.utils.DateUtils;
import com.cps.common.utils.poi.ExcelUtil;
import com.cps.common.utils.uuid.IdUtils;
import com.cps.cp.domain.QualificationReview;
import com.cps.cp.domain.Tender;
import com.cps.cp.service.IQualificationReviewService;
import com.cps.cp.service.ITenderService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.text.ParseException;
import java.util.List;

/**
 * 资质审核Controller
 *
 * @author cps
 * @date 2022-08-16
 */
@Controller
@RequestMapping("/cp/qualificationReview")
public class QualificationReviewController extends BaseController {
    private String prefix = "cp/qualificationReview";

    @Autowired
    private IQualificationReviewService qualificationReviewService;

    @RequiresPermissions("cp:qualificationReview:view")
    @GetMapping()
    public String qualificationReview() {
        return prefix + "/qualificationReview";
    }

    /**
     * 查询资质审核列表
     */
    @RequiresPermissions("cp:qualificationReview:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(QualificationReview qualificationReview) {
        startPage();
        List<QualificationReview> list = qualificationReviewService.selectQualificationReviewList(qualificationReview);
        return getDataTable(list);
    }

    /**
     * 导出资质审核列表
     */
    @RequiresPermissions("cp:qualificationReview:export")
    @Log(title = "资质审核", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(QualificationReview qualificationReview) {
        List<QualificationReview> list = qualificationReviewService.selectQualificationReviewList(qualificationReview);
        ExcelUtil<QualificationReview> util = new ExcelUtil<QualificationReview>(QualificationReview.class);
        return util.exportExcel(list, "资质审核数据");
    }

    /**
     * 新增资质审核
     */
    @GetMapping("/add")
    public String add() {
        return prefix + "/add";
    }

    /**
     * 新增保存资质审核
     */
    //@RequiresPermissions("cp:qualificationReview:add")
    @Log(title = "资质审核", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(QualificationReview qualificationReview) {
        //if (qualificationReview.getTenderId())
        qualificationReview.setQualificationReviewId(IdUtils.fastSimpleUUID());
        return toAjax(qualificationReviewService.insertQualificationReview(qualificationReview));
    }

    /**
     * 修改资质审核
     */
    @RequiresPermissions("cp:qualificationReview:edit")
    @GetMapping("/edit/{qualificationReviewId}")
    public String edit(@PathVariable("qualificationReviewId") String qualificationReviewId, ModelMap mmap) {
        QualificationReview qualificationReview = qualificationReviewService.selectQualificationReviewByQualificationReviewId(qualificationReviewId);
        mmap.put("qualificationReview", qualificationReview);
        return prefix + "/edit";
    }

    /**
     * 修改保存资质审核
     */
    @RequiresPermissions("cp:qualificationReview:edit")
    @Log(title = "资质审核", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(QualificationReview qualificationReview) throws ParseException {
//        SimpleDateFormat formatter = new SimpleDateFormat( "yyyy-MM-dd ");
//        Date date = formatter.parse(DateUtils.dateTimeNow(DateUtils.YYYY_MM_DD_HH_MM_SS));
        qualificationReview.setSubmitTime(DateUtils.dateTime(DateUtils.YYYY_MM_DD_HH_MM_SS, DateUtils.dateTimeNow(DateUtils.YYYY_MM_DD_HH_MM_SS)));
        return toAjax(qualificationReviewService.updateQualificationReview(qualificationReview));
    }

    @PostMapping("/update")
    @ResponseBody
    public AjaxResult update(QualificationReview qualificationReview) throws ParseException {
        qualificationReview.setAuditStatus("0");
        qualificationReview.setAuditExplanation("");
        return editSave(qualificationReview);
    }

    /**
     * 删除资质审核
     */
    @RequiresPermissions("cp:qualificationReview:remove")
    @Log(title = "资质审核", businessType = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        return toAjax(qualificationReviewService.deleteQualificationReviewByQualificationReviewIds(ids));
    }
}
