package com.cps.audit.controller;

import java.util.List;

import com.cps.common.utils.DateUtils;
import com.cps.common.utils.uuid.CpsIdUtils;
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
import com.cps.audit.domain.BusinessCreditEvaluationInfo;
import com.cps.audit.service.IBusinessCreditEvaluationInfoService;
import com.cps.common.core.controller.BaseController;
import com.cps.common.core.domain.AjaxResult;
import com.cps.common.utils.poi.ExcelUtil;
import com.cps.common.core.page.TableDataInfo;

/**
 * 小商超信用评价审核管理Controller
 * 
 * @author cps
 * @date 2022-08-16
 */
@Controller
@RequestMapping("/audit/businessCreditEvaluationManage")
public class BusinessCreditEvaluationInfoController extends BaseController
{
    private String prefix = "audit/businessCreditEvaluationManage";

    @Autowired
    private IBusinessCreditEvaluationInfoService businessCreditEvaluationInfoService;

    @RequiresPermissions("audit:businessCreditEvaluationManage:view")
    @GetMapping()
    public String businessCreditEvaluationManage()
    {
        return prefix + "/businessCreditEvaluationManage";
    }

    /**
     * 查询小商超信用评价审核管理列表
     */
    @RequiresPermissions("audit:businessCreditEvaluationManage:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(BusinessCreditEvaluationInfo businessCreditEvaluationInfo)
    {
        startPage();
        List<BusinessCreditEvaluationInfo> list = businessCreditEvaluationInfoService.selectBusinessCreditEvaluationInfoList(businessCreditEvaluationInfo);
        return getDataTable(list);
    }

    /**
     * 导出小商超信用评价审核管理列表
     */
    @RequiresPermissions("audit:businessCreditEvaluationManage:export")
    @Log(title = "小商超信用评价审核管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(BusinessCreditEvaluationInfo businessCreditEvaluationInfo)
    {
        List<BusinessCreditEvaluationInfo> list = businessCreditEvaluationInfoService.selectBusinessCreditEvaluationInfoList(businessCreditEvaluationInfo);
        ExcelUtil<BusinessCreditEvaluationInfo> util = new ExcelUtil<BusinessCreditEvaluationInfo>(BusinessCreditEvaluationInfo.class);
        return util.exportExcel(list, "小商超信用评价审核管理数据");
    }

    /**
     * 新增小商超信用评价审核管理
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存小商超信用评价审核管理
     */
    @RequiresPermissions("audit:businessCreditEvaluationManage:add")
    @Log(title = "小商超信用评价审核管理", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(BusinessCreditEvaluationInfo businessCreditEvaluationInfo)
    {
        businessCreditEvaluationInfo.setBusinessCreditEvaluationAuditId(IdUtils.simpleUUID());
        businessCreditEvaluationInfo.setChecklistId(CpsIdUtils.createChecklistId('2'));//此处应该利用用户id从数据库查找
        businessCreditEvaluationInfo.setCreateDatetime(DateUtils.parseDate(DateUtils.getTime()));
        return toAjax(businessCreditEvaluationInfoService.insertBusinessCreditEvaluationInfo(businessCreditEvaluationInfo));
    }

    /**
     * 修改小商超信用评价审核管理
     */
    @RequiresPermissions("audit:businessCreditEvaluationManage:edit")
    @GetMapping("/edit/{businessCreditEvaluationAuditId}")
    public String edit(@PathVariable("businessCreditEvaluationAuditId") String businessCreditEvaluationAuditId, ModelMap mmap)
    {
        BusinessCreditEvaluationInfo businessCreditEvaluationInfo = businessCreditEvaluationInfoService.selectBusinessCreditEvaluationInfoByBusinessCreditEvaluationAuditId(businessCreditEvaluationAuditId);
        mmap.put("businessCreditEvaluationInfo", businessCreditEvaluationInfo);
        return prefix + "/edit";
    }

    /**
     * 修改保存小商超信用评价审核管理
     */
    @RequiresPermissions("audit:businessCreditEvaluationManage:edit")
    @Log(title = "小商超信用评价审核管理", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(BusinessCreditEvaluationInfo businessCreditEvaluationInfo)
    {
        return toAjax(businessCreditEvaluationInfoService.updateBusinessCreditEvaluationInfo(businessCreditEvaluationInfo));
    }

    /**
     * 删除小商超信用评价审核管理
     */
    @RequiresPermissions("audit:businessCreditEvaluationManage:remove")
    @Log(title = "小商超信用评价审核管理", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(businessCreditEvaluationInfoService.deleteBusinessCreditEvaluationInfoByBusinessCreditEvaluationAuditIds(ids));
    }
}
