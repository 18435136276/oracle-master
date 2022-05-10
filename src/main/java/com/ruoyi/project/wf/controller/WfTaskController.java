package com.ruoyi.project.wf.controller;

import java.util.List;

import com.ruoyi.framework.aspectj.lang.annotation.Log;
import com.ruoyi.framework.aspectj.lang.enums.BusinessType;
import com.ruoyi.framework.interceptor.annotation.RepeatSubmit;
import com.ruoyi.project.wf.domain.WfProcess;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import com.ruoyi.project.wf.domain.WfTask;
import com.ruoyi.project.wf.service.IWfTaskService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.framework.web.page.TableDataInfo;

/**
 * 任务管理Controller
 *
 * @author orange
 * @date 2022-01-20
 */
@RestController
@RequestMapping("/wf/task")
public class WfTaskController extends BaseController
{
    @Autowired
    private IWfTaskService wfTaskService;

    /**
     * 查询任务管理列表
     */
    @PreAuthorize("@ss.hasPermi('wf:task:list')")
    @GetMapping("/list")
    public TableDataInfo list(WfTask wfTask)
    {
        startPage();
        List<WfTask> list = wfTaskService.selectWfTaskList(wfTask);
        return getDataTable(list);
    }

    /**
     * 获取任务管理详细信息
     */
    @PreAuthorize("@ss.hasPermi('wf:task:query')")
    @GetMapping(value = "/{taskId}")
    public AjaxResult getInfo(@PathVariable("taskId") Long taskId)
    {
        return AjaxResult.success(wfTaskService.selectWfTaskByTaskId(taskId));
    }

    /**
     * 提交任务
     */
    @RepeatSubmit
    @PreAuthorize("@ss.hasPermi('wf:task:audit')")
    @Log(title = "流程任务", businessType = BusinessType.AUDIT)
    @PutMapping
    public AjaxResult audit(@Validated @RequestBody WfTask wfTask)
    {
        return toAjax(wfTaskService.auditWfTask(wfTask));
    }
}
