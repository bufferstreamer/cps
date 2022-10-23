package com.cps.user.mapper;

import java.util.List;

import com.cps.common.annotation.DataSource;
import com.cps.common.enums.DataSourceType;
import com.cps.user.domain.ChatMsg;
import org.springframework.stereotype.Repository;

/**
 * 【请填写功能名称】Mapper接口
 *
 * @author cps
 * @date 2022-10-14
 */
@DataSource(value = DataSourceType.SLAVE)
@Repository
public interface ChatMsgMapper {
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
     * 删除【请填写功能名称】
     *
     * @param msgId 【请填写功能名称】主键
     * @return 结果
     */
    public int deleteChatMsgByMsgId(Long msgId);

    /**
     * 批量删除【请填写功能名称】
     *
     * @param msgIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteChatMsgByMsgIds(String[] msgIds);
}
