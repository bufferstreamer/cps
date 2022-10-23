package com.cps.web.controller.user;

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
import com.cps.user.domain.ChatMsg;
import com.cps.user.service.IChatMsgService;
import com.cps.common.core.controller.BaseController;
import com.cps.common.core.domain.AjaxResult;
import com.cps.common.utils.poi.ExcelUtil;
import com.cps.common.core.page.TableDataInfo;

/**
 * 【请填写功能名称】Controller
 *
 * @author cps
 * @date 2022-10-14
 */
@Controller
@RequestMapping("/user/msg")
public class ChatMsgController extends BaseController {
    private String prefix = "user/msg";

    @Autowired
    private IChatMsgService chatMsgService;

    @RequiresPermissions("user:msg:view")
    @GetMapping()
    public String msg() {
        return prefix + "/msg";
    }

        /**
         * 查询【请填写功能名称】列表
         */
        @RequiresPermissions("user:msg:list")
        @PostMapping("/list")
        @ResponseBody
        public TableDataInfo list(ChatMsg chatMsg ,ModelMap mmap) {
            startPage();
            List<ChatMsg> list = chatMsgService.selectChatMsgList(chatMsg);
            mmap.put("test","ceshi");
            return getDataTable(list);
        }

    /**
     * 导出【请填写功能名称】列表
     */
    @RequiresPermissions("user:msg:export")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(ChatMsg chatMsg) {
        List<ChatMsg> list = chatMsgService.selectChatMsgList(chatMsg);
        ExcelUtil<ChatMsg> util = new ExcelUtil<ChatMsg>(ChatMsg. class);
        return util.exportExcel(list, "【请填写功能名称】数据");
    }

        /**
         * 新增【请填写功能名称】
         */
        @GetMapping("/add")
        public String add() {
            return prefix + "/add";
        }

    /**
     * 新增保存【请填写功能名称】
     */
    @RequiresPermissions("user:msg:add")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(ChatMsg chatMsg) {
        return toAjax(chatMsgService.insertChatMsg(chatMsg));
    }

    /**
     * 修改【请填写功能名称】
     */
    @RequiresPermissions("user:msg:edit")
    @GetMapping("/edit/{msgId}")
    public String edit(@PathVariable("msgId") Long msgId, ModelMap mmap) {
        ChatMsg chatMsg =
            chatMsgService.selectChatMsgByMsgId(msgId);
        mmap.put("chatMsg", chatMsg);
        return prefix + "/edit";
    }

    /**
     * 修改保存【请填写功能名称】
     */
    @RequiresPermissions("user:msg:edit")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(ChatMsg chatMsg) {
        return toAjax(chatMsgService.updateChatMsg(chatMsg));
    }

        /**
         * 删除【请填写功能名称】
         */
        @RequiresPermissions("user:msg:remove")
        @Log(title = "【请填写功能名称】", businessType = BusinessType.DELETE)
        @PostMapping("/remove")
        @ResponseBody
        public AjaxResult remove(String ids) {
            return toAjax(chatMsgService.deleteChatMsgByMsgIds(ids));
        }
}
