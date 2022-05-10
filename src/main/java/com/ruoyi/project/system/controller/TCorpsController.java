package com.ruoyi.project.system.controller;

import java.util.List;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import javax.servlet.http.HttpServletResponse;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
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
import com.ruoyi.project.system.domain.TCorps;
import com.ruoyi.project.system.service.ITCorpsService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.web.page.TableDataInfo;

/**
 * 客户Controller
 *
 * @author ruoyi
 * @date 2022-05-10
 */
@Api("客户")
@RestController
@RequestMapping("/system/corps")
public class TCorpsController extends BaseController
{
    @Autowired
    private ITCorpsService tCorpsService;

    /**
     * 查询客户列表
     */
    @ApiOperation("查询客户列表")
    @PreAuthorize("@ss.hasPermi('system:corps:list')")
    @GetMapping("/list")
    public TableDataInfo list(TCorps tCorps)
    {
        startPage();
        List<TCorps> list = tCorpsService.selectTCorpsList(tCorps);
        return getDataTable(list);
    }

    /**
     * 导出客户列表
     */
    @ApiOperation("导出客户列表")
    @PreAuthorize("@ss.hasPermi('system:corps:export')")
    @Log(title = "客户", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response,TCorps tCorps)
    {
        List<TCorps> list = tCorpsService.selectTCorpsList(tCorps);
        ExcelUtil<TCorps> util = new ExcelUtil<TCorps>(TCorps. class);
        util.exportExcel(response, list, "客户数据");
    }

    /**
     * 获取客户详细信息
     */
    @ApiOperation("获取客户详细信息")
    @PreAuthorize("@ss.hasPermi('system:corps:query')")
    @GetMapping(value = "/{fId}")
    public AjaxResult getInfo(@PathVariable("fId") Long fId)
    {
        return AjaxResult.success(tCorpsService.selectTCorpsByFId(fId));
    }

    /**
     * 新增客户
     */
    @ApiOperation("新增客户")
    @PreAuthorize("@ss.hasPermi('system:corps:add')")
    @Log(title = "客户", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody TCorps tCorps)
    {
        return toAjax(tCorpsService.insertTCorps(tCorps));
    }

    /**
     * 修改客户
     */
    @ApiOperation("修改客户")
    @PreAuthorize("@ss.hasPermi('system:corps:edit')")
    @Log(title = "客户", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody TCorps tCorps)
    {
        return toAjax(tCorpsService.updateTCorps(tCorps));
    }

    /**
     * 删除客户
     */
    @ApiOperation("删除客户")
    @PreAuthorize("@ss.hasPermi('system:corps:remove')")
    @Log(title = "客户", businessType = BusinessType.DELETE)
	@DeleteMapping("/{fIds}")
    public AjaxResult remove(@PathVariable Long[] fIds)
    {
        return toAjax(tCorpsService.deleteTCorpsByFIds(fIds));
    }
}
