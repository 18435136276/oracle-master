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
import com.ruoyi.project.demo.domain.DemoOrder;
import com.ruoyi.project.demo.service.IDemoOrderService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.web.page.TableDataInfo;

/**
 * 订单管理Controller
 *
 * @author 毛泽
 * @date 2022-04-01
 */
@Api("订单管理")
@RestController
@RequestMapping("/demo/order")
public class DemoOrderController extends BaseController
{
    @Autowired
    private IDemoOrderService demoOrderService;

    /**
     * 查询订单管理列表
     */
    @ApiOperation("查询订单管理列表")
    @PreAuthorize("@ss.hasPermi('demo:order:list')")
    @GetMapping("/list")
    public TableDataInfo list(DemoOrder demoOrder)
    {
        startPage();
        List<DemoOrder> list = demoOrderService.selectDemoOrderList(demoOrder);
        return getDataTable(list);
    }

    /**
     * 导出订单管理列表
     */
    @ApiOperation("导出订单管理列表")
    @PreAuthorize("@ss.hasPermi('demo:order:export')")
    @Log(title = "订单管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response,DemoOrder demoOrder)
    {
        List<DemoOrder> list = demoOrderService.selectDemoOrderList(demoOrder);
        ExcelUtil<DemoOrder> util = new ExcelUtil<DemoOrder>(DemoOrder. class);
        util.exportExcel(response, list, "订单管理数据");
    }

    /**
     * 获取订单管理详细信息
     */
    @ApiOperation("获取订单管理详细信息")
    @PreAuthorize("@ss.hasPermi('demo:order:query')")
    @GetMapping(value = "/{orderId}")
    public AjaxResult getInfo(@PathVariable("orderId") Long orderId)
    {
        return AjaxResult.success(demoOrderService.selectDemoOrderByOrderId(orderId));
    }

    /**
     * 新增订单管理
     */
    @ApiOperation("新增订单管理")
    @PreAuthorize("@ss.hasPermi('demo:order:add')")
    @Log(title = "订单管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody DemoOrder demoOrder)
    {
        return toAjax(demoOrderService.insertDemoOrder(demoOrder));
    }

    /**
     * 修改订单管理
     */
    @ApiOperation("修改订单管理")
    @PreAuthorize("@ss.hasPermi('demo:order:edit')")
    @Log(title = "订单管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody DemoOrder demoOrder)
    {
        return toAjax(demoOrderService.updateDemoOrder(demoOrder));
    }

    /**
     * 删除订单管理
     */
    @ApiOperation("删除订单管理")
    @PreAuthorize("@ss.hasPermi('demo:order:remove')")
    @Log(title = "订单管理", businessType = BusinessType.DELETE)
	@DeleteMapping("/{orderIds}")
    public AjaxResult remove(@PathVariable Long[] orderIds)
    {
        return toAjax(demoOrderService.deleteDemoOrderByOrderIds(orderIds));
    }
}
