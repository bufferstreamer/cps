package com.cps.web.controller.submit;

import com.cps.audit.domain.AuditDocuments;
import com.cps.audit.domain.SupplierCreditEvaluationInfo;
import com.cps.audit.service.IAuditDocumentsService;
import com.cps.audit.service.ISupplierCreditEvaluationInfoService;
import com.cps.common.core.controller.BaseController;
import com.cps.common.utils.ShiroUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * 供应商提交信用审核
 *
 * @author cps
 * @date 2022-08-26
 */
@Controller
@RequestMapping("/submit/supplierCredit")
public class SubmitSupplierCreditController extends BaseController {
    private String prefix = "submit";

    @Autowired
    private IAuditDocumentsService mAuditDocumentsService;

    @Autowired
    private ISupplierCreditEvaluationInfoService mSupplierCreditEvaluationInfoService;

    @RequiresPermissions("audit:supplierCreditEvaluationManage:add")
    @GetMapping()
    public String supplierCredit(Model model) {
        model.addAttribute("result", CanSubmit());
        return prefix + "/supplierCredit";
    }

    private boolean CanSubmit() {
        List<AuditDocuments> tempList = mAuditDocumentsService.selectAuditDocumentsByUserId(ShiroUtils.getUserId());
        if (tempList == null || tempList.isEmpty()) {
            return true;
        }

        for (int i = 0; i < tempList.size(); i++) {
            String id = tempList.get(i).getChecklistId();
            SupplierCreditEvaluationInfo info = mSupplierCreditEvaluationInfoService.selectSupplierCreditEvaluationInfoByChecklistId(id);
            if (info != null) {
                return false;
            }
        }

        return true;
    }
}
