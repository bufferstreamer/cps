package com.cps.web.controller.submit;

import com.cps.audit.domain.AuditDocuments;
import com.cps.audit.domain.BusinessCreditEvaluationInfo;
import com.cps.audit.service.IAuditDocumentsService;
import com.cps.audit.service.IBusinessCreditEvaluationInfoService;
import com.cps.common.core.controller.BaseController;
import com.cps.common.utils.ShiroUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * 小超市提交信用审核
 *
 * @author cps
 * @date 2022-08-26
 */
@Controller
@RequestMapping("/submit/supermarketCredit")
public class SubmitSupermarketCreditController extends BaseController {
    private String prefix = "submit";

    @Autowired
    private IAuditDocumentsService mAuditDocumentsService;

    @Autowired
    private IBusinessCreditEvaluationInfoService mBusinessCreditEvaluationInfoService;

    @RequiresPermissions({"audit:businessCreditEvaluationManage:add","audit:businessCreditEvaluationManage:edit"})
    @GetMapping()
    public String supermarketCredit(ModelMap map) {
        List<AuditDocuments> tempList = mAuditDocumentsService.selectAuditDocumentsByUserId(ShiroUtils.getUserId());

        map.put("status","0");
        for (int i = 0; i < tempList.size(); i++) {
            String id = tempList.get(i).getChecklistId();
            BusinessCreditEvaluationInfo info = mBusinessCreditEvaluationInfoService.selectBusinessCreditEvaluationInfoChecklistId(id);
            if (info != null) {
                map.put("status",tempList.get(i).getAuditStatus());
                map.put("businessCreditEvaluationAuditId",info.getBusinessCreditEvaluationAuditId());
            }
        }

        return prefix + "/supermarketCredit";
    }

}
