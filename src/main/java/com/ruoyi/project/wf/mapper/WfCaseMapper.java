package com.ruoyi.project.wf.mapper;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.toolkit.Constants;
import com.ruoyi.project.wf.domain.WfCase;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

/**
 * 流程实例Mapper接口
 *
 * @author orange
 * @date 2022-01-17
 */
public interface WfCaseMapper extends BaseMapper<WfCase>
{
    // 自定义查询
    String querySql = "select case_id,\n" +
            "       process_id,\n" +
            "       graph_version,\n" +
            "       case_tag,\n" +
            "       form_data,\n" +
            "       case_status,\n" +
            "       node_line,\n" +
            "       user_id,\n" +
            "       add_date,\n" +
            "       end_date,\n" +
            "       (select process_name from wf_process where process_id = wf_case.process_id) process_name,\n" +
            "       (select process_code from wf_process where process_id = wf_case.process_id) process_code,\n" +
            "       (select form_path from wf_process where process_id = wf_case.process_id) form_path,\n" +
            "       (select nick_name from sys_user where user_id = wf_case.user_id)            user_name,\n" +
            "       (select graph_data from wf_graph where process_id = wf_case.process_id and graph_version = wf_case.graph_version) graph_data\n" +
            "from wf_case";

    @Select(querySql + " ${ew.customSqlSegment}")
    List<WfCase> selectLinkList(@Param(Constants.WRAPPER) Wrapper<WfCase> queryWrapper);

    @Select(querySql + " where case_id = #{caseId}")
    WfCase selectLinkOne(@Param("caseId") Long caseId);

    @Update("update wf_case set form_data = #{formData},case_tag = #{caseTag} where case_id = #{caseId}")
    int updateCase(WfCase wfCase);
}
