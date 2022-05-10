package com.ruoyi.project.wf.mapper;


import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.ruoyi.project.wf.domain.WfGraph;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.ResultType;
import org.apache.ibatis.annotations.Select;

/**
 * 流程图定义Mapper接口
 *
 * @author orange
 * @date 2022-01-17
 */
public interface WfGraphMapper extends BaseMapper<WfGraph>
{
    /**
     * 查询当前最大流程ID对应的最大版本
     *
     * @param processId 流程ID
     * @return
     */
    @Select("select max(graph_version) from wf_graph where process_id = #{processId}")
    @ResultType(Integer.class)
    Integer selectMaxVersionByProcessId(@Param("processId") Long processId);
}
