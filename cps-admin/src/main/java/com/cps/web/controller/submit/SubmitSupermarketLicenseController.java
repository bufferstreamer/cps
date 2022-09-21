package com.cps.web.controller.submit;

import com.cps.audit.domain.AuditDocuments;
import com.cps.audit.domain.BusinessLicenseInfo;
import com.cps.audit.service.IAuditDocumentsService;
import com.cps.audit.service.IBusinessLicenseInfoService;
import com.cps.common.constant.Constants;
import com.cps.common.core.controller.BaseController;
import com.cps.common.utils.ShiroUtils;
import com.cps.credit.domain.UserCredit;
import com.cps.credit.service.IUserCreditService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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

    @Autowired
    private IUserCreditService userCreditService;

    @RequiresPermissions({"audit:businessLicenseManage:add","audit:businessLicenseManage:edit"})
    @GetMapping()
    public String supermarketLicense(ModelMap map) {
        List<AuditDocuments> tempList = mAuditDocumentsService.selectAuditDocumentsByUserId(ShiroUtils.getUserId());

        map.put("status","0");
        for (int i = 0; i < tempList.size(); i++) {
            String id = tempList.get(i).getChecklistId();
            BusinessLicenseInfo info = mBusinessLicenseInfoService.selectBusinessLicenseInfoByBusinessAuditDocumentId(id);
            if (info != null) {
                map.put("status",tempList.get(i).getAuditStatus());
                map.put("businessAuditDocumentId",info.getBusinessAuditDocumentId());
            }
        }
        if(userCreditService.selectUserCreditByUserId(ShiroUtils.getUserId())!=null){
            UserCredit userCredit = userCreditService.selectUserCreditByUserId(ShiroUtils.getUserId());
            map.put("userCreditScore",userCredit.getCreditScore());
        }else{
            map.put("userCreditScore", Constants.CREDIT_SCORE_FULL);
        }
        map.put("CREDIT_SCORE_MAIN", Constants.CREDIT_SCORE_MAIN);
        return prefix + "/supermarketLicense";
    }
}
