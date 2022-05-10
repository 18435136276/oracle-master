package com.ruoyi.project.wf.service.impl;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.ruoyi.common.exception.ServiceException;
import com.ruoyi.common.utils.MessageUtils;
import com.ruoyi.common.utils.SecurityUtils;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.project.wf.domain.WfCase;
import com.ruoyi.project.wf.domain.WfProcess;
import com.ruoyi.project.wf.mapper.WfCaseMapper;
import com.ruoyi.project.wf.mapper.WfProcessMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.project.wf.service.IWfCaseService;

import java.util.Date;
import java.util.List;

/**
 * 流程实例Service业务层处理
 *
 * @author orange
 * @date 2022-01-17
 */
@Service
public class WfCaseServiceImpl implements IWfCaseService
{
    @Autowired
    private WfCaseMapper wfCaseMapper;
    @Autowired
    private WfProcessMapper wfProcessMapper;
    @Autowired
    private IWfCaseService wfCaseService;// 使得方法调用时AOP能够切入

    /**
     * 查询流程实例
     *
     * @param caseId 流程实例主键
     * @return 流程实例
     */
    @Override
    public WfCase selectWfCaseByCaseId(Long caseId)
    {
        return wfCaseMapper.selectLinkOne(caseId);
    }

    /**
     * 查询流程实例列表
     *
     * @param wfCase 流程实例
     * @return 流程实例
     */
    @Override
    public List<WfCase> selectWfCaseList(WfCase wfCase)
    {
        // 自定义sql不能使用链式Wrapper或者lambda表达式
        QueryWrapper<WfCase> wrapper = new QueryWrapper<>();
        wrapper.eq("user_id", SecurityUtils.getUserId());
        wrapper.eq(wfCase.getProcessId() != null, "process_id", wfCase.getProcessId());
        wrapper.like(StringUtils.isNotEmpty(wfCase.getCaseTag()), "case_tag", wfCase.getCaseTag());
        wrapper.eq(wfCase.getCaseStatus() != null, "case_status", wfCase.getCaseStatus());
        wrapper.orderByAsc("case_status");
        wrapper.orderByDesc("add_date");
        return wfCaseMapper.selectLinkList(wrapper);
    }

    /**
     * 新增流程实例
     *
     * @param wfCase 流程实例
     * @return 结果
     */
    @Override
    public int insertWfCase(WfCase wfCase)
    {
        wfCase.setCaseStatus(WfCase.Status.INIT);
        wfCase.setAddDate(new Date());
        wfCase.setUserId(SecurityUtils.getUserId());
        return wfCaseMapper.insert(wfCase);
    }

    /**
     * 修改流程实例
     *
     * @param wfCase 流程实例
     * @return 结果
     */
    @Override
    public int updateWfCase(WfCase wfCase)
    {
        // 若不为未提交和已退回，不允许再次提交
        Integer status = wfCaseMapper.selectById(wfCase.getCaseId()).getCaseStatus();
        if (status != WfCase.Status.INIT && status != WfCase.Status.RETURNED)
            throw new ServiceException(MessageUtils.message("wf.case.update.refuse"));
        // 只允许修改表单数据
        return wfCaseMapper.updateCase(wfCase);
    }

    /**
     * 提交流程实例
     *
     * @param caseId 流程Id
     * @return 结果
     */
    @Override
    public int auditWfCase(Long caseId)
    {
        WfCase wfCase = wfCaseMapper.selectLinkOne(caseId);
        // 不允许为空 // 不允许提交的状态验证
        if (wfCase == null || wfCase.getCaseStatus() == null || wfCase.getCaseStatus() > 2)
            throw new ServiceException(MessageUtils.message("wf.case.audit.invalid"));
        // 修改实例版本为当前版本
        WfProcess wfProcess = wfProcessMapper.selectById(wfCase.getProcessId());
        wfCase.setGraphVersion(wfProcess.getGraphVersion());
        return wfCaseService.auditInnerUpdate(wfCase);
    }

    /**
     * 提交时的内部修改
     * 针对提交修改流程信息时使用切面AOP增强
     *
     * @param wfCase 流程实例
     */
    @Override
    public int auditInnerUpdate(WfCase wfCase)
    {
        return wfCaseMapper.updateById(wfCase);
    }
}
