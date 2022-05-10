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
import com.ruoyi.project.system.domain.TWarehousebills;
import com.ruoyi.project.system.service.ITWarehousebillsService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.web.page.TableDataInfo;

/**
 * 仓库主(出入库)Controller
 *
 * @author ruoyi
 * @date 2022-05-10
 */
@Api("仓库主(出入库)")
@RestController
@RequestMapping("/system/warehousebills")
public class TWarehousebillsController extends BaseController
{
    @Autowired
    private ITWarehousebillsService tWarehousebillsService;

    /**
     * 查询仓库主(出入库)列表
     */
    @ApiOperation("查询仓库主(出入库)列表")
    @PreAuthorize("@ss.hasPermi('system:warehousebills:list')")
    @GetMapping("/list")
    public TableDataInfo list(TWarehousebills tWarehousebills)
    {
        startPage();
        List<TWarehousebills> list = tWarehousebillsService.selectTWarehousebillsList(tWarehousebills);
        return getDataTable(list);
    }

    /**
     * 导出仓库主(出入库)列表
     */
    @ApiOperation("导出仓库主(出入库)列表")
    @PreAuthorize("@ss.hasPermi('system:warehousebills:export')")
    @Log(title = "仓库主(出入库)", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response,TWarehousebills tWarehousebills)
    {
        List<TWarehousebills> list = tWarehousebillsService.selectTWarehousebillsList(tWarehousebills);
        ExcelUtil<TWarehousebills> util = new ExcelUtil<TWarehousebills>(TWarehousebills. class);
        util.exportExcel(response, list, "仓库主(出入库)数据");
    }

    /**
     * 获取仓库主(出入库)详细信息
     */
    @ApiOperation("获取仓库主(出入库)详细信息")
    @PreAuthorize("@ss.hasPermi('system:warehousebills:query')")
    @GetMapping(value = "/{fId}")
    public AjaxResult getInfo(@PathVariable("fId") Long fId)
    {
        return AjaxResult.success(tWarehousebillsService.selectTWarehousebillsByFId(fId));
    }

    /**
     * 新增仓库主(出入库)
     */
    @ApiOperation("新增仓库主(出入库)")
    @PreAuthorize("@ss.hasPermi('system:warehousebills:add')")
    @Log(title = "仓库主(出入库)", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody TWarehousebills tWarehousebills)
    {
        return toAjax(tWarehousebillsService.insertTWarehousebills(tWarehousebills));
    }

    /**
     * 修改仓库主(出入库)
     */
    @ApiOperation("修改仓库主(出入库)")
    @PreAuthorize("@ss.hasPermi('system:warehousebills:edit')")
    @Log(title = "仓库主(出入库)", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody TWarehousebills tWarehousebills)
    {
        return toAjax(tWarehousebillsService.updateTWarehousebills(tWarehousebills));
    }

    /**
     * 删除仓库主(出入库)
     */
    @ApiOperation("删除仓库主(出入库)")
    @PreAuthorize("@ss.hasPermi('system:warehousebills:remove')")
    @Log(title = "仓库主(出入库)", businessType = BusinessType.DELETE)
	@DeleteMapping("/{fIds}")
    public AjaxResult remove(@PathVariable Long[] fIds)
    {
        return toAjax(tWarehousebillsService.deleteTWarehousebillsByFIds(fIds));
    }
}
