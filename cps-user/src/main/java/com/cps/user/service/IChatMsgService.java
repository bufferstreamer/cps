package com.cps.user.service;

import java.util.List;

import com.cps.user.domain.ChatMsg;

/**
 * 【请填写功能名称】Service接口
 *
 * @author cps
 * @date 2022-10-14
 */
public interface IChatMsgService {
    /**
     * 查询【请填写功能名称】
     *
     * @param msgId 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    public ChatMsg selectChatMsgByMsgId(Long msgId);

    /**
     * 查询【请填写功能名称】列表
     *
     * @param chatMsg 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<ChatMsg> selectChatMsgList(ChatMsg chatMsg);

    /**
     * 新增【请填写功能名称】
     *
     * @param chatMsg 【请填写功能名称】
     * @return 结果
     */
    public int insertChatMsg(ChatMsg chatMsg);

    /**
     * 修改【请填写功能名称】
     *
     * @param chatMsg 【请填写功能名称】
     * @return 结果
     */
    public int updateChatMsg(ChatMsg chatMsg);

    /**
     * 批量删除【请填写功能名称】
     *
     * @param msgIds 需要删除的【请填写功能名称】主键集合
     * @return 结果
     */
    public int deleteChatMsgByMsgIds(String msgIds);

    /**
     * 删除【请填写功能名称】信息
     *
     * @param msgId 【请填写功能名称】主键
     * @return 结果
     */
    public int deleteChatMsgByMsgId(Long msgId);
}
