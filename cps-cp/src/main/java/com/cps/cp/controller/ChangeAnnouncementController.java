package com.cps.cp.controller;

import java.util.List;

import com.cps.common.utils.DateUtils;
import com.cps.common.utils.uuid.IdUtils;
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
import com.cps.cp.domain.ChangeAnnouncement;
import com.cps.cp.service.IChangeAnnouncementService;
import com.cps.common.core.controller.BaseController;
import com.cps.common.core.domain.AjaxResult;
import com.cps.common.utils.poi.ExcelUtil;
import com.cps.common.core.page.TableDataInfo;

/**
 * 变更公告Controller
 * 
 * @author wxf
 * @date 2022-08-16
 */
@Controller
@RequestMapping("/cp/changeAnnouncement")
public class ChangeAnnouncementController extends BaseController
{
    private String prefix = "cp/changeAnnouncement";

    @Autowired
    private IChangeAnnouncementService changeAnnouncementService;

    @RequiresPermissions("cp:changeAnnouncement:view")
    @GetMapping()
    public String changeAnnouncement()
    {
        return prefix + "/changeAnnouncement";
    }

    /**
     * 查询变更公告列表
     */
    @RequiresPermissions("cp:changeAnnouncement:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(ChangeAnnouncement changeAnnouncement)
    {
        startPage();
        List<ChangeAnnouncement> list = changeAnnouncementService.selectChangeAnnouncementList(changeAnnouncement);
        return getDataTable(list);
    }

    /**
     * 导出变更公告列表
     */
    @RequiresPermissions("cp:changeAnnouncement:export")
    @Log(title = "变更公告", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(ChangeAnnouncement changeAnnouncement)
    {
        List<ChangeAnnouncement> list = changeAnnouncementService.selectChangeAnnouncementList(changeAnnouncement);
        ExcelUtil<ChangeAnnouncement> util = new ExcelUtil<ChangeAnnouncement>(ChangeAnnouncement.class);
        return util.exportExcel(list, "变更公告数据");
    }

    /**
     * 新增变更公告
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存变更公告
     */
    @RequiresPermissions("cp:changeAnnouncement:add")
    @Log(title = "变更公告", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(ChangeAnnouncement changeAnnouncement)
    {
        changeAnnouncement.setChangeTime(DateUtils.dateTime(DateUtils.YYYY_MM_DD_HH_MM_SS,DateUtils.dateTimeNow(DateUtils.YYYY_MM_DD_HH_MM_SS)));
        changeAnnouncement.setChangeAnnouncementId(IdUtils.fastSimpleUUID());
        return toAjax(changeAnnouncementService.insertChangeAnnouncement(changeAnnouncement));
    }

    /**
     * 修改变更公告
     */
    @RequiresPermissions("cp:changeAnnouncement:edit")
    @GetMapping("/edit/{changeAnnouncementId}")
    public String edit(@PathVariable("changeAnnouncementId") String changeAnnouncementId, ModelMap mmap)
    {
        ChangeAnnouncement changeAnnouncement = changeAnnouncementService.selectChangeAnnouncementByChangeAnnouncementId(changeAnnouncementId);
        mmap.put("changeAnnouncement", changeAnnouncement);
        return prefix + "/edit";
    }

    /**
     * 修改保存变更公告
     */
    @RequiresPermissions("cp:changeAnnouncement:edit")
    @Log(title = "变更公告", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(ChangeAnnouncement changeAnnouncement)
    {
        return toAjax(changeAnnouncementService.updateChangeAnnouncement(changeAnnouncement));
    }

    /**
     * 删除变更公告
     */
    @RequiresPermissions("cp:changeAnnouncement:remove")
    @Log(title = "变更公告", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(changeAnnouncementService.deleteChangeAnnouncementByChangeAnnouncementIds(ids));
    }

    // 查询标书
    @RequestMapping("/search/")
    public String queryTender()
    {
        return prefix + "/search";
    }

}
