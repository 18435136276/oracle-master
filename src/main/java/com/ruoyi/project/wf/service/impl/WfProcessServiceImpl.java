package com.ruoyi.project.wf.service.impl;


import com.baomidou.mybatisplus.extension.conditions.query.LambdaQueryChainWrapper;
import com.ruoyi.project.wf.mapper.WfGraphMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.project.wf.mapper.WfProcessMapper;
import com.ruoyi.project.wf.domain.WfProcess;
import com.ruoyi.project.wf.service.IWfProcessService;

import java.util.Arrays;
import java.util.Date;
import java.util.List;

/**
 * 流程定义Service业务层处理
 *
 * @author orange
 * @date 2022-01-17
 */
@Service
public class WfProcessServiceImpl implements IWfProcessService
{

    @Autowired
    private WfProcessMapper wfProcessMapper;

    /**
     * 查询流程定义
     *
     * @param processId 流程定义主键
     * @return 流程定义
     */
    @Override
    public WfProcess selectWfProcessByProcessId(Long processId)
    {
        return wfProcessMapper.selectById(processId);
    }

    /**
     * 查询流程定义列表
     *
     * @param wfProcess 流程定义
     * @return 流程定义
     */
    @Override
    public List<WfProcess> selectWfProcessList(WfProcess wfProcess)
    {
        return new LambdaQueryChainWrapper<>(wfProcessMapper)
                .like(wfProcess.getProcessCode() != null, WfProcess::getProcessCode, wfProcess.getProcessCode())
                .like(wfProcess.getProcessName() != null, WfProcess::getProcessName, wfProcess.getProcessName())
                .like(wfProcess.getProcessEnable() != null, WfProcess::getProcessEnable, wfProcess.getProcessEnable())
                .orderByAsc(WfProcess::getProcessEnable)
                .orderByAsc(WfProcess::getProcessCode)
                .list();
    }

    /**
     * 新增流程定义
     *
     * @param wfProcess 流程定义
     * @return 结果
     */
    @Override
    public int insertWfProcess(WfProcess wfProcess)
    {
        wfProcess.setProcessEnable(WfProcess.ENABLED.NO);
        wfProcess.setAddDate(new Date());
        if (wfProcess.getGraphVersion() == null) wfProcess.setGraphVersion(0);
        return wfProcessMapper.insert(wfProcess);
    }

    /**
     * 修改流程定义
     *
     * @param wfProcess 流程定义
     * @return 结果
     */
    @Override
    public int updateWfProcess(WfProcess wfProcess)
    {
        wfProcess.setUpdateDate(new Date());
        return wfProcessMapper.updateById(wfProcess);
    }

    /**
     * 批量删除流程定义
     *
     * @param processIds 需要删除的流程定义主键
     * @return 结果
     */
    @Override
    public int deleteWfProcessByProcessIds(Long[] processIds)
    {
        return wfProcessMapper.deleteBatchIds(Arrays.asList(processIds));
    }

    /**
     * 删除流程定义信息
     *
     * @param processId 流程定义主键
     * @return 结果
     */
    @Override
    public int deleteWfProcessByProcessId(Long processId)
    {
        return wfProcessMapper.deleteById(processId);
    }

    /**
     * 查询可供用户选择的流程
     *
     * @return 流程定义集合
     */
    @Override
    public List<WfProcess> selectWfProcessListForUser()
    {
        return new LambdaQueryChainWrapper<>(wfProcessMapper)
                .eq(WfProcess::getProcessEnable, WfProcess.ENABLED.YES)// 正常的流程
                // TODO 流程人员分配验证
                .orderByAsc(WfProcess::getProcessCode)
                .list();
    }
}
