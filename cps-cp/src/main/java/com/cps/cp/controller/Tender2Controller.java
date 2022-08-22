package com.cps.cp.controller;

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
import com.cps.cp.domain.Tender;
import com.cps.cp.service.ITenderService;
import com.cps.common.core.controller.BaseController;
import com.cps.common.core.domain.AjaxResult;
import com.cps.common.utils.poi.ExcelUtil;
import com.cps.common.core.page.TableDataInfo;

/**
 * 竞价Controller
 * 
 * @author wxf
 * @date 2022-08-16
 */
@Controller
@RequestMapping("/cp/tender2")
public class Tender2Controller extends BaseController
{
    private String prefix = "cp/tender2";

    @Autowired
    private ITenderService tenderService;

    @RequiresPermissions("cp:tender2:view")
    @GetMapping()
    public String tender2()
    {
        return prefix + "/tender2";
    }

    /**
     * 查询竞价列表
     */
    @RequiresPermissions("cp:tender2:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Tender tender)
    {
        startPage();
        List<Tender> list = tenderService.selectTender2List(tender);
        return getDataTable(list);
    }

    /**
     * 导出竞价列表
     */
    @RequiresPermissions("cp:tender2:export")
    @Log(title = "竞价", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Tender tender)
    {
        List<Tender> list = tenderService.selectTender2List(tender);
        ExcelUtil<Tender> util = new ExcelUtil<Tender>(Tender.class);
        return util.exportExcel(list, "竞价数据");
    }

    /**
     * 新增竞价
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存竞价
     */
    @RequiresPermissions("cp:tender2:add")
    @Log(title = "竞价", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(Tender tender)
    {
        return toAjax(tenderService.insertTender(tender));
    }

    /**
     * 修改竞价
     */
    @RequiresPermissions("cp:tender2:edit")
    @GetMapping("/edit/{tenderId}")
    public String edit(@PathVariable("tenderId") String tenderId, ModelMap mmap)
    {
        Tender tender = tenderService.selectTenderByTenderId(tenderId);
        mmap.put("tender", tender);
        return prefix + "/edit";
    }

    /**
     * 修改保存竞价
     */
    @RequiresPermissions("cp:tender2:edit")
    @Log(title = "竞价", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(Tender tender)
    {
        return toAjax(tenderService.updateTender(tender));
    }

    /**
     * 删除竞价
     */
    @RequiresPermissions("cp:tender2:remove")
    @Log(title = "竞价", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(tenderService.deleteTenderByTenderIds(ids));
    }

    // 查询详细方法
    @RequestMapping("/detail/{tenderId}")
    public String detail(@PathVariable("tenderId") String tenderId, ModelMap mmap)
    {
        mmap.put("tender", tenderService.selectTenderByTenderId(tenderId));
        return prefix + "/detail";
    }
}
