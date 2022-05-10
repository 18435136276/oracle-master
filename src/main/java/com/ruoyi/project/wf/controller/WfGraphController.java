package com.ruoyi.project.wf.controller;

import java.util.List;

import com.ruoyi.framework.interceptor.annotation.RepeatSubmit;
import com.ruoyi.project.wf.domain.WfGraph;
import com.ruoyi.project.wf.service.IWfGraphService;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.ruoyi.framework.aspectj.lang.annotation.Log;
import com.ruoyi.framework.aspectj.lang.enums.BusinessType;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.framework.web.page.TableDataInfo;

/**
 * 流程图信息Controller
 *
 * @author ruoyi
 * @date 2022-03-10
 */
@RestController
@RequestMapping("/wf/graph")
public class WfGraphController extends BaseController
{
    @Autowired
    private IWfGraphService wfGraphService;

    /**
     * 查询流程图信息列表
     */
    @PreAuthorize("@ss.hasPermi('wf:process:edit')")
    @GetMapping("/list/{processId}")
    public TableDataInfo list(@PathVariable Long processId)
    {
        List<WfGraph> list = wfGraphService.selectWfGraphListByProcessId(processId);
        list.forEach(graph -> graph.setGraphData(null));
        return getDataTable(list);
    }

    /**
     * 获取流程图信息详细信息
     */
    @PreAuthorize("@ss.hasPermi('wf:process:edit')")
    @GetMapping(value = "/{processId}/{version}")
    public AjaxResult getInfo(@PathVariable Long processId, @PathVariable Integer version)
    {
        return AjaxResult.success(wfGraphService.selectWfGraphByProcess(processId, version));
    }

    /**
     * 新增流程图信息
     */
    @RepeatSubmit
    @PreAuthorize("@ss.hasPermi('wf:process:edit')")
    @Log(title = "流程图信息", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@Validated @RequestBody WfGraph wfGraph)
    {
        return toAjax(wfGraphService.insertWfGraph(wfGraph));
    }

    /**
     * 根据实例ID追踪流程图
     */
    @PreAuthorize("@ss.hasAnyPermi('wf:case:flow,wf:task:flow')")
    @GetMapping(value = "/{caseId}")
    public AjaxResult caseGraph(@PathVariable Long caseId)
    {
        return AjaxResult.success(wfGraphService.selectCaseGraph(caseId));
    }
}
