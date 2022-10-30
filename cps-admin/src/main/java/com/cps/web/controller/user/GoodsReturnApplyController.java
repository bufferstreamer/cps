package com.cps.web.controller.user;

import java.util.List;

import com.cps.user.domain.Orders;
import com.cps.user.service.IOrdersService;
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
import com.cps.user.domain.GoodsReturnApply;
import com.cps.user.service.IGoodsReturnApplyService;
import com.cps.common.core.controller.BaseController;
import com.cps.common.core.domain.AjaxResult;
import com.cps.common.utils.poi.ExcelUtil;
import com.cps.common.core.page.TableDataInfo;

/**
 * 售后申请Controller
 *
 * @author cps
 * @date 2022-10-29
 */
@Controller
@RequestMapping("/user/goodsReturnApply")
public class GoodsReturnApplyController extends BaseController {
    private String prefix = "user/goodsReturnApply";

    @Autowired
    private IGoodsReturnApplyService goodsReturnApplyService;

    @Autowired
    private IOrdersService ordersService;

    @RequiresPermissions("user:goodsReturnApply:view")
    @GetMapping()
    public String goodsReturnApply() {
        return prefix + "/goodsReturnApply";
    }

        /**
         * 查询售后申请列表
         */
        @RequiresPermissions("user:goodsReturnApply:list")
        @PostMapping("/list")
        @ResponseBody
        public TableDataInfo list(GoodsReturnApply goodsReturnApply) {
            startPage();
            List<GoodsReturnApply> list = goodsReturnApplyService.selectGoodsReturnApplyList(goodsReturnApply);
            return getDataTable(list);
        }

    /**
     * 导出售后申请列表
     */
    @RequiresPermissions("user:goodsReturnApply:export")
    @Log(title = "售后申请", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(GoodsReturnApply goodsReturnApply) {
        List<GoodsReturnApply> list = goodsReturnApplyService.selectGoodsReturnApplyList(goodsReturnApply);
        ExcelUtil<GoodsReturnApply> util = new ExcelUtil<GoodsReturnApply>(GoodsReturnApply. class);
        return util.exportExcel(list, "售后申请数据");
    }

        /**
         * 新增售后申请
         */
        @GetMapping("/add")
        public String add() {
            return prefix + "/add";
        }

    /**
     * 新增保存售后申请
     */
    @RequiresPermissions("user:goodsReturnApply:add")
    @Log(title = "售后申请", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(GoodsReturnApply goodsReturnApply) {
        return toAjax(goodsReturnApplyService.insertGoodsReturnApply(goodsReturnApply));
    }

    /**
     * 修改售后申请
     */
    @RequiresPermissions("user:goodsReturnApply:edit")
    @GetMapping("/edit/{goodsReturnApplyId}")
    public String edit(@PathVariable("goodsReturnApplyId") String goodsReturnApplyId, ModelMap mmap) {
        GoodsReturnApply goodsReturnApply =
            goodsReturnApplyService.selectGoodsReturnApplyByGoodsReturnApplyId(goodsReturnApplyId);
        mmap.put("goodsReturnApply", goodsReturnApply);
        return prefix + "/edit";
    }

    /**
     * 修改保存售后申请
     */
    @RequiresPermissions("user:goodsReturnApply:edit")
    @Log(title = "售后申请", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(GoodsReturnApply goodsReturnApply) {
        //售后申请审核完毕后，更新订单状态
        String auditStatus = goodsReturnApply.getAuditStatus();
        goodsReturnApply = goodsReturnApplyService.selectGoodsReturnApplyByGoodsReturnApplyId(goodsReturnApply.getGoodsReturnApplyId());
        goodsReturnApply.setAuditStatus(auditStatus);
        if(goodsReturnApply.getAuditStatus().equals("1")){//审核通过更新状态为退换货
            Orders order = ordersService.selectOrdersByOrderId(goodsReturnApply.getOrderId());
            Integer orderStatusNum = Integer.valueOf(goodsReturnApply.getReturnType());
            String orderStatus = String.valueOf(orderStatusNum+7);
            order.setStatus(orderStatus);
            ordersService.updateOrders(order);
        }else if(goodsReturnApply.getAuditStatus().equals("2")){//审核不通过恢复原状态
            Orders order = ordersService.selectOrdersByOrderId(goodsReturnApply.getOrderId());
            Integer orderStatusNum = Integer.valueOf(order.getStatus());
            String orderStatus = String.valueOf(orderStatusNum-10);
            order.setStatus(orderStatus);
            ordersService.updateOrders(order);
        }
        return toAjax(goodsReturnApplyService.updateGoodsReturnApply(goodsReturnApply));
    }

        /**
         * 删除售后申请
         */
        @RequiresPermissions("user:goodsReturnApply:remove")
        @Log(title = "售后申请", businessType = BusinessType.DELETE)
        @PostMapping("/remove")
        @ResponseBody
        public AjaxResult remove(String ids) {
            return toAjax(goodsReturnApplyService.deleteGoodsReturnApplyByGoodsReturnApplyIds(ids));
        }
}
