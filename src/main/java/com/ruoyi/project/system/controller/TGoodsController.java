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
import com.ruoyi.project.system.domain.TGoods;
import com.ruoyi.project.system.service.ITGoodsService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.web.page.TableDataInfo;

/**
 * 商品详情Controller
 *
 * @author ruoyi
 * @date 2022-05-10
 */
@Api("商品详情")
@RestController
@RequestMapping("/system/goods")
public class TGoodsController extends BaseController
{
    @Autowired
    private ITGoodsService tGoodsService;

    /**
     * 查询商品详情列表
     */
    @ApiOperation("查询商品详情列表")
    @PreAuthorize("@ss.hasPermi('system:goods:list')")
    @GetMapping("/list")
    public TableDataInfo list(TGoods tGoods)
    {
        startPage();
        List<TGoods> list = tGoodsService.selectTGoodsList(tGoods);
        return getDataTable(list);
    }

    /**
     * 导出商品详情列表
     */
    @ApiOperation("导出商品详情列表")
    @PreAuthorize("@ss.hasPermi('system:goods:export')")
    @Log(title = "商品详情", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response,TGoods tGoods)
    {
        List<TGoods> list = tGoodsService.selectTGoodsList(tGoods);
        ExcelUtil<TGoods> util = new ExcelUtil<TGoods>(TGoods. class);
        util.exportExcel(response, list, "商品详情数据");
    }

    /**
     * 获取商品详情详细信息
     */
    @ApiOperation("获取商品详情详细信息")
    @PreAuthorize("@ss.hasPermi('system:goods:query')")
    @GetMapping(value = "/{fId}")
    public AjaxResult getInfo(@PathVariable("fId") Long fId)
    {
        return AjaxResult.success(tGoodsService.selectTGoodsByFId(fId));
    }

    /**
     * 新增商品详情
     */
    @ApiOperation("新增商品详情")
    @PreAuthorize("@ss.hasPermi('system:goods:add')")
    @Log(title = "商品详情", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody TGoods tGoods)
    {
        return toAjax(tGoodsService.insertTGoods(tGoods));
    }

    /**
     * 修改商品详情
     */
    @ApiOperation("修改商品详情")
    @PreAuthorize("@ss.hasPermi('system:goods:edit')")
    @Log(title = "商品详情", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody TGoods tGoods)
    {
        return toAjax(tGoodsService.updateTGoods(tGoods));
    }

    /**
     * 删除商品详情
     */
    @ApiOperation("删除商品详情")
    @PreAuthorize("@ss.hasPermi('system:goods:remove')")
    @Log(title = "商品详情", businessType = BusinessType.DELETE)
	@DeleteMapping("/{fIds}")
    public AjaxResult remove(@PathVariable Long[] fIds)
    {
        return toAjax(tGoodsService.deleteTGoodsByFIds(fIds));
    }
}
