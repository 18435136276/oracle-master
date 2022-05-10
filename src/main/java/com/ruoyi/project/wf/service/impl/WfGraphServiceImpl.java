package com.ruoyi.project.wf.service.impl;

import com.baomidou.mybatisplus.extension.conditions.query.LambdaQueryChainWrapper;
import com.baomidou.mybatisplus.extension.conditions.update.LambdaUpdateChainWrapper;
import com.ruoyi.project.wf.domain.WfCase;
import com.ruoyi.project.wf.domain.WfGraph;
import com.ruoyi.project.wf.domain.WfProcess;
import com.ruoyi.project.wf.domain.WfRecord;
import com.ruoyi.project.wf.mapper.WfCaseMapper;
import com.ruoyi.project.wf.mapper.WfGraphMapper;
import com.ruoyi.project.wf.mapper.WfProcessMapper;
import com.ruoyi.project.wf.mapper.WfRecordMapper;
import com.ruoyi.project.wf.service.IWfGraphService;
import com.ruoyi.project.wf.utils.GraphUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 流程图定义Service接口
 *
 * @author orange
 * @date 2022-01-17
 */
@Service
public class WfGraphServiceImpl implements IWfGraphService
{
    @Autowired
    private WfGraphMapper wfGraphMapper;
    @Autowired
    private WfProcessMapper wfProcessMapper;
    @Autowired
    private WfCaseMapper wfCaseMapper;
    @Autowired
    private WfRecordMapper wfRecordMapper;

    /**
     * 按版本查询流程图
     *
     * @return 流程定义
     */
    @Override
    public WfGraph selectWfGraphByProcess(Long processId, Integer version)
    {
        return new LambdaQueryChainWrapper<>(wfGraphMapper)
                .eq(WfGraph::getProcessId, processId)
                .eq(WfGraph::getGraphVersion, version)
                .one();
    }

    /**
     * 根据流程ID查询流程定义列表
     *
     * @param processId 流程ID
     * @return 流程定义集合
     */
    @Override
    public List<WfGraph> selectWfGraphListByProcessId(Long processId)
    {
        return new LambdaQueryChainWrapper<>(wfGraphMapper)
                .eq(WfGraph::getProcessId, processId)
                .orderByAsc(WfGraph::getGraphVersion)
                .list();
    }

    /**
     * 新增流程图
     *
     * @param wfGraph 流程图定义
     * @return 结果
     */
    @Override
    @Transactional// 事务
    public int insertWfGraph(WfGraph wfGraph)
    {
        // 验证流程图合法性
        GraphUtils.validate(wfGraph.getGraphData());
        Long processId = wfGraph.getProcessId();
        // 最大版本
        Integer maxVersion = wfGraphMapper.selectMaxVersionByProcessId(processId);
        Integer version = (maxVersion == null) ? 1 : maxVersion + 1;
        wfGraph.setGraphVersion(version);
        wfGraph.setAddDate(new Date());
        int row = wfGraphMapper.insert(wfGraph);
        // 切换流程版本
        new LambdaUpdateChainWrapper<>(wfProcessMapper)
                .set(WfProcess::getGraphVersion, version)
                .eq(WfProcess::getProcessId, processId)
                .update();
        return row;
    }

    /**
     * 根据实例ID查询流程图及记录
     *
     * @param caseId 流程图定义
     * @return 结果
     */
    @Override
    public Map<String, Object> selectCaseGraph(Long caseId)
    {
        Map<String, Object> res = new HashMap<>();
        WfCase wfCase = wfCaseMapper.selectLinkOne(caseId);
        res.put("graphData", wfCase.getGraphData());
        // 未提交和已退回
        if (wfCase.getCaseStatus() == WfCase.Status.INIT || wfCase.getCaseStatus() == WfCase.Status.RETURNED)
            res.put("nodeId", GraphUtils.getStartNode(wfCase.getGraphData()).getId());
            // 处理中
        else if (wfCase.getCaseStatus() == WfCase.Status.AUDITING) res.put("nodeId", wfCase.getLastNode());
            // 已注销和结束
        else res.put("nodeId", GraphUtils.getEndNode(wfCase.getGraphData()).getId());
        res.put("records", new LambdaQueryChainWrapper<>(wfRecordMapper)
                .eq(WfRecord::getCaseId, caseId)
                .orderByAsc(WfRecord::getAddDate)
                .list());
        return res;
    }
}
