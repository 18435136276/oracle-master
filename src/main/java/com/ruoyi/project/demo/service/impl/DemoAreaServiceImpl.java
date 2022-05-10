package com.ruoyi.project.demo.service.impl;

import java.util.List;
import java.util.Arrays;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.conditions.query.QueryChainWrapper;
import java.util.Map;

import com.ruoyi.common.utils.IdGenerator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.project.demo.mapper.DemoAreaMapper;
import com.ruoyi.project.demo.domain.DemoArea;
import com.ruoyi.project.demo.service.IDemoAreaService;

/**
 * 地域信息Service业务层处理
 *
 * @author 毛泽
 * @date 2022-04-02
 */
@Service
public class DemoAreaServiceImpl implements IDemoAreaService
{
    @Autowired
    private DemoAreaMapper demoAreaMapper;

    /**
     * 查询地域信息
     *
     * @param areaId 地域信息主键
     * @return 地域信息
     */
    @Override
    public DemoArea selectDemoAreaByAreaId(Long areaId)
    {
        DemoArea demoArea = demoAreaMapper.selectById(areaId);
        return demoArea;
    }

    /**
     * 查询地域信息列表
     *
     * @param demoArea 地域信息
     * @return 地域信息
     */
    @Override
    public List<DemoArea> selectDemoAreaList(DemoArea demoArea)
    {
        QueryWrapper<DemoArea> wrapper = Wrappers.query();
        wrapper.like(demoArea.getAreaName() != null, "area_name", demoArea.getAreaName());
        wrapper.like(demoArea.getAreaCode() != null, "area_code", demoArea.getAreaCode());
        wrapper.eq(demoArea.getAreaLevel() != null, "area_level", demoArea.getAreaLevel());
        return demoAreaMapper.selectList(wrapper);
    }


    /**
     * 新增地域信息
     *
     * @param demoArea 地域信息
     * @return 结果
     */
    @Override
    public int insertDemoArea(DemoArea demoArea)
    {
        demoArea.setAreaId(IdGenerator.generateId());
        return demoAreaMapper.insert(demoArea);
    }

    /**
     * 修改地域信息
     *
     * @param demoArea 地域信息
     * @return 结果
     */
    @Override
    public int updateDemoArea(DemoArea demoArea)
    {
        return demoAreaMapper.updateById(demoArea);
    }

    /**
     * 批量删除地域信息
     *
     * @param areaIds 需要删除的地域信息主键
     * @return 结果
     */
    @Override
    public int deleteDemoAreaByAreaIds(Long[] areaIds)
    {
        return demoAreaMapper.deleteBatchIds(Arrays.asList(areaIds));
    }

    /**
     * 删除地域信息信息
     *
     * @param areaId 地域信息主键
     * @return 结果
     */
    @Override
    public int deleteDemoAreaByAreaId(Long areaId)
    {
        return demoAreaMapper.deleteById(areaId);
    }
}
