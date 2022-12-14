package com.cps.audit.controller;

import com.cps.audit.domain.AuditDocuments;
import com.cps.audit.domain.BusinessLicenseInfo;
import com.cps.audit.service.IAuditDocumentsService;
import com.cps.audit.service.IBusinessLicenseInfoService;
import com.cps.common.annotation.Log;
import com.cps.common.core.controller.BaseController;
import com.cps.common.core.domain.AjaxResult;
import com.cps.common.core.domain.Ztree;
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
import java.util.HashMap;
import java.util.List;

/**
 * 小商超审核管理Controller
 *
 * @author cps
 * @date 2022-08-16
 */
@Controller
@RequestMapping("/audit/businessLicenseManage")
public class BusinessLicenseInfoController extends BaseController {
    private String prefix = "audit/businessLicenseManage";

    @Autowired
    private IBusinessLicenseInfoService businessLicenseInfoService;
    @Autowired
    private IAuditDocumentsService auditDocumentsService;
    @Autowired
    private ISysDeptService sysDeptService;

    @RequiresPermissions("audit:businessLicenseManage:view")
    @GetMapping()
    public String businessLicenseManage() {
        return prefix + "/businessLicenseManage";
    }

    /**
     * 查询小商超审核管理列表
     */
    @RequiresPermissions("audit:businessLicenseManage:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(BusinessLicenseInfo businessLicenseInfo) {
        startPage();
        List<BusinessLicenseInfo> list = businessLicenseInfoService.selectBusinessLicenseInfoList(businessLicenseInfo);
        return getDataTable(list);
    }

    /**
     * 导出小商超审核管理列表
     */
    @RequiresPermissions("audit:businessLicenseManage:export")
    @Log(title = "小商超审核管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(BusinessLicenseInfo businessLicenseInfo) {
        List<BusinessLicenseInfo> list = businessLicenseInfoService.selectBusinessLicenseInfoList(businessLicenseInfo);
        ExcelUtil<BusinessLicenseInfo> util = new ExcelUtil<BusinessLicenseInfo>(BusinessLicenseInfo.class);
        return util.exportExcel(list, "小商超审核管理数据");
    }

    /**
     * 新增小商超审核管理
     */
    @GetMapping("/add")
    public String add(ModelMap map)
    {
        AddListToMap(map);
        return prefix + "/add";
    }

    //将下拉框的信息加入Map
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
     * 新增保存小商超审核管理
     */
    @RequiresPermissions("audit:businessLicenseManage:add")
    @Log(title = "小商超审核管理", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(BusinessLicenseInfo businessLicenseInfo, HttpServletRequest request) {
        businessLicenseInfo.setBusinessAuditDocumentId(CpsIdUtils.createChecklistId('2'));//此处应该利用用户id从数据库查找
        businessLicenseInfo.setCreateDatetime(DateUtils.parseDate(DateUtils.getTime()));

        EditBusinessScope(businessLicenseInfo, request);
        return toAjax(businessLicenseInfoService.insertBusinessLicenseInfo(businessLicenseInfo));
    }

    //对BusinessScope这一字段做处理
    private void EditBusinessScope(BusinessLicenseInfo businessLicenseInfo, HttpServletRequest request){
        String type = request.getParameter("businessType");
        String scope = businessLicenseInfo.getBusinessScope();

        businessLicenseInfo.setBusinessScope(type+":"+scope);
    }

    /**
     * 修改小商超审核管理
     */
    @RequiresPermissions("audit:businessLicenseManage:edit")
    @GetMapping("/edit/{businessAuditDocumentId}")
    public String edit(@PathVariable("businessAuditDocumentId") String businessAuditDocumentId, ModelMap map) {

        BusinessLicenseInfo businessLicenseInfo = businessLicenseInfoService.selectBusinessLicenseInfoByBusinessAuditDocumentId(businessAuditDocumentId);
        String[] scopeArr=businessLicenseInfo.getBusinessScope().split(":");
        String type = scopeArr[0];
        String scope = scopeArr[1];
        businessLicenseInfo.setBusinessScope(scope);

        map.put("businessLicenseInfo", businessLicenseInfo);
        map.put("businessType", type);
        AddListToMap(map);
        return prefix + "/edit";
    }

    /**
     * 修改保存小商超审核管理
     */
    @RequiresPermissions("audit:businessLicenseManage:edit")
    @Log(title = "小商超审核管理", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(BusinessLicenseInfo businessLicenseInfo, HttpServletRequest request) {
        AuditDocuments auditDocuments = auditDocumentsService.selectAuditDocumentsByChecklistId(businessLicenseInfo.getBusinessAuditDocumentId());
        auditDocuments.setAuditStatus("1");
        auditDocumentsService.updateAuditDocuments(auditDocuments);

        EditBusinessScope(businessLicenseInfo, request);

        return toAjax(businessLicenseInfoService.updateBusinessLicenseInfo(businessLicenseInfo));
    }

    /**
     * 删除小商超审核管理
     */
    @RequiresPermissions("audit:businessLicenseManage:remove")
    @Log(title = "小商超审核管理", businessType = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        return toAjax(businessLicenseInfoService.deleteBusinessLicenseInfoByBusinessAuditDocumentIds(ids));
    }
}
