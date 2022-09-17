package com.cps.audit.controller;

import com.cps.audit.domain.AuditDocuments;
import com.cps.audit.domain.SupplierLicenseInfo;
import com.cps.audit.service.IAuditDocumentsService;
import com.cps.audit.service.ISupplierLicenseInfoService;
import com.cps.common.annotation.Log;
import com.cps.common.core.controller.BaseController;
import com.cps.common.core.domain.AjaxResult;
import com.cps.common.core.domain.entity.SysDept;
import com.cps.common.core.page.TableDataInfo;
import com.cps.common.enums.BusinessType;
import com.cps.common.utils.DateUtils;
import com.cps.common.utils.ShiroUtils;
import com.cps.common.utils.poi.ExcelUtil;
import com.cps.common.utils.uuid.CpsIdUtils;
import com.cps.system.service.ISysDeptService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

/**
 * 供应商营业执照审核管理Controller
 *
 * @author cps
 * @date 2022-08-16
 */
@Controller
@RequestMapping("/audit/supplierLicenseManage")
public class SupplierLicenseInfoController extends BaseController {
    private String prefix = "audit/supplierLicenseManage";

    @Autowired
    private ISupplierLicenseInfoService supplierLicenseInfoService;
    @Autowired
    private IAuditDocumentsService auditDocumentsService;
    @Autowired
    private ISysDeptService sysDeptService;

    @RequiresPermissions("audit:supplierLicenseManage:view")
    @GetMapping()
    public String supplierLicenseManage() {
        return prefix + "/supplierLicenseManage";
    }

    /**
     * 查询供应商营业执照审核管理列表
     */
    @RequiresPermissions("audit:supplierLicenseManage:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(SupplierLicenseInfo supplierLicenseInfo) {
        startPage();
        List<SupplierLicenseInfo> list = supplierLicenseInfoService.selectSupplierLicenseInfoList(supplierLicenseInfo);
        return getDataTable(list);
    }

    /**
     * 导出供应商营业执照审核管理列表
     */
    @RequiresPermissions("audit:supplierLicenseManage:export")
    @Log(title = "供应商营业执照审核管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(SupplierLicenseInfo supplierLicenseInfo) {
        List<SupplierLicenseInfo> list = supplierLicenseInfoService.selectSupplierLicenseInfoList(supplierLicenseInfo);
        ExcelUtil<SupplierLicenseInfo> util = new ExcelUtil<SupplierLicenseInfo>(SupplierLicenseInfo.class);
        return util.exportExcel(list, "供应商营业执照审核管理数据");
    }

    /**
     * 新增供应商营业执照审核管理
     */
    @GetMapping("/add")
    public String add(ModelMap map)
    {
        AddListToMap(map);
        return prefix + "/add";
    }

    private void AddListToMap(ModelMap map){
        List<String> typeNameList=new ArrayList<>();
        List<List<SysDept>> scopeList=new ArrayList<>();

        List<SysDept> typeList = GetChildrenByParentId(100);
        for (SysDept type:typeList)
        {
            String typeName=type.getDeptName();
            List<SysDept> tempList = GetChildrenByParentId(type.getDeptId());
            typeNameList.add(typeName);
            scopeList.add(tempList);
        }

        map.put("typeNameList",typeNameList);
        map.put("scopeList",scopeList);
    }


    private List<SysDept> GetChildrenByParentId(long parentId){
        SysDept dept = new SysDept();
        dept.setParentId(parentId);

        return sysDeptService.selectDeptList(dept);
    }

    /**
     * 新增保存供应商营业执照审核管理
     */
    @RequiresPermissions("audit:supplierLicenseManage:add")
    @Log(title = "供应商营业执照审核管理", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(SupplierLicenseInfo supplierLicenseInfo, HttpServletRequest request) {
        supplierLicenseInfo.setChecklistId(CpsIdUtils.createChecklistId('1'));
        supplierLicenseInfo.setCreateDatetime(DateUtils.parseDate(DateUtils.getTime()));

        EditBusinessScope(supplierLicenseInfo, request);
        return toAjax(supplierLicenseInfoService.insertSupplierLicenseInfo(supplierLicenseInfo));
    }

    //对BusinessScope这一字段做处理
    private void EditBusinessScope(SupplierLicenseInfo supplierLicenseInfo, HttpServletRequest request){
        String type = request.getParameter("businessType");
        String scope = supplierLicenseInfo.getBusinessScope();

        supplierLicenseInfo.setBusinessScope(type+":"+scope);
    }

    /**
     * 修改供应商营业执照审核管理
     */
    @RequiresPermissions("audit:supplierLicenseManage:edit")
    @GetMapping("/edit/{checklistId}")
    public String edit(@PathVariable("checklistId") String checklistId, ModelMap map) {
        SupplierLicenseInfo supplierLicenseInfo = supplierLicenseInfoService.selectSupplierLicenseInfoByChecklistId(checklistId);
        String[] scopeArr=supplierLicenseInfo.getBusinessScope().split(":");
        String type = scopeArr[0];
        String scope = scopeArr[1];
        supplierLicenseInfo.setBusinessScope(scope);

        AddListToMap(map);
        System.out.println(type);
        System.out.println(scope);
        map.put("businessType", type);

        map.put("supplierLicenseInfo", supplierLicenseInfo);
        return prefix + "/edit";
    }

    /**
     * 修改保存供应商营业执照审核管理
     */
    @RequiresPermissions("audit:supplierLicenseManage:edit")
    @Log(title = "供应商营业执照审核管理", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(SupplierLicenseInfo supplierLicenseInfo, HttpServletRequest request) {
        AuditDocuments auditDocuments = auditDocumentsService.selectAuditDocumentsByChecklistId(supplierLicenseInfo.getChecklistId());
        auditDocuments.setAuditStatus("1");
        auditDocumentsService.updateAuditDocuments(auditDocuments);

        EditBusinessScope(supplierLicenseInfo, request);
        return toAjax(supplierLicenseInfoService.updateSupplierLicenseInfo(supplierLicenseInfo));
    }

    /**
     * 删除供应商营业执照审核管理
     */
    @RequiresPermissions("audit:supplierLicenseManage:remove")
    @Log(title = "供应商营业执照审核管理", businessType = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        return toAjax(supplierLicenseInfoService.deleteSupplierLicenseInfoByChecklistIds(ids));
    }
}
