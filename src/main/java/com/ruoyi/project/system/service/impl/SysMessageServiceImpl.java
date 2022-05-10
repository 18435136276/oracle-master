package com.ruoyi.project.system.service.impl;

import java.util.Date;
import java.util.List;
import java.util.Arrays;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;

import java.util.Map;

import com.baomidou.mybatisplus.extension.conditions.update.UpdateChainWrapper;
import com.ruoyi.common.utils.SecurityUtils;
import com.ruoyi.common.utils.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.project.system.mapper.SysMessageMapper;
import com.ruoyi.project.system.domain.SysMessage;
import com.ruoyi.project.system.service.ISysMessageService;

/**
 * 系统消息Service业务层处理
 *
 * @author ruoyi
 * @date 2022-04-08
 */
@Service
public class SysMessageServiceImpl implements ISysMessageService
{
    @Autowired
    private SysMessageMapper sysMessageMapper;

    /**
     * 查询系统消息
     *
     * @param messageId 系统消息主键
     * @return 系统消息
     */
    @Override
    public SysMessage selectSysMessageByMessageId(Long messageId)
    {
        return sysMessageMapper.selectById(messageId);
    }

    /**
     * 查询系统消息列表
     *
     * @param sysMessage 系统消息
     * @return 系统消息
     */
    @Override
    public List<SysMessage> selectSysMessageList(SysMessage sysMessage)
    {
        QueryWrapper<SysMessage> wrapper = Wrappers.query();
        Map<String, Object> params = sysMessage.getParams();
        if (params != null && params.get("beginMessageDate") != null && params.get("endMessageDate") != null)
        {
            wrapper.apply("message_date >= TO_DATE({0}, 'yyyy-MM-dd')", params.get("beginMessageDate"));
            wrapper.apply("message_date <= TO_DATE({0}, 'yyyy-MM-dd')", params.get("endMessageDate"));
        }
        wrapper.like(sysMessage.getMessageUser() != null, "message_user", sysMessage.getMessageUser());
        wrapper.eq(sysMessage.getMessageType() != null, "message_type", sysMessage.getMessageType());
        wrapper.eq(sysMessage.getMessageNoted() != null, "message_noted", sysMessage.getMessageNoted());
        wrapper.orderByDesc("message_date");
        return sysMessageMapper.selectLinkList(wrapper);
    }

    /**
     * 查询个人系统消息列表
     *
     * @return 系统消息
     */
    @Override
    public List<SysMessage> selectSelfSysMessageList(SysMessage sysMessage)
    {
        QueryWrapper<SysMessage> wrapper = Wrappers.query();
        wrapper.eq("message_noted", "N");
        wrapper.eq("user_id", SecurityUtils.getUserId());// 只查询自己的
        wrapper.eq("message_type", sysMessage.getMessageType());
        wrapper.orderByDesc("message_date");
        return sysMessageMapper.selectList(wrapper);
    }

    /**
     * 查询个人系统消息数量
     *
     * @return 系统消息
     */
    @Override
    public int selectSelfSysMessageCount()
    {
        QueryWrapper<SysMessage> wrapper = Wrappers.query();
        wrapper.eq("message_noted", "N");
        wrapper.eq("user_id", SecurityUtils.getUserId());// 只查询自己的
        return sysMessageMapper.selectCount(wrapper);
    }

    /**
     * 修改为已阅
     *
     * @param messageIds 消息IDs
     * @return 结果
     */
    @Override
    public boolean notedSysMessages(Long[] messageIds)
    {
        return new UpdateChainWrapper<>(sysMessageMapper)
                .set("message_noted", "Y")
                .in(StringUtils.isNotEmpty(messageIds), "message_id", Arrays.asList(messageIds))
                .update();
    }

    /**
     * 新增消息
     *
     * @param
     * @return 结果
     */
    public int insertSysMessage(SysMessage sysMessage)
    {
        sysMessage.setMessageDate(new Date());
        sysMessage.setMessageNoted("N");
        return sysMessageMapper.insert(sysMessage);
    }

    /**
     * 批量删除系统消息
     *
     * @param messageIds 需要删除的系统消息主键
     * @return 结果
     */
    @Override
    public int deleteSysMessageByMessageIds(Long[] messageIds)
    {
        return sysMessageMapper.deleteBatchIds(Arrays.asList(messageIds));
    }

    /**
     * 删除系统消息信息
     *
     * @param messageId 系统消息主键
     * @return 结果
     */
    @Override
    public int deleteSysMessageByMessageId(Long messageId)
    {
        return sysMessageMapper.deleteById(messageId);
    }
}
