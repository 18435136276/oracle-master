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
import com.ruoyi.project.system.domain.TWarehouse;
import com.ruoyi.project.system.service.ITWarehouseService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.web.page.TableDataInfo;

/**
 * 仓库Controller
 *
 * @author ruoyi
 * @date 2022-05-10
 */
@Api("仓库")
@RestController
@RequestMapping("/system/warehouse")
public class TWarehouseController extends BaseController
{
    @Autowired
    private ITWarehouseService tWarehouseService;

    /**
     * 查询仓库列表
     */
    @ApiOperation("查询仓库列表")
    @PreAuthorize("@ss.hasPermi('system:warehouse:list')")
    @GetMapping("/list")
    public TableDataInfo list(TWarehouse tWarehouse)
    {
        startPage();
        List<TWarehouse> list = tWarehouseService.selectTWarehouseList(tWarehouse);
        return getDataTable(list);
    }

    /**
     * 导出仓库列表
     */
    @ApiOperation("导出仓库列表")
    @PreAuthorize("@ss.hasPermi('system:warehouse:export')")
    @Log(title = "仓库", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response,TWarehouse tWarehouse)
    {
        List<TWarehouse> list = tWarehouseService.selectTWarehouseList(tWarehouse);
        ExcelUtil<TWarehouse> util = new ExcelUtil<TWarehouse>(TWarehouse. class);
        util.exportExcel(response, list, "仓库数据");
    }

    /**
     * 获取仓库详细信息
     */
    @ApiOperation("获取仓库详细信息")
    @PreAuthorize("@ss.hasPermi('system:warehouse:query')")
    @GetMapping(value = "/{fId}")
    public AjaxResult getInfo(@PathVariable("fId") Long fId)
    {
        return AjaxResult.success(tWarehouseService.selectTWarehouseByFId(fId));
    }

    /**
     * 新增仓库
     */
    @ApiOperation("新增仓库")
    @PreAuthorize("@ss.hasPermi('system:warehouse:add')")
    @Log(title = "仓库", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody TWarehouse tWarehouse)
    {
        return toAjax(tWarehouseService.insertTWarehouse(tWarehouse));
    }

    /**
     * 修改仓库
     */
    @ApiOperation("修改仓库")
    @PreAuthorize("@ss.hasPermi('system:warehouse:edit')")
    @Log(title = "仓库", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody TWarehouse tWarehouse)
    {
        return toAjax(tWarehouseService.updateTWarehouse(tWarehouse));
    }

    /**
     * 删除仓库
     */
    @ApiOperation("删除仓库")
    @PreAuthorize("@ss.hasPermi('system:warehouse:remove')")
    @Log(title = "仓库", businessType = BusinessType.DELETE)
	@DeleteMapping("/{fIds}")
    public AjaxResult remove(@PathVariable Long[] fIds)
    {
        return toAjax(tWarehouseService.deleteTWarehouseByFIds(fIds));
    }
}
