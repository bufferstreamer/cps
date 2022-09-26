package com.cps.web.controller.user;

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
import com.cps.user.domain.Reconciliation;
import com.cps.user.service.IReconciliationService;
import com.cps.common.core.controller.BaseController;
import com.cps.common.core.domain.AjaxResult;
import com.cps.common.utils.poi.ExcelUtil;
import com.cps.common.core.page.TableDataInfo;

/**
 * 【请填写功能名称】Controller
 *
 * @author cps
 * @date 2022-09-17
 */
@Controller
@RequestMapping("/user/reconciliation")
public class ReconciliationController extends BaseController {
    private String prefix = "user/reconciliation";

    @Autowired
    private IReconciliationService reconciliationService;

    @RequiresPermissions("user:reconciliation:view")
    @GetMapping()
    public String reconciliation() {
        return prefix + "/reconciliation";
    }

        /**
         * 查询【请填写功能名称】列表
         */
        @RequiresPermissions("user:reconciliation:list")
        @PostMapping("/list")
        @ResponseBody
        public TableDataInfo list(Reconciliation reconciliation) {
            startPage();
            List<Reconciliation> list = reconciliationService.selectReconciliationList(reconciliation);
            return getDataTable(list);
        }

    /**
     * 导出【请填写功能名称】列表
     */
    @RequiresPermissions("system:reconciliation:export")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Reconciliation reconciliation) {
        List<Reconciliation> list = reconciliationService.selectReconciliationList(reconciliation);
        ExcelUtil<Reconciliation> util = new ExcelUtil<Reconciliation>(Reconciliation. class);
        return util.exportExcel(list, "【请填写功能名称】数据");
    }

        /**
         * 新增【请填写功能名称】
         */
        @GetMapping("/add")
        public String add() {
            return prefix + "/add";
        }

    /**
     * 新增保存【请填写功能名称】
     */
    @RequiresPermissions("user:reconciliation:add")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(Reconciliation reconciliation) {
        return toAjax(reconciliationService.insertReconciliation(reconciliation));
    }

    /**
     * 修改【请填写功能名称】
     */
    @RequiresPermissions("user:reconciliation:edit")
    @GetMapping("/edit/{recordId}")
    public String edit(@PathVariable("recordId") String recordId, ModelMap mmap) {
        Reconciliation reconciliation =
            reconciliationService.selectReconciliationByRecordId(recordId);
        mmap.put("reconciliation", reconciliation);
        return prefix + "/edit";
    }

    /**
     * 修改保存【请填写功能名称】
     */
    @RequiresPermissions("user:reconciliation:edit")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(Reconciliation reconciliation) {
        return toAjax(reconciliationService.updateReconciliation(reconciliation));
    }

        /**
         * 删除【请填写功能名称】
         */
        @RequiresPermissions("user:reconciliation:remove")
        @Log(title = "【请填写功能名称】", businessType = BusinessType.DELETE)
        @PostMapping("/remove")
        @ResponseBody
        public AjaxResult remove(String ids) {
            return toAjax(reconciliationService.deleteReconciliationByRecordIds(ids));
        }
}
