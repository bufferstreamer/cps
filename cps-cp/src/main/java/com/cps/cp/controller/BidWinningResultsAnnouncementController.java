package com.cps.cp.controller;

import com.cps.common.annotation.Log;
import com.cps.common.core.controller.BaseController;
import com.cps.common.core.domain.AjaxResult;
import com.cps.common.core.page.TableDataInfo;
import com.cps.common.enums.BusinessType;
import com.cps.common.utils.poi.ExcelUtil;
import com.cps.common.utils.uuid.IdUtils;
import com.cps.cp.domain.BidWinningResultsAnnouncement;
import com.cps.cp.domain.Tender;
import com.cps.cp.service.IBidWinningResultsAnnouncementService;
import com.cps.cp.service.ITenderService;
import com.cps.user.domain.OrderItem;
import com.cps.user.service.IOrderItemService;
import org.apache.poi.xwpf.usermodel.XWPFDocument;
import org.apache.poi.xwpf.usermodel.XWPFTable;
import org.apache.poi.xwpf.usermodel.XWPFTableRow;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/**
 * 中标结果公告Controller
 *
 * @author wxf
 * @date 2022-08-16
 */
@Controller
@RequestMapping("/cp/bidWinningResultsAnnouncement")
public class BidWinningResultsAnnouncementController extends BaseController {
    private String prefix = "cp/bidWinningResultsAnnouncement";

    @Value("${cps.profile}")
    private String profile;

    @Autowired
    private ITenderService tenderService;

    @Autowired
    private IBidWinningResultsAnnouncementService bidWinningResultsAnnouncementService;
    @Autowired
    private IOrderItemService orderItemService;

    @RequiresPermissions("cp:bidWinningResultsAnnouncement:view")
    @GetMapping()
    public String bidWinningResultsAnnouncement() {
        return prefix + "/bidWinningResultsAnnouncement";
    }

    /**
     * 查询中标结果公告列表
     */
    @RequiresPermissions("cp:bidWinningResultsAnnouncement:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(BidWinningResultsAnnouncement bidWinningResultsAnnouncement) {
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
    public AjaxResult export(BidWinningResultsAnnouncement bidWinningResultsAnnouncement) {
        List<BidWinningResultsAnnouncement> list = bidWinningResultsAnnouncementService.selectBidWinningResultsAnnouncementList(bidWinningResultsAnnouncement);
        ExcelUtil<BidWinningResultsAnnouncement> util = new ExcelUtil<BidWinningResultsAnnouncement>(BidWinningResultsAnnouncement.class);
        return util.exportExcel(list, "中标结果公告数据");
    }

    /**
     * 新增中标结果公告
     */
    @GetMapping("/add")
    public String add() {
        return prefix + "/add";
    }

    /**
     * 新增保存中标结果公告
     */
    @RequiresPermissions("cp:bidWinningResultsAnnouncement:add")
    @Log(title = "中标结果公告", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(BidWinningResultsAnnouncement bidWinningResultsAnnouncement) throws IOException {
        bidWinningResultsAnnouncement.setBidWinningResultsAnnouncementId(IdUtils.fastSimpleUUID());

        String tenderId = bidWinningResultsAnnouncement.getTenderId();
        Tender tender = tenderService.selectTenderByTenderId(tenderId);

        String readFilePath = tender.getTenderDocument().replace("http://localhost/cps/profile", profile);

        FileInputStream fileInputStream = new FileInputStream(readFilePath);

        XWPFDocument doc = new XWPFDocument(fileInputStream);


        List<XWPFTable> tables = doc.getTables();

        for (XWPFTable table : tables) {
            List<XWPFTableRow> rows = table.getRows();
            int productNum = (rows.size() - 2) / 10;
            for (int i = 0; i < productNum; i++) {
                String productName = rows.get(i * 10 + 2).getTableCells().get(0).getText();

                OrderItem orderItem = new OrderItem();
                orderItem.setProductName(productName);
                orderItem.setIsBid("N");

                orderItemService.selectOrderItemList(orderItem).forEach(item->{
                    item.setIsBid("Y");
                    orderItemService.updateOrderItem(item);
                });

            }
        }

        return toAjax(bidWinningResultsAnnouncementService.insertBidWinningResultsAnnouncement(bidWinningResultsAnnouncement));
    }

    /**
     * 修改中标结果公告
     */
    @RequiresPermissions("cp:bidWinningResultsAnnouncement:edit")
    @GetMapping("/edit/{bidWinningResultsAnnouncementId}")
    public String edit(@PathVariable("bidWinningResultsAnnouncementId") String bidWinningResultsAnnouncementId, ModelMap mmap) {
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
    public AjaxResult editSave(BidWinningResultsAnnouncement bidWinningResultsAnnouncement) {
        return toAjax(bidWinningResultsAnnouncementService.updateBidWinningResultsAnnouncement(bidWinningResultsAnnouncement));
    }

    /**
     * 删除中标结果公告
     */
    @RequiresPermissions("cp:bidWinningResultsAnnouncement:remove")
    @Log(title = "中标结果公告", businessType = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        return toAjax(bidWinningResultsAnnouncementService.deleteBidWinningResultsAnnouncementByBidWinningResultsAnnouncementIds(ids));
    }

    // 查询标书
    @RequestMapping("/search/")
    public String queryTender() {
        return prefix + "/search";
    }
}
