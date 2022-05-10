package com.ruoyi.project.wf.service;

import com.ruoyi.framework.security.LoginUser;
import com.ruoyi.project.wf.domain.WfCase;

import java.util.List;

/**
 * 流程实例Service接口
 *
 * @author orange
 * @date 2022-01-17
 */
public interface IWfCaseService
{
    /**
     * 查询流程实例
     *
     * @param caseId 流程实例主键
     * @return 流程实例
     */
    public WfCase selectWfCaseByCaseId(Long caseId);

    /**
     * 查询流程实例列表
     *
     * @param wfCase 流程实例
     * @return 流程实例集合
     */
    public List<WfCase> selectWfCaseList(WfCase wfCase);

    /**
     * 新增流程实例
     *
     * @param wfCase 流程实例
     * @return 结果
     */
    public int insertWfCase(WfCase wfCase);

    /**
     * 修改流程实例
     *
     * @param wfCase 流程实例
     * @return 结果
     */
    public int updateWfCase(WfCase wfCase);

    /**
     * 提交流程实例
     *
     * @param caseID 流程ID
     * @return 结果
     */
    public int auditWfCase(Long caseID);

    /**
     * 提交时的内部修改
     * 针对提交修改流程信息时使用切面AOP增强
     *
     * @param wfCase 流程实例
     * @return
     */
    public int auditInnerUpdate(WfCase wfCase);
}
