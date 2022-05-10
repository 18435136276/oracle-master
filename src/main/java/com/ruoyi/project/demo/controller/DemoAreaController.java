package com.ruoyi.project.demo.controller;

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
import com.ruoyi.project.demo.domain.DemoArea;
import com.ruoyi.project.demo.service.IDemoAreaService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;

/**
 * 地域信息Controller
 *
 * @author 毛泽
 * @date 2022-04-02
 */
@Api("地域信息")
@RestController
@RequestMapping("/demo/area")
public class DemoAreaController extends BaseController
{

    @Autowired
    private IDemoAreaService demoAreaService;

    /**
     * 查询地域信息列表
     */
    @ApiOperation("查询地域信息列表")
    @PreAuthorize("@ss.hasPermi('demo:area:list')")
    @GetMapping("/list")
    public AjaxResult list(DemoArea demoArea)
    {
        List<DemoArea> list = demoAreaService.selectDemoAreaList(demoArea);
        return AjaxResult.success(list);
    }

    /**
     * 导出地域信息列表
     */
    @ApiOperation("导出地域信息列表")
    @PreAuthorize("@ss.hasPermi('demo:area:export')")
    @Log(title = "地域信息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, DemoArea demoArea)
    {
        List<DemoArea> list = demoAreaService.selectDemoAreaList(demoArea);
        ExcelUtil<DemoArea> util = new ExcelUtil<DemoArea>(DemoArea.class);
        util.exportExcel(response, list, "地域信息数据");
    }

    /**
     * 获取地域信息详细信息
     */
    @ApiOperation("获取地域信息详细信息")
    @PreAuthorize("@ss.hasPermi('demo:area:query')")
    @GetMapping(value = "/{areaId}")
    public AjaxResult getInfo(@PathVariable("areaId") Long areaId)
    {
        return AjaxResult.success(demoAreaService.selectDemoAreaByAreaId(areaId));
    }

    /**
     * 新增地域信息
     */
    @ApiOperation("新增地域信息")
    @PreAuthorize("@ss.hasPermi('demo:area:add')")
    @Log(title = "地域信息", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody DemoArea demoArea)
    {
        return toAjax(demoAreaService.insertDemoArea(demoArea));
    }

    /**
     * 修改地域信息
     */
    @ApiOperation("修改地域信息")
    @PreAuthorize("@ss.hasPermi('demo:area:edit')")
    @Log(title = "地域信息", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody DemoArea demoArea)
    {
        return toAjax(demoAreaService.updateDemoArea(demoArea));
    }

    /**
     * 删除地域信息
     */
    @ApiOperation("删除地域信息")
    @PreAuthorize("@ss.hasPermi('demo:area:remove')")
    @Log(title = "地域信息", businessType = BusinessType.DELETE)
    @DeleteMapping("/{areaIds}")
    public AjaxResult remove(@PathVariable Long[] areaIds)
    {
        return toAjax(demoAreaService.deleteDemoAreaByAreaIds(areaIds));
    }
}
