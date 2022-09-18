package com.cps.cp.controller;

import com.cps.common.annotation.Log;
import com.cps.common.core.controller.BaseController;
import com.cps.common.core.domain.AjaxResult;
import com.cps.common.core.page.TableDataInfo;
import com.cps.common.enums.BusinessType;
import com.cps.common.utils.DateUtils;
import com.cps.common.utils.poi.ExcelUtil;
import com.cps.common.utils.uuid.IdUtils;
import com.cps.cp.domain.TerminationAnnouncement;
import com.cps.cp.service.ITerminationAnnouncementService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 终止公告Controller
 *
 * @author wxf
 * @date 2022-08-16
 */
@Controller
@RequestMapping("/cp/terminationAnnouncement")
public class TerminationAnnouncementController extends BaseController {
    private String prefix = "cp/terminationAnnouncement";

    @Autowired
    private ITerminationAnnouncementService terminationAnnouncementService;

    @RequiresPermissions("cp:terminationAnnouncement:view")
    @GetMapping()
    public String terminationAnnouncement() {
        return prefix + "/terminationAnnouncement";
    }

    /**
     * 查询终止公告列表
     */
    @RequiresPermissions("cp:terminationAnnouncement:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(TerminationAnnouncement terminationAnnouncement) {
        startPage();
        List<TerminationAnnouncement> list = terminationAnnouncementService.selectTerminationAnnouncementList(terminationAnnouncement);
        return getDataTable(list);
    }

    /**
     * 导出终止公告列表
     */
    @RequiresPermissions("cp:terminationAnnouncement:export")
    @Log(title = "终止公告", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(TerminationAnnouncement terminationAnnouncement) {
        List<TerminationAnnouncement> list = terminationAnnouncementService.selectTerminationAnnouncementList(terminationAnnouncement);
        ExcelUtil<TerminationAnnouncement> util = new ExcelUtil<TerminationAnnouncement>(TerminationAnnouncement.class);
        return util.exportExcel(list, "终止公告数据");
    }

    /**
     * 新增终止公告
     */
    @GetMapping("/add")
    public String add() {
        return prefix + "/add";
    }

    /**
     * 新增保存终止公告
     */
    @RequiresPermissions("cp:terminationAnnouncement:add")
    @Log(title = "终止公告", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(TerminationAnnouncement terminationAnnouncement) {
        terminationAnnouncement.setTerminationTime(DateUtils.dateTime(DateUtils.YYYY_MM_DD_HH_MM_SS, DateUtils.dateTimeNow(DateUtils.YYYY_MM_DD_HH_MM_SS)));
        terminationAnnouncement.setTerminationAnnouncementId(IdUtils.fastSimpleUUID());
        return toAjax(terminationAnnouncementService.insertTerminationAnnouncement(terminationAnnouncement));
    }

    /**
     * 修改终止公告
     */
    @RequiresPermissions("cp:terminationAnnouncement:edit")
    @GetMapping("/edit/{terminationAnnouncementId}")
    public String edit(@PathVariable("terminationAnnouncementId") String terminationAnnouncementId, ModelMap mmap) {
        TerminationAnnouncement terminationAnnouncement = terminationAnnouncementService.selectTerminationAnnouncementByTerminationAnnouncementId(terminationAnnouncementId);
        mmap.put("terminationAnnouncement", terminationAnnouncement);
        return prefix + "/edit";
    }

    /**
     * 修改保存终止公告
     */
    @RequiresPermissions("cp:terminationAnnouncement:edit")
    @Log(title = "终止公告", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(TerminationAnnouncement terminationAnnouncement) {
        return toAjax(terminationAnnouncementService.updateTerminationAnnouncement(terminationAnnouncement));
    }

    /**
     * 删除终止公告
     */
    @RequiresPermissions("cp:terminationAnnouncement:remove")
    @Log(title = "终止公告", businessType = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        return toAjax(terminationAnnouncementService.deleteTerminationAnnouncementByTerminationAnnouncementIds(ids));
    }

    // 查询标书
    @RequestMapping("/search/")
    public String queryTender() {
        return prefix + "/search";
    }
}
