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
import com.ruoyi.project.system.domain.TWarehousebillsitems;
import com.ruoyi.project.system.service.ITWarehousebillsitemsService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.web.page.TableDataInfo;

/**
 * 仓库明细从Controller
 *
 * @author ruoyi
 * @date 2022-05-10
 */
@Api("仓库明细从")
@RestController
@RequestMapping("/system/warehousebillsitems")
public class TWarehousebillsitemsController extends BaseController
{
    @Autowired
    private ITWarehousebillsitemsService tWarehousebillsitemsService;

    /**
     * 查询仓库明细从列表
     */
    @ApiOperation("查询仓库明细从列表")
    @PreAuthorize("@ss.hasPermi('system:warehousebillsitems:list')")
    @GetMapping("/list")
    public TableDataInfo list(TWarehousebillsitems tWarehousebillsitems)
    {
        startPage();
        List<TWarehousebillsitems> list = tWarehousebillsitemsService.selectTWarehousebillsitemsList(tWarehousebillsitems);
        return getDataTable(list);
    }

    /**
     * 导出仓库明细从列表
     */
    @ApiOperation("导出仓库明细从列表")
    @PreAuthorize("@ss.hasPermi('system:warehousebillsitems:export')")
    @Log(title = "仓库明细从", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response,TWarehousebillsitems tWarehousebillsitems)
    {
        List<TWarehousebillsitems> list = tWarehousebillsitemsService.selectTWarehousebillsitemsList(tWarehousebillsitems);
        ExcelUtil<TWarehousebillsitems> util = new ExcelUtil<TWarehousebillsitems>(TWarehousebillsitems. class);
        util.exportExcel(response, list, "仓库明细从数据");
    }

    /**
     * 获取仓库明细从详细信息
     */
    @ApiOperation("获取仓库明细从详细信息")
    @PreAuthorize("@ss.hasPermi('system:warehousebillsitems:query')")
    @GetMapping(value = "/{fId}")
    public AjaxResult getInfo(@PathVariable("fId") Long fId)
    {
        return AjaxResult.success(tWarehousebillsitemsService.selectTWarehousebillsitemsByFId(fId));
    }

    /**
     * 新增仓库明细从
     */
    @ApiOperation("新增仓库明细从")
    @PreAuthorize("@ss.hasPermi('system:warehousebillsitems:add')")
    @Log(title = "仓库明细从", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody TWarehousebillsitems tWarehousebillsitems)
    {
        return toAjax(tWarehousebillsitemsService.insertTWarehousebillsitems(tWarehousebillsitems));
    }

    /**
     * 修改仓库明细从
     */
    @ApiOperation("修改仓库明细从")
    @PreAuthorize("@ss.hasPermi('system:warehousebillsitems:edit')")
    @Log(title = "仓库明细从", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody TWarehousebillsitems tWarehousebillsitems)
    {
        return toAjax(tWarehousebillsitemsService.updateTWarehousebillsitems(tWarehousebillsitems));
    }

    /**
     * 删除仓库明细从
     */
    @ApiOperation("删除仓库明细从")
    @PreAuthorize("@ss.hasPermi('system:warehousebillsitems:remove')")
    @Log(title = "仓库明细从", businessType = BusinessType.DELETE)
	@DeleteMapping("/{fIds}")
    public AjaxResult remove(@PathVariable Long[] fIds)
    {
        return toAjax(tWarehousebillsitemsService.deleteTWarehousebillsitemsByFIds(fIds));
    }
}
