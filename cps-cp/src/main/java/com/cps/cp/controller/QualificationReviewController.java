package com.cps.cp.controller;

import com.cps.common.annotation.Log;
import com.cps.common.core.controller.BaseController;
import com.cps.common.core.domain.AjaxResult;
import com.cps.common.core.page.TableDataInfo;
import com.cps.common.enums.BusinessType;
import com.cps.common.utils.DateUtils;
import com.cps.common.utils.poi.ExcelUtil;
import com.cps.common.utils.uuid.IdUtils;
import com.cps.cp.domain.ContractView;
import com.cps.cp.domain.QualificationReview;
import com.cps.cp.domain.QualificationReviewView;
import com.cps.cp.domain.Tender;
import com.cps.cp.service.IQualificationReviewService;
import com.cps.cp.service.ITenderService;
import com.cps.system.service.ISysUserService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * 资质审核Controller
 *
 * @author cps
 * @date 2022-08-16
 */
@Api("资质审核管理")
@Controller
@RequestMapping("/cp/qualificationReview")
public class QualificationReviewController extends BaseController {
    private String prefix = "cp/qualificationReview";

    @Autowired
    private IQualificationReviewService qualificationReviewService;

    @Autowired
    private ITenderService tenderService;

    @Autowired
    private ISysUserService sysUserService;

    @RequiresPermissions("cp:qualificationReview:view")
    @GetMapping()
    public String qualificationReview() {
        return prefix + "/qualificationReview";
    }

    /**
     * 查询资质审核列表
     */
    @ApiOperation("获取资质审核记录列表")
    @RequiresPermissions("cp:qualificationReview:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(QualificationReview qualificationReview) {
        startPage();
        List<QualificationReviewView> list = qualificationReviewService.selectQualificationReviewList(qualificationReview);
        for (int i = 0; i < list.size();i++) {
            list.get(i).setProjectName(tenderService.selectTenderByTenderId(list.get(i).getTenderId()).getProjectName());
            list.get(i).setLoginName(sysUserService.selectUserById(list.get(i).getSupplyId()).getLoginName());
        }
        return getDataTable(list);
    }

    /**
     * 导出资质审核列表
     */
    @ApiOperation("导出资质审核记录")
    @RequiresPermissions("cp:qualificationReview:export")
    @Log(title = "资质审核", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(QualificationReview qualificationReview) {
        List<QualificationReviewView> list = qualificationReviewService.selectQualificationReviewList(qualificationReview);
        ExcelUtil<QualificationReviewView> util = new ExcelUtil<QualificationReviewView>(QualificationReviewView.class);
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
    @ApiOperation("新增资质审核记录")
    @Log(title = "资质审核", businessType = BusinessType.INSERT)
//    @ApiImplicitParams({
//            @ApiImplicitParam(name = "qualificationReviewId", value = "主键", dataType = "String", dataTypeClass = String.class),
//            @ApiImplicitParam(name = "supplyId", value = "供应商ID", dataType = "Long", dataTypeClass = Long.class),
//            @ApiImplicitParam(name = "qualificationReviewDocument", value = "资质审核文件存储位置", dataType = "String", dataTypeClass = String.class),
//            @ApiImplicitParam(name = "goodsId", value = "商品编号", dataType = "Long", dataTypeClass = Long.class),
//            @ApiImplicitParam(name = "tenderId", value = "标书id", dataType = "String", dataTypeClass = String.class),
//            @ApiImplicitParam(name = "auditStatus", value = "审核状态", dataType = "String", dataTypeClass = String.class),
//            @ApiImplicitParam(name = "auditExplanation", value = "审核说明", dataType = "String", dataTypeClass = String.class),
//            @ApiImplicitParam(name = "submitTime", value = "提交时间", dataType = "Date", dataTypeClass = Date.class)
//    })
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
    @ApiOperation("对提交的信息进行审核")
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

    @ApiOperation("修改资质审核信息")
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
    @ApiOperation("批量删除资质审核信息")
    @RequiresPermissions("cp:qualificationReview:remove")
    @Log(title = "资质审核", businessType = BusinessType.DELETE)
    @ApiImplicitParam(name = "ids", value = "主键ID(多个主键ID中间用','隔开)", required = true, dataType = "String", paramType = "path", dataTypeClass = String.class)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        return toAjax(qualificationReviewService.deleteQualificationReviewByQualificationReviewIds(ids));
    }
}
