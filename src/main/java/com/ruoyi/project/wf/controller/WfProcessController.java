package com.ruoyi.project.wf.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;

import com.ruoyi.framework.interceptor.annotation.RepeatSubmit;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.ruoyi.framework.aspectj.lang.annotation.Log;
import com.ruoyi.framework.aspectj.lang.enums.BusinessType;
import com.ruoyi.project.wf.domain.WfProcess;
import com.ruoyi.project.wf.service.IWfProcessService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.web.page.TableDataInfo;

/**
 * 流程定义Controller
 *
 * @author orange
 * @date 2022-01-17
 */
@RestController
@RequestMapping("/wf/process")
public class WfProcessController extends BaseController
{
    @Autowired
    private IWfProcessService wfProcessService;

    /**
     * 查询流程定义列表
     */
    @PreAuthorize("@ss.hasPermi('wf:process:list')")
    @GetMapping("/list")
    public TableDataInfo list(WfProcess wfProcess)
    {
        startPage();
        List<WfProcess> list = wfProcessService.selectWfProcessList(wfProcess);
        return getDataTable(list);
    }

    /**
     * 导出流程定义列表
     */
    @RepeatSubmit
    @PreAuthorize("@ss.hasPermi('wf:process:export')")
    @Log(title = "流程定义", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, WfProcess wfProcess)
    {
        List<WfProcess> list = wfProcessService.selectWfProcessList(wfProcess);
        ExcelUtil<WfProcess> util = new ExcelUtil<WfProcess>(WfProcess.class);
        util.exportExcel(response, list, "流程定义数据");
    }

    /**
     * 获取流程定义详细信息
     */
    @PreAuthorize("@ss.hasAnyPermi('wf:process:query,wf:case:query')")
    @GetMapping(value = "/{processId}")
    public AjaxResult getInfo(@PathVariable("processId") Long processId)
    {
        return AjaxResult.success(wfProcessService.selectWfProcessByProcessId(processId));
    }

    /**
     * 新增流程定义
     */
    @RepeatSubmit
    @PreAuthorize("@ss.hasPermi('wf:process:add')")
    @Log(title = "流程定义", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@Validated @RequestBody WfProcess wfProcess)
    {
        return toAjax(wfProcessService.insertWfProcess(wfProcess));
    }

    /**
     * 修改流程定义
     */
    @RepeatSubmit
    @PreAuthorize("@ss.hasPermi('wf:process:edit')")
    @Log(title = "流程定义", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@Validated @RequestBody WfProcess wfProcess)
    {
        return toAjax(wfProcessService.updateWfProcess(wfProcess));
    }

    /**
     * 删除流程定义
     */
    /*@RepeatSubmit
    @PreAuthorize("@ss.hasPermi('wf:process:remove')")
    @Log(title = "流程定义", businessType = BusinessType.DELETE)
    @DeleteMapping("/{processIds}")
    public AjaxResult remove(@PathVariable Long[] processIds)
    {
        return toAjax(wfProcessService.deleteWfProcessByProcessIds(processIds));
    }*/

    /**
     * 用户选择流程申请
     */
    @PreAuthorize("@ss.hasAnyPermi('wf:case:list,wf:task:list')")
    @GetMapping("/select")
    public TableDataInfo select()
    {
        List<WfProcess> list = wfProcessService.selectWfProcessListForUser();
        return getDataTable(list);
    }
}
