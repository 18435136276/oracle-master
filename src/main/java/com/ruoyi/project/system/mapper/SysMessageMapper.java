package com.ruoyi.project.system.mapper;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.toolkit.Constants;
import com.ruoyi.project.system.domain.SysMessage;
import com.ruoyi.project.wf.domain.WfCase;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * 系统消息Mapper接口
 *
 * @author ruoyi
 * @date 2022-04-08
 */
public interface SysMessageMapper extends BaseMapper<SysMessage>
{
    @Select("select * from (select message_id, message_content, message_date, user_id, message_type, data_id, message_noted,\n" +
            "(select nick_name from sys_user where user_id = sys_message.user_id) message_user\n" +
            "from sys_message) ${ew.customSqlSegment}")
    public List<SysMessage> selectLinkList(@Param(Constants.WRAPPER) Wrapper<SysMessage> queryWrapper);
}
