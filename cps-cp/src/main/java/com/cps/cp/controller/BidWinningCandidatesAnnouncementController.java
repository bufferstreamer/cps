package com.cps.cp.controller;

import java.util.List;

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
import com.cps.cp.domain.BidWinningCandidatesAnnouncement;
import com.cps.cp.service.IBidWinningCandidatesAnnouncementService;
import com.cps.common.core.controller.BaseController;
import com.cps.common.core.domain.AjaxResult;
import com.cps.common.utils.poi.ExcelUtil;
import com.cps.common.core.page.TableDataInfo;

/**
 * 中标候选人公示公告Controller
 * 
 * @author wxf
 * @date 2022-08-16
 */
@Controller
@RequestMapping("/cp/bidWinningCandidates")
public class BidWinningCandidatesAnnouncementController extends BaseController
{
    private String prefix = "cp/bidWinningCandidates";

    @Autowired
    private IBidWinningCandidatesAnnouncementService bidWinningCandidatesAnnouncementService;

    @RequiresPermissions("cp:bidWinningCandidates:view")
    @GetMapping()
    public String bidWinningCandidates()
    {
        return prefix + "/bidWinningCandidates";
    }

    /**
     * 查询中标候选人公示公告列表
     */
    @RequiresPermissions("cp:bidWinningCandidates:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(BidWinningCandidatesAnnouncement bidWinningCandidatesAnnouncement)
    {
        startPage();
        List<BidWinningCandidatesAnnouncement> list = bidWinningCandidatesAnnouncementService.selectBidWinningCandidatesAnnouncementList(bidWinningCandidatesAnnouncement);
        return getDataTable(list);
    }

    /**
     * 导出中标候选人公示公告列表
     */
    @RequiresPermissions("cp:bidWinningCandidates:export")
    @Log(title = "中标候选人公示公告", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(BidWinningCandidatesAnnouncement bidWinningCandidatesAnnouncement)
    {
        List<BidWinningCandidatesAnnouncement> list = bidWinningCandidatesAnnouncementService.selectBidWinningCandidatesAnnouncementList(bidWinningCandidatesAnnouncement);
        ExcelUtil<BidWinningCandidatesAnnouncement> util = new ExcelUtil<BidWinningCandidatesAnnouncement>(BidWinningCandidatesAnnouncement.class);
        return util.exportExcel(list, "中标候选人公示公告数据");
    }

    /**
     * 新增中标候选人公示公告
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存中标候选人公示公告
     */
    @RequiresPermissions("cp:bidWinningCandidates:add")
    @Log(title = "中标候选人公示公告", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(BidWinningCandidatesAnnouncement bidWinningCandidatesAnnouncement)
    {
        bidWinningCandidatesAnnouncement.setBidWinningCandidatesAnnouncementId(IdUtils.fastSimpleUUID());
        return toAjax(bidWinningCandidatesAnnouncementService.insertBidWinningCandidatesAnnouncement(bidWinningCandidatesAnnouncement));
    }

    /**
     * 修改中标候选人公示公告
     */
    @RequiresPermissions("cp:bidWinningCandidates:edit")
    @GetMapping("/edit/{bidWinningCandidatesAnnouncementId}")
    public String edit(@PathVariable("bidWinningCandidatesAnnouncementId") String bidWinningCandidatesAnnouncementId, ModelMap mmap)
    {
        BidWinningCandidatesAnnouncement bidWinningCandidatesAnnouncement = bidWinningCandidatesAnnouncementService.selectBidWinningCandidatesAnnouncementByBidWinningCandidatesAnnouncementId(bidWinningCandidatesAnnouncementId);
        mmap.put("bidWinningCandidatesAnnouncement", bidWinningCandidatesAnnouncement);
        return prefix + "/edit";
    }

    /**
     * 修改保存中标候选人公示公告
     */
    @RequiresPermissions("cp:bidWinningCandidates:edit")
    @Log(title = "中标候选人公示公告", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(BidWinningCandidatesAnnouncement bidWinningCandidatesAnnouncement)
    {
        return toAjax(bidWinningCandidatesAnnouncementService.updateBidWinningCandidatesAnnouncement(bidWinningCandidatesAnnouncement));
    }

    /**
     * 删除中标候选人公示公告
     */
    @RequiresPermissions("cp:bidWinningCandidates:remove")
    @Log(title = "中标候选人公示公告", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(bidWinningCandidatesAnnouncementService.deleteBidWinningCandidatesAnnouncementByBidWinningCandidatesAnnouncementIds(ids));
    }
}
