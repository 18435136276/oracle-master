package com.ruoyi.project.system.service;

import java.util.List;

import com.ruoyi.project.system.domain.SysMessage;

/**
 * 系统消息Service接口
 *
 * @author ruoyi
 * @date 2022-04-08
 */
public interface ISysMessageService
{
    /**
     * 查询系统消息
     *
     * @param messageId 系统消息主键
     * @return 系统消息
     */
    public SysMessage selectSysMessageByMessageId(Long messageId);

    /**
     * 查询系统消息列表
     *
     * @param sysMessage 系统消息
     * @return 系统消息集合
     */
    public List<SysMessage> selectSysMessageList(SysMessage sysMessage);

    /**
     * 查询个人系统消息列表
     *
     * @return 系统消息
     */
    public List<SysMessage> selectSelfSysMessageList(SysMessage sysMessage);

    /**
     * 查询个人系统消息数量
     *
     * @return 系统消息
     */
    public int selectSelfSysMessageCount();

    /**
     * 新增消息
     *
     * @param
     * @return 结果
     */
    public int insertSysMessage(SysMessage sysMessage);


    /**
     * 修改为已阅
     *
     * @param messageIds 消息IDs
     * @return 结果
     */
    public boolean notedSysMessages(Long[] messageIds);

    /**
     * 批量删除系统消息
     *
     * @param messageIds 需要删除的系统消息主键集合
     * @return 结果
     */
    public int deleteSysMessageByMessageIds(Long[] messageIds);

    /**
     * 删除系统消息信息
     *
     * @param messageId 系统消息主键
     * @return 结果
     */
    public int deleteSysMessageByMessageId(Long messageId);
}
