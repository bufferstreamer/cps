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
import com.cps.cp.domain.BidWinningResultsAnnouncement;
import com.cps.cp.service.IBidWinningResultsAnnouncementService;
import com.cps.common.core.controller.BaseController;
import com.cps.common.core.domain.AjaxResult;
import com.cps.common.utils.poi.ExcelUtil;
import com.cps.common.core.page.TableDataInfo;

/**
 * 中标结果公告Controller
 * 
 * @author wxf
 * @date 2022-08-16
 */
@Controller
@RequestMapping("/cp/bidWinningResultsAnnouncement")
public class BidWinningResultsAnnouncementController extends BaseController
{
    private String prefix = "cp/bidWinningResultsAnnouncement";

    @Autowired
    private IBidWinningResultsAnnouncementService bidWinningResultsAnnouncementService;

    @RequiresPermissions("cp:bidWinningResultsAnnouncement:view")
    @GetMapping()
    public String bidWinningResultsAnnouncement()
    {
        return prefix + "/bidWinningResultsAnnouncement";
    }

    /**
     * 查询中标结果公告列表
     */
    @RequiresPermissions("cp:bidWinningResultsAnnouncement:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(BidWinningResultsAnnouncement bidWinningResultsAnnouncement)
    {
        startPage();
        List<BidWinningResultsAnnouncement> list = bidWinningResultsAnnouncementService.selectBidWinningResultsAnnouncementList(bidWinningResultsAnnouncement);
        return getDataTable(list);
    }

    /**
     * 导出中标结果公告列表
     */
    @RequiresPermissions("cp:bidWinningResultsAnnouncement:export")
    @Log(title = "中标结果公告", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(BidWinningResultsAnnouncement bidWinningResultsAnnouncement)
    {
        List<BidWinningResultsAnnouncement> list = bidWinningResultsAnnouncementService.selectBidWinningResultsAnnouncementList(bidWinningResultsAnnouncement);
        ExcelUtil<BidWinningResultsAnnouncement> util = new ExcelUtil<BidWinningResultsAnnouncement>(BidWinningResultsAnnouncement.class);
        return util.exportExcel(list, "中标结果公告数据");
    }

    /**
     * 新增中标结果公告
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存中标结果公告
     */
    @RequiresPermissions("cp:bidWinningResultsAnnouncement:add")
    @Log(title = "中标结果公告", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(BidWinningResultsAnnouncement bidWinningResultsAnnouncement)
    {
        bidWinningResultsAnnouncement.setBidWinningResultsAnnouncementId(IdUtils.fastSimpleUUID());
        return toAjax(bidWinningResultsAnnouncementService.insertBidWinningResultsAnnouncement(bidWinningResultsAnnouncement));
    }

    /**
     * 修改中标结果公告
     */
    @RequiresPermissions("cp:bidWinningResultsAnnouncement:edit")
    @GetMapping("/edit/{bidWinningResultsAnnouncementId}")
    public String edit(@PathVariable("bidWinningResultsAnnouncementId") String bidWinningResultsAnnouncementId, ModelMap mmap)
    {
        BidWinningResultsAnnouncement bidWinningResultsAnnouncement = bidWinningResultsAnnouncementService.selectBidWinningResultsAnnouncementByBidWinningResultsAnnouncementId(bidWinningResultsAnnouncementId);
        mmap.put("bidWinningResultsAnnouncement", bidWinningResultsAnnouncement);
        return prefix + "/edit";
    }

    /**
     * 修改保存中标结果公告
     */
    @RequiresPermissions("cp:bidWinningResultsAnnouncement:edit")
    @Log(title = "中标结果公告", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(BidWinningResultsAnnouncement bidWinningResultsAnnouncement)
    {
        return toAjax(bidWinningResultsAnnouncementService.updateBidWinningResultsAnnouncement(bidWinningResultsAnnouncement));
    }

    /**
     * 删除中标结果公告
     */
    @RequiresPermissions("cp:bidWinningResultsAnnouncement:remove")
    @Log(title = "中标结果公告", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(bidWinningResultsAnnouncementService.deleteBidWinningResultsAnnouncementByBidWinningResultsAnnouncementIds(ids));
    }

    // 查询标书
    @RequestMapping("/search/")
    public String queryTender()
    {
        return prefix + "/search";
    }
}
