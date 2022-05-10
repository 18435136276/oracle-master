package com.ruoyi.project.system.service;

import java.util.List;
import com.ruoyi.project.system.domain.TWarehouse;

/**
 * 仓库Service接口
 * 
 * @author ruoyi
 * @date 2022-05-10
 */
public interface ITWarehouseService 
{
    /**
     * 查询仓库
     * 
     * @param fId 仓库主键
     * @return 仓库
     */
    public TWarehouse selectTWarehouseByFId(Long fId);

    /**
     * 查询仓库列表
     * 
     * @param tWarehouse 仓库
     * @return 仓库集合
     */
    public List<TWarehouse> selectTWarehouseList(TWarehouse tWarehouse);

    /**
     * 新增仓库
     * 
     * @param tWarehouse 仓库
     * @return 结果
     */
    public int insertTWarehouse(TWarehouse tWarehouse);

    /**
     * 修改仓库
     * 
     * @param tWarehouse 仓库
     * @return 结果
     */
    public int updateTWarehouse(TWarehouse tWarehouse);

    /**
     * 批量删除仓库
     * 
     * @param fIds 需要删除的仓库主键集合
     * @return 结果
     */
    public int deleteTWarehouseByFIds(Long[] fIds);

    /**
     * 删除仓库信息
     * 
     * @param fId 仓库主键
     * @return 结果
     */
    public int deleteTWarehouseByFId(Long fId);
}
