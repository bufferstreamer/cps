package com.cps.web.controller.submit;

import com.cps.audit.domain.AuditDocuments;
import com.cps.audit.domain.BusinessLicenseInfo;
import com.cps.audit.service.IAuditDocumentsService;
import com.cps.audit.service.IBusinessLicenseInfoService;
import com.cps.common.utils.ShiroUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cps.common.core.controller.BaseController;

import java.util.List;

/**
 * 小超市提交营业执照
 * 
 * @author cps
 * @date 2022-08-26
 */
@Controller
@RequestMapping("/submit/supermarketLicense")
public class SubmitSupermarketLicenseController extends BaseController {
    private String prefix = "submit";

    @Autowired
    private IAuditDocumentsService mAuditDocumentsService;

    @Autowired
    private IBusinessLicenseInfoService mBusinessLicenseInfoService;

    @RequiresPermissions("audit:businessLicenseManage:add")
    @GetMapping()
    public String supermarketLicense(Model model)
    {
        model.addAttribute("result",CanSubmit());
        return prefix + "/supermarketLicense";
    }

    private boolean CanSubmit() {
        List<AuditDocuments> tempList = mAuditDocumentsService.selectAuditDocumentsByUserId(ShiroUtils.getUserId());
        if (tempList == null || tempList.isEmpty()) {
            return true;
        }

        for (int i=0;i<tempList.size();i++){
            String id=tempList.get(i).getChecklistId();
            BusinessLicenseInfo info = mBusinessLicenseInfoService.selectBusinessLicenseInfoByBusinessAuditDocumentId(id);
            if (info!=null){
                return false;
            }
        }

        return true;
    }
}
