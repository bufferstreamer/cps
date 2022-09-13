package com.cps.audit.controller;

import com.cps.audit.domain.AuditDocuments;
import com.cps.audit.service.IAuditDocumentsService;
import com.cps.common.annotation.Log;
import com.cps.common.core.controller.BaseController;
import com.cps.common.core.domain.AjaxResult;
import com.cps.common.core.page.TableDataInfo;
import com.cps.common.enums.BusinessType;
import com.cps.common.utils.poi.ExcelUtil;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 审核单据管理Controller
 *
 * @author cps
 * @date 2022-08-16
 */
@Controller
@RequestMapping("/audit/auditDocumentsManage")
public class AuditDocumentsController extends BaseController {
    private String prefix = "audit/auditDocumentsManage";

    @Autowired
    private IAuditDocumentsService auditDocumentsService;

    @RequiresPermissions("audit:auditDocumentsManage:view")
    @GetMapping()
    public String auditDocumentsManage() {
        return prefix + "/auditDocumentsManage";
    }

    /**
     * 查询审核单据管理列表
     */
    @RequiresPermissions("audit:auditDocumentsManage:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(AuditDocuments auditDocuments) {
        startPage();
        List<AuditDocuments> list = auditDocumentsService.selectAuditDocumentsList(auditDocuments);
        return getDataTable(list);
    }

    /**
     * 导出审核单据管理列表
     */
    @RequiresPermissions("audit:auditDocumentsManage:export")
    @Log(title = "审核单据管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(AuditDocuments auditDocuments) {
        List<AuditDocuments> list = auditDocumentsService.selectAuditDocumentsList(auditDocuments);
        ExcelUtil<AuditDocuments> util = new ExcelUtil<AuditDocuments>(AuditDocuments.class);
        return util.exportExcel(list, "审核单据管理数据");
    }

    /**
     * 新增审核单据管理
     */
    @GetMapping("/add")
    public String add() {
        return prefix + "/add";
    }

    /**
     * 新增保存审核单据管理
     */
    @RequiresPermissions("audit:auditDocumentsManage:add")
    @Log(title = "审核单据管理", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(AuditDocuments auditDocuments) {
//        auditDocuments.setChecklistId(CpsIdUtils.createChecklistId('1'));//此处应该利用用户id从数据库查找
        return toAjax(auditDocumentsService.insertAuditDocuments(auditDocuments));
    }

    /**
     * 修改审核单据管理
     */
    @RequiresPermissions("audit:auditDocumentsManage:edit")
    @GetMapping("/edit/{checklistId}")
    public String edit(@PathVariable("checklistId") String checklistId, ModelMap mmap) {
        AuditDocuments auditDocuments = auditDocumentsService.selectAuditDocumentsByChecklistId(checklistId);
        mmap.put("auditDocuments", auditDocuments);
        return prefix + "/edit";
    }

    /**
     * 修改保存审核单据管理
     */
    @RequiresPermissions("audit:auditDocumentsManage:edit")
    @Log(title = "审核单据管理", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(AuditDocuments auditDocuments) {
        return toAjax(auditDocumentsService.updateAuditDocuments(auditDocuments));
    }

    /**
     * 删除审核单据管理
     */
    @RequiresPermissions("audit:auditDocumentsManage:remove")
    @Log(title = "审核单据管理", businessType = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        return toAjax(auditDocumentsService.deleteAuditDocumentsByChecklistIds(ids));
    }

    /**
     * 根据审核单id查询审核状态
     */
    @PostMapping("search-status")
    @ResponseBody
    public String selectAuditStatusByChecklistId(String checklistId) {
        return auditDocumentsService.selectAuditDocumentsByChecklistId(checklistId).getAuditStatus();
    }
}
