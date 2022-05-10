package com.ruoyi.project.wf.controller;

import java.util.List;

import com.ruoyi.framework.interceptor.annotation.RepeatSubmit;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.ruoyi.framework.aspectj.lang.annotation.Log;
import com.ruoyi.framework.aspectj.lang.enums.BusinessType;
import com.ruoyi.project.wf.domain.WfCase;
import com.ruoyi.project.wf.service.IWfCaseService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.framework.web.page.TableDataInfo;

/**
 * 流程实例Controller
 *
 * @author orange
 * @date 2022-01-17
 */
@RestController
@RequestMapping("/wf/case")
public class WfCaseController extends BaseController
{
    @Autowired
    private IWfCaseService wfCaseService;

    /**
     * 查询流程实例列表
     */
    @PreAuthorize("@ss.hasPermi('wf:case:list')")
    @GetMapping("/list")
    public TableDataInfo list(WfCase wfCase)
    {
        startPage();
        List<WfCase> list = wfCaseService.selectWfCaseList(wfCase);
        return getDataTable(list);
    }

    /**
     * 获取流程实例详细信息
     */
    @PreAuthorize("@ss.hasPermi('wf:case:query')")
    @GetMapping(value = "/{caseId}")
    public AjaxResult getInfo(@PathVariable("caseId") Long caseId)
    {
        return AjaxResult.success(wfCaseService.selectWfCaseByCaseId(caseId));
    }

    /**
     * 新增流程实例
     */
    @RepeatSubmit
    @PreAuthorize("@ss.hasPermi('wf:case:add')")
    @Log(title = "流程实例", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@Validated @RequestBody WfCase wfCase)
    {
        return toAjax(wfCaseService.insertWfCase(wfCase));
    }

    /**
     * 修改流程实例
     */
    @RepeatSubmit
    @PreAuthorize("@ss.hasPermi('wf:case:edit')")
    @Log(title = "流程实例", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody WfCase wfCase)
    {
        return toAjax(wfCaseService.updateWfCase(wfCase));
    }

    /**
     * 提交流程实例
     */
    @RepeatSubmit
    @PreAuthorize("@ss.hasPermi('wf:case:audit')")
    @Log(title = "流程实例", businessType = BusinessType.AUDIT)
    @PutMapping("/{caseId}")
    public AjaxResult audit(@PathVariable Long caseId)
    {
        return toAjax(wfCaseService.auditWfCase(caseId));
    }


    /**
     * 获取流程实例详细信息
     */
    @GetMapping(value = "/report")
    public AjaxResult getReportData(Long id)
    {
        return AjaxResult.success(wfCaseService.selectWfCaseByCaseId(id));
    }
}
