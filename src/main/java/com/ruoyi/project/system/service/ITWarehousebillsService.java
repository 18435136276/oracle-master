package com.ruoyi.project.system.service;

import java.util.List;
import com.ruoyi.project.system.domain.TWarehousebills;

/**
 * 仓库主(出入库)Service接口
 * 
 * @author ruoyi
 * @date 2022-05-10
 */
public interface ITWarehousebillsService 
{
    /**
     * 查询仓库主(出入库)
     * 
     * @param fId 仓库主(出入库)主键
     * @return 仓库主(出入库)
     */
    public TWarehousebills selectTWarehousebillsByFId(Long fId);

    /**
     * 查询仓库主(出入库)列表
     * 
     * @param tWarehousebills 仓库主(出入库)
     * @return 仓库主(出入库)集合
     */
    public List<TWarehousebills> selectTWarehousebillsList(TWarehousebills tWarehousebills);

    /**
     * 新增仓库主(出入库)
     * 
     * @param tWarehousebills 仓库主(出入库)
     * @return 结果
     */
    public int insertTWarehousebills(TWarehousebills tWarehousebills);

    /**
     * 修改仓库主(出入库)
     * 
     * @param tWarehousebills 仓库主(出入库)
     * @return 结果
     */
    public int updateTWarehousebills(TWarehousebills tWarehousebills);

    /**
     * 批量删除仓库主(出入库)
     * 
     * @param fIds 需要删除的仓库主(出入库)主键集合
     * @return 结果
     */
    public int deleteTWarehousebillsByFIds(Long[] fIds);

    /**
     * 删除仓库主(出入库)信息
     * 
     * @param fId 仓库主(出入库)主键
     * @return 结果
     */
    public int deleteTWarehousebillsByFId(Long fId);
}
