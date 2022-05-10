package com.ruoyi.project.wf.service;

import com.ruoyi.project.wf.domain.WfCase;
import com.ruoyi.project.wf.domain.WfGraph;

import java.util.List;
import java.util.Map;

/**
 * 流程图定义Service接口
 *
 * @author orange
 * @date 2022-01-17
 */
public interface IWfGraphService
{
    /**
     * 按版本查询流程图
     *
     * @return 流程定义
     */
    public WfGraph selectWfGraphByProcess(Long processId, Integer version);

    /**
     * 根据流程ID查询流程定义列表
     *
     * @param processId 流程ID
     * @return 流程定义集合
     */
    public List<WfGraph> selectWfGraphListByProcessId(Long processId);

    /**
     * 新增流程图
     *
     * @param wfGraph 流程图定义
     * @return 结果
     */
    public int insertWfGraph(WfGraph wfGraph);

    /**
     * 根据实例ID查询流程图及记录
     *
     * @param caseId 流程图定义
     * @return 结果
     */
    public Map<String, Object> selectCaseGraph(Long caseId);
}
