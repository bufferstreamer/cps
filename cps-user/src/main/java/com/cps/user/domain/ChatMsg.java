package com.cps.user.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.cps.common.annotation.Excel;
import com.cps.common.core.domain.BaseEntity;

/**
 * 【请填写功能名称】对象 chat_msg
 *
 * @author cps
 * @date 2022-10-14
 */
public class ChatMsg extends BaseEntity
        {
private static final long serialVersionUID=1L;

    /** 消息ID */
    private Long msgId;

    /** 消息内容 */
            @Excel(name = "消息内容")
    private String content;

    /** 发送者ID */
            @Excel(name = "发送者ID")
    private String sendId;

    /** 接收者ID */
            @Excel(name = "接收者ID")
    private String receiveId;

    /** 发送时间 */
            @JsonFormat(pattern = "yyyy-MM-dd")
            @Excel(name = "发送时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date creatTime;

    /** 查看状态 0未看 1已看 */
            @Excel(name = "查看状态 0未看 1已看")
    private String readState;

    public void setMsgId(Long msgId)
            {
            this.msgId = msgId;
            }

    public Long getMsgId()
            {
            return msgId;
            }
    public void setContent(String content)
            {
            this.content = content;
            }

    public String getContent()
            {
            return content;
            }
    public void setSendId(String sendId)
            {
            this.sendId = sendId;
            }

    public String getSendId()
            {
            return sendId;
            }
    public void setReceiveId(String receiveId)
            {
            this.receiveId = receiveId;
            }

    public String getReceiveId()
            {
            return receiveId;
            }
    public void setCreatTime(Date creatTime)
            {
            this.creatTime = creatTime;
            }

    public Date getCreatTime()
            {
            return creatTime;
            }
    public void setReadState(String readState)
            {
            this.readState = readState;
            }

    public String getReadState()
            {
            return readState;
            }

@Override
public String toString(){
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("msgId",getMsgId())
            .append("content",getContent())
            .append("sendId",getSendId())
            .append("receiveId",getReceiveId())
            .append("creatTime",getCreatTime())
            .append("readState",getReadState())
        .toString();
        }
        }
