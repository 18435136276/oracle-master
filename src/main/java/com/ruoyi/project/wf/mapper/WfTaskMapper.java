package com.ruoyi.project.wf.mapper;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.toolkit.Constants;
import com.ruoyi.project.wf.domain.WfTask;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * 任务管理Mapper接口
 *
 * @author 毛泽
 * @date 2022-01-20
 */
public interface WfTaskMapper extends BaseMapper<WfTask>
{
    @Select("select task_id,\n" +
            "       user_id,\n" +
            "       node_id,\n" +
            "       node_name,\n" +
            "       process_id,\n" +
            "       case_id,\n" +
            "       add_date,\n" +
            "       end_date,\n" +
            "       graph_version,\n" +
            "       task_status,\n" +
            "       task_result,\n" +
            "       task_content,\n" +
            "       (select process_name from wf_process where process_id = wf_task.process_id) process_name,\n" +
            "       (select process_code from wf_process where process_id = wf_task.process_id) process_code,\n" +
            "       (select case_tag from wf_case where case_id = wf_task.case_id) case_tag\n" +
            "from wf_task ${ew.customSqlSegment}")
    List<WfTask> selectLinkList(@Param(Constants.WRAPPER) Wrapper<WfTask> queryWrapper);

    @Select("select task_id,\n" +
            "       user_id,\n" +
            "       node_id,\n" +
            "       node_name,\n" +
            "       process_id,\n" +
            "       case_id,\n" +
            "       add_date,\n" +
            "       end_date,\n" +
            "       graph_version,\n" +
            "       task_status,\n" +
            "       task_result,\n" +
            "       task_content,\n" +
            "       (select process_name from wf_process where process_id = wf_task.process_id) process_name,\n" +
            "       (select form_data from wf_case where case_id = wf_task.case_id) form_data,\n" +
            "       (select form_path from wf_process where process_id = wf_task.process_id) form_path\n" +
            "from wf_task where task_id = #{taskId}")
    WfTask selectLinkOne(@Param("taskId") Long taskId);
}
