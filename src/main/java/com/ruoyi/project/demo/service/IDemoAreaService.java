package com.ruoyi.project.demo.service;

import java.util.List;
import com.ruoyi.project.demo.domain.DemoArea;

/**
 * 地域信息Service接口
 * 
 * @author 毛泽
 * @date 2022-04-02
 */
public interface IDemoAreaService 
{
    /**
     * 查询地域信息
     * 
     * @param areaId 地域信息主键
     * @return 地域信息
     */
    public DemoArea selectDemoAreaByAreaId(Long areaId);

    /**
     * 查询地域信息列表
     * 
     * @param demoArea 地域信息
     * @return 地域信息集合
     */
    public List<DemoArea> selectDemoAreaList(DemoArea demoArea);

    /**
     * 新增地域信息
     * 
     * @param demoArea 地域信息
     * @return 结果
     */
    public int insertDemoArea(DemoArea demoArea);

    /**
     * 修改地域信息
     * 
     * @param demoArea 地域信息
     * @return 结果
     */
    public int updateDemoArea(DemoArea demoArea);

    /**
     * 批量删除地域信息
     * 
     * @param areaIds 需要删除的地域信息主键集合
     * @return 结果
     */
    public int deleteDemoAreaByAreaIds(Long[] areaIds);

    /**
     * 删除地域信息信息
     * 
     * @param areaId 地域信息主键
     * @return 结果
     */
    public int deleteDemoAreaByAreaId(Long areaId);
}
