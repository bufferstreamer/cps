package com.cps.web.controller.submit;

import java.util.List;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cps.audit.domain.AuditDocuments;
import com.cps.audit.domain.SupplierLicenseInfo;
import com.cps.audit.service.IAuditDocumentsService;
import com.cps.audit.service.ISupplierLicenseInfoService;
import com.cps.common.core.controller.BaseController;
import com.cps.common.utils.ShiroUtils;
import org.springframework.web.servlet.ModelAndView;

/**
 * 供应商提交营业执照
 * 
 * @author cps
 * @date 2022-08-26
 */
@Controller
@RequestMapping("/submit/supplierLicense")
public class SubmitSupplierLicenseController extends BaseController {
    private String prefix = "submit";

    @Autowired
    private IAuditDocumentsService mAuditDocumentsService;

    @Autowired
    private ISupplierLicenseInfoService mSupplierLicenseInfoService;

    @RequiresPermissions("audit:supplierLicenseManage:add")
    @GetMapping()
    public String supplierLicense(Model model)
    {
        System.out.println(CanSubmit());
        model.addAttribute("result",CanSubmit());
        return prefix + "/supplierLicense";
    }

    private boolean CanSubmit() {
        List<AuditDocuments> tempList = mAuditDocumentsService.selectAuditDocumentsByUserId(ShiroUtils.getUserId());
        if (tempList == null || tempList.isEmpty()) {
            return true;
        }

        for (int i = 0; i < tempList.size(); i++) {
            String id = tempList.get(i).getChecklistId();
            SupplierLicenseInfo info = mSupplierLicenseInfoService.selectSupplierLicenseInfoByChecklistId(id);
            if (info!=null){
                return false;
            }
        }

        return true;
    }
}
