package com.cps.audit.controller;

import java.util.List;

import com.cps.audit.domain.AuditDocuments;
import com.cps.audit.service.IAuditDocumentsService;
import com.cps.common.utils.DateUtils;
import com.cps.common.utils.ShiroUtils;
import com.cps.common.utils.uuid.CpsIdUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.cps.common.annotation.Log;
import com.cps.common.enums.BusinessType;
import com.cps.audit.domain.BusinessLicenseInfo;
import com.cps.audit.service.IBusinessLicenseInfoService;
import com.cps.common.core.controller.BaseController;
import com.cps.common.core.domain.AjaxResult;
import com.cps.common.utils.poi.ExcelUtil;
import com.cps.common.core.page.TableDataInfo;

/**
 * 小商超审核管理Controller
 * 
 * @author cps
 * @date 2022-08-16
 */
@Controller
@RequestMapping("/audit/businessLicenseManage")
public class BusinessLicenseInfoController extends BaseController
{
    private String prefix = "audit/businessLicenseManage";

    @Autowired
    private IBusinessLicenseInfoService businessLicenseInfoService;

    @RequiresPermissions("audit:businessLicenseManage:view")
    @GetMapping()
    public String businessLicenseManage()
    {
        return prefix + "/businessLicenseManage";
    }

    /**
     * 查询小商超审核管理列表
     */
    @RequiresPermissions("audit:businessLicenseManage:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(BusinessLicenseInfo businessLicenseInfo)
    {
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
    public AjaxResult export(BusinessLicenseInfo businessLicenseInfo)
    {
        List<BusinessLicenseInfo> list = businessLicenseInfoService.selectBusinessLicenseInfoList(businessLicenseInfo);
        ExcelUtil<BusinessLicenseInfo> util = new ExcelUtil<BusinessLicenseInfo>(BusinessLicenseInfo.class);
        return util.exportExcel(list, "小商超审核管理数据");
    }

    /**
     * 新增小商超审核管理
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存小商超审核管理
     */
    @RequiresPermissions("audit:businessLicenseManage:add")
    @Log(title = "小商超审核管理", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(BusinessLicenseInfo businessLicenseInfo)
    {
        businessLicenseInfo.setBusinessAuditDocumentId(CpsIdUtils.createChecklistId('2'));//此处应该利用用户id从数据库查找
        businessLicenseInfo.setCreateDatetime(DateUtils.parseDate(DateUtils.getTime()));
        return toAjax(businessLicenseInfoService.insertBusinessLicenseInfo(businessLicenseInfo));
    }

    /**
     * 修改小商超审核管理
     */
    @RequiresPermissions("audit:businessLicenseManage:edit")
    @GetMapping("/edit/{businessAuditDocumentId}")
    public String edit(@PathVariable("businessAuditDocumentId") String businessAuditDocumentId, ModelMap mmap)
    {
        BusinessLicenseInfo businessLicenseInfo = businessLicenseInfoService.selectBusinessLicenseInfoByBusinessAuditDocumentId(businessAuditDocumentId);
        mmap.put("businessLicenseInfo", businessLicenseInfo);
        return prefix + "/edit";
    }

    /**
     * 修改保存小商超审核管理
     */
    @RequiresPermissions("audit:businessLicenseManage:edit")
    @Log(title = "小商超审核管理", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(BusinessLicenseInfo businessLicenseInfo)
    {
        return toAjax(businessLicenseInfoService.updateBusinessLicenseInfo(businessLicenseInfo));
    }

    /**
     * 删除小商超审核管理
     */
    @RequiresPermissions("audit:businessLicenseManage:remove")
    @Log(title = "小商超审核管理", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(businessLicenseInfoService.deleteBusinessLicenseInfoByBusinessAuditDocumentIds(ids));
    }

    @Autowired
    private IAuditDocumentsService auditDocumentsService;

    @GetMapping("/detail")
    public String detail(ModelMap map){
        List<AuditDocuments> tempList = auditDocumentsService.selectAuditDocumentsByUserId(ShiroUtils.getUserId());

        AuditDocuments documentsResult=null;

//        BusinessLicenseInfo infoResult=null;

        for (AuditDocuments temp:tempList
        ) {
            String id=temp.getChecklistId();
            BusinessLicenseInfo info=businessLicenseInfoService.selectBusinessLicenseInfoByBusinessAuditDocumentId(id);
            if (info!=null){
                documentsResult=temp;
                infoResult=info;
            }
        }

        System.out.println(infoResult);
        System.out.println(documentsResult);
        map.put("info",infoResult);
        map.put("auditStatus",documentsResult.getAuditStatus());
        map.put("auditResult",documentsResult.getAuditResult());

        return prefix+"/detail";
    }

    public BusinessLicenseInfo infoResult;
}
