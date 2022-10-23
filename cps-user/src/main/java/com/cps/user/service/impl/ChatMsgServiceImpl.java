package com.cps.user.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.cps.user.mapper.ChatMsgMapper;
import com.cps.user.domain.ChatMsg;
import com.cps.user.service.IChatMsgService;
import com.cps.common.core.text.Convert;

/**
 * 【请填写功能名称】Service业务层处理
 *
 * @author cps
 * @date 2022-10-14
 */
@Service
public class ChatMsgServiceImpl implements IChatMsgService {
    @Autowired
    private ChatMsgMapper chatMsgMapper;

    /**
     * 查询【请填写功能名称】
     *
     * @param msgId 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    @Override
    public ChatMsg selectChatMsgByMsgId(Long msgId) {
        return chatMsgMapper.selectChatMsgByMsgId(msgId);
    }

    /**
     * 查询【请填写功能名称】列表
     *
     * @param chatMsg 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<ChatMsg> selectChatMsgList(ChatMsg chatMsg) {
        return chatMsgMapper.selectChatMsgList(chatMsg);
    }

    /**
     * 新增【请填写功能名称】
     *
     * @param chatMsg 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertChatMsg(ChatMsg chatMsg) {
            return chatMsgMapper.insertChatMsg(chatMsg);
    }

    /**
     * 修改【请填写功能名称】
     *
     * @param chatMsg 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateChatMsg(ChatMsg chatMsg) {
        return chatMsgMapper.updateChatMsg(chatMsg);
    }

    /**
     * 批量删除【请填写功能名称】
     *
     * @param msgIds 需要删除的【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteChatMsgByMsgIds(String msgIds) {
        return chatMsgMapper.deleteChatMsgByMsgIds(Convert.toStrArray(msgIds));
    }

    /**
     * 删除【请填写功能名称】信息
     *
     * @param msgId 【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteChatMsgByMsgId(Long msgId) {
        return chatMsgMapper.deleteChatMsgByMsgId(msgId);
    }
}
