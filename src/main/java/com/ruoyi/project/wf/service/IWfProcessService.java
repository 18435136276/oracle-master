package com.ruoyi.project.wf.service;

import com.ruoyi.project.wf.domain.WfProcess;

import java.util.List;

/**
 * 流程定义Service接口
 *
 * @author orange
 * @date 2022-01-17
 */
public interface IWfProcessService
{
    /**
     * 查询流程定义
     *
     * @param processId 流程定义主键
     * @return 流程定义
     */
    public WfProcess selectWfProcessByProcessId(Long processId);

    /**
     * 查询流程定义列表
     *
     * @param wfProcess 流程定义
     * @return 流程定义集合
     */
    public List<WfProcess> selectWfProcessList(WfProcess wfProcess);

    /**
     * 新增流程定义
     *
     * @param wfProcess 流程定义
     * @return 结果
     */
    public int insertWfProcess(WfProcess wfProcess);

    /**
     * 修改流程定义
     *
     * @param wfProcess 流程定义
     * @return 结果
     */
    public int updateWfProcess(WfProcess wfProcess);

    /**
     * 批量删除流程定义
     *
     * @param processIds 需要删除的流程定义主键集合
     * @return 结果
     */
    public int deleteWfProcessByProcessIds(Long[] processIds);

    /**
     * 删除流程定义信息
     *
     * @param processId 流程定义主键
     * @return 结果
     */
    public int deleteWfProcessByProcessId(Long processId);

    /**
     * 查询可供用户选择的流程
     *
     * @return 流程定义集合
     */
    public List<WfProcess> selectWfProcessListForUser();
}
