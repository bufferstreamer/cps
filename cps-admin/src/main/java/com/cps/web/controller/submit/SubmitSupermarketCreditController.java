package com.cps.web.controller.submit;

import com.cps.audit.domain.AuditDocuments;
import com.cps.audit.domain.BusinessCreditEvaluationInfo;
import com.cps.audit.service.IAuditDocumentsService;
import com.cps.audit.service.IBusinessCreditEvaluationInfoService;
import com.cps.common.utils.ShiroUtils;
import com.cps.framework.web.domain.server.Sys;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cps.common.core.controller.BaseController;

import java.util.List;

/**
 * 小超市提交信用审核
 * 
 * @author cps
 * @date 2022-08-26
 */
@Controller
@RequestMapping("/submit/supermarketCredit")
public class SubmitSupermarketCreditController extends BaseController
{
    private String prefix = "submit";

    @Autowired
    private IAuditDocumentsService mAuditDocumentsService;

    @Autowired
    private IBusinessCreditEvaluationInfoService mBusinessCreditEvaluationInfoService;

    @RequiresPermissions("audit:businessCreditEvaluationManage:add")
    @GetMapping()
    public String supermarketCredit(Model model)
    {
        model.addAttribute("result",CanSubmit());
        return prefix + "/supermarketCredit";
    }

    private boolean CanSubmit() {
        List<AuditDocuments> tempList = mAuditDocumentsService.selectAuditDocumentsByUserId(ShiroUtils.getUserId());
        if (tempList == null || tempList.isEmpty()) {
            return true;
        }

        for (int i=0;i<tempList.size();i++){
            String id=tempList.get(i).getChecklistId();
            BusinessCreditEvaluationInfo info = mBusinessCreditEvaluationInfoService.selectBusinessCreditEvaluationInfoChecklistId(id);
            if (info!=null){
                return false;
            }
        }

        return true;
    }
}
