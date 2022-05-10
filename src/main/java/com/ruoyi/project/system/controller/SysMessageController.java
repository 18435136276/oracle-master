package com.ruoyi.project.system.controller;

import java.util.List;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

import javax.servlet.http.HttpServletResponse;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import com.ruoyi.framework.aspectj.lang.annotation.Log;
import com.ruoyi.framework.aspectj.lang.enums.BusinessType;
import com.ruoyi.project.system.domain.SysMessage;
import com.ruoyi.project.system.service.ISysMessageService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.web.page.TableDataInfo;

/**
 * 系统消息Controller
 *
 * @author ruoyi
 * @date 2022-04-08
 */
@Api("系统消息")
@RestController
@RequestMapping("/system/message")
public class SysMessageController extends BaseController
{
    @Autowired
    private ISysMessageService sysMessageService;

    /**
     * 查询系统消息列表
     */
    @ApiOperation("查询系统消息列表")
    @PreAuthorize("@ss.hasPermi('system:message:list')")
    @GetMapping("/list")
    public TableDataInfo list(SysMessage sysMessage)
    {
        startPage();
        List<SysMessage> list = sysMessageService.selectSysMessageList(sysMessage);
        return getDataTable(list);
    }

    /**
     * 查询用户个人未阅消息数量
     */
    @ApiOperation("查询用户个人未阅消息数量")
    @GetMapping("/count")
    public int count()
    {
        return sysMessageService.selectSelfSysMessageCount();
    }

    /**
     * 查询用户个人未阅系统消息
     */
    @ApiOperation("查询用户个人未阅系统消息")
    @GetMapping("/selfList")
    public TableDataInfo selfList(SysMessage sysMessage)
    {
        startPage();
        List<SysMessage> list = sysMessageService.selectSelfSysMessageList(sysMessage);
        return getDataTable(list);
    }

    /**
     * 导出系统消息列表
     */
    @ApiOperation("导出系统消息列表")
    @PreAuthorize("@ss.hasPermi('system:message:export')")
    @Log(title = "系统消息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, SysMessage sysMessage)
    {
        List<SysMessage> list = sysMessageService.selectSysMessageList(sysMessage);
        ExcelUtil<SysMessage> util = new ExcelUtil<SysMessage>(SysMessage.class);
        util.exportExcel(response, list, "系统消息数据");
    }

    /**
     * 获取系统消息详细信息
     */
    @ApiOperation("获取系统消息详细信息")
    @PreAuthorize("@ss.hasPermi('system:message:query')")
    @GetMapping(value = "/{messageId}")
    public AjaxResult getInfo(@PathVariable("messageId") Long messageId)
    {
        return AjaxResult.success(sysMessageService.selectSysMessageByMessageId(messageId));
    }

    /**
     * 修改系统消息
     */
    @ApiOperation("已阅消息")
    @Log(title = "系统消息", businessType = BusinessType.UPDATE)
    @PutMapping("/{messageIds}")
    public AjaxResult noted(@PathVariable Long[] messageIds)
    {
        return toAjax(sysMessageService.notedSysMessages(messageIds));
    }

    /**
     * 删除系统消息
     */
    @ApiOperation("删除系统消息")
    @PreAuthorize("@ss.hasPermi('system:message:remove')")
    @Log(title = "系统消息", businessType = BusinessType.DELETE)
    @DeleteMapping("/{messageIds}")
    public AjaxResult remove(@PathVariable Long[] messageIds)
    {
        return toAjax(sysMessageService.deleteSysMessageByMessageIds(messageIds));
    }
}
