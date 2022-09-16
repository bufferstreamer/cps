package com.cps.audit.controller;

import com.cps.audit.domain.AuditDocuments;
import com.cps.audit.domain.SupplierCreditEvaluationInfo;
import com.cps.audit.service.IAuditDocumentsService;
import com.cps.audit.service.ISupplierCreditEvaluationInfoService;
import com.cps.common.annotation.Log;
import com.cps.common.core.controller.BaseController;
import com.cps.common.core.domain.AjaxResult;
import com.cps.common.core.page.TableDataInfo;
import com.cps.common.enums.BusinessType;
import com.cps.common.utils.DateUtils;
import com.cps.common.utils.ShiroUtils;
import com.cps.common.utils.poi.ExcelUtil;
import com.cps.common.utils.uuid.CpsIdUtils;
import com.cps.common.utils.uuid.IdUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 供应商评价审核管理Controller
 *
 * @author cps
 * @date 2022-08-16
 */
@Controller
@RequestMapping("/audit/supplierCreditEvaluationManage")
public class SupplierCreditEvaluationInfoController extends BaseController {
    private String prefix = "audit/supplierCreditEvaluationManage";

    @Autowired
    private ISupplierCreditEvaluationInfoService supplierCreditEvaluationInfoService;
    @Autowired
    private IAuditDocumentsService auditDocumentsService;

    @RequiresPermissions("audit:supplierCreditEvaluationManage:view")
    @GetMapping()
    public String supplierCreditEvaluationManage() {
        return prefix + "/supplierCreditEvaluationManage";
    }

    /**
     * 查询供应商评价审核管理列表
     */
    @RequiresPermissions("audit:supplierCreditEvaluationManage:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(SupplierCreditEvaluationInfo supplierCreditEvaluationInfo) {
        startPage();
        List<SupplierCreditEvaluationInfo> list = supplierCreditEvaluationInfoService.selectSupplierCreditEvaluationInfoList(supplierCreditEvaluationInfo);
        return getDataTable(list);
    }

    /**
     * 导出供应商评价审核管理列表
     */
    @RequiresPermissions("audit:supplierCreditEvaluationManage:export")
    @Log(title = "供应商评价审核管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(SupplierCreditEvaluationInfo supplierCreditEvaluationInfo) {
        List<SupplierCreditEvaluationInfo> list = supplierCreditEvaluationInfoService.selectSupplierCreditEvaluationInfoList(supplierCreditEvaluationInfo);
        ExcelUtil<SupplierCreditEvaluationInfo> util = new ExcelUtil<SupplierCreditEvaluationInfo>(SupplierCreditEvaluationInfo.class);
        return util.exportExcel(list, "供应商评价审核管理数据");
    }

    /**
     * 新增供应商评价审核管理
     */
    @GetMapping("/add")
    public String add() {
        return prefix + "/add";
    }

    /**
     * 新增保存供应商评价审核管理
     */
    @RequiresPermissions("audit:supplierCreditEvaluationManage:add")
    @Log(title = "供应商评价审核管理", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(SupplierCreditEvaluationInfo supplierCreditEvaluationInfo) {
        supplierCreditEvaluationInfo.setSupplierCreditEvaluationAuditId(IdUtils.simpleUUID());
        supplierCreditEvaluationInfo.setChecklistId(CpsIdUtils.createChecklistId('1'));
        supplierCreditEvaluationInfo.setCreateDatetime(DateUtils.parseDate(DateUtils.getTime()));
        return toAjax(supplierCreditEvaluationInfoService.insertSupplierCreditEvaluationInfo(supplierCreditEvaluationInfo));
    }

    /**
     * 修改供应商评价审核管理
     */
    @RequiresPermissions("audit:supplierCreditEvaluationManage:edit")
    @GetMapping("/edit/{supplierCreditEvaluationAuditId}")
    public String edit(@PathVariable("supplierCreditEvaluationAuditId") String supplierCreditEvaluationAuditId, ModelMap mmap) {
        SupplierCreditEvaluationInfo supplierCreditEvaluationInfo = supplierCreditEvaluationInfoService.selectSupplierCreditEvaluationInfoBySupplierCreditEvaluationAuditId(supplierCreditEvaluationAuditId);
        mmap.put("supplierCreditEvaluationInfo", supplierCreditEvaluationInfo);
        return prefix + "/edit";
    }

    /**
     * 修改保存供应商评价审核管理
     */
    @RequiresPermissions("audit:supplierCreditEvaluationManage:edit")
    @Log(title = "供应商评价审核管理", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(SupplierCreditEvaluationInfo supplierCreditEvaluationInfo) {
        AuditDocuments auditDocuments = auditDocumentsService.selectAuditDocumentsByChecklistId(supplierCreditEvaluationInfo.getChecklistId());
        auditDocuments.setAuditStatus("1");
        auditDocumentsService.updateAuditDocuments(auditDocuments);

        return toAjax(supplierCreditEvaluationInfoService.updateSupplierCreditEvaluationInfo(supplierCreditEvaluationInfo));
    }

    /**
     * 删除供应商评价审核管理
     */
    @RequiresPermissions("audit:supplierCreditEvaluationManage:remove")
    @Log(title = "供应商评价审核管理", businessType = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        return toAjax(supplierCreditEvaluationInfoService.deleteSupplierCreditEvaluationInfoBySupplierCreditEvaluationAuditIds(ids));
    }
}
