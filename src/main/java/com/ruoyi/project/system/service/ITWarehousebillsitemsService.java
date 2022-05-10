package com.ruoyi.project.system.service;

import java.util.List;
import com.ruoyi.project.system.domain.TWarehousebillsitems;

/**
 * 仓库明细从Service接口
 * 
 * @author ruoyi
 * @date 2022-05-10
 */
public interface ITWarehousebillsitemsService 
{
    /**
     * 查询仓库明细从
     * 
     * @param fId 仓库明细从主键
     * @return 仓库明细从
     */
    public TWarehousebillsitems selectTWarehousebillsitemsByFId(Long fId);

    /**
     * 查询仓库明细从列表
     * 
     * @param tWarehousebillsitems 仓库明细从
     * @return 仓库明细从集合
     */
    public List<TWarehousebillsitems> selectTWarehousebillsitemsList(TWarehousebillsitems tWarehousebillsitems);

    /**
     * 新增仓库明细从
     * 
     * @param tWarehousebillsitems 仓库明细从
     * @return 结果
     */
    public int insertTWarehousebillsitems(TWarehousebillsitems tWarehousebillsitems);

    /**
     * 修改仓库明细从
     * 
     * @param tWarehousebillsitems 仓库明细从
     * @return 结果
     */
    public int updateTWarehousebillsitems(TWarehousebillsitems tWarehousebillsitems);

    /**
     * 批量删除仓库明细从
     * 
     * @param fIds 需要删除的仓库明细从主键集合
     * @return 结果
     */
    public int deleteTWarehousebillsitemsByFIds(Long[] fIds);

    /**
     * 删除仓库明细从信息
     * 
     * @param fId 仓库明细从主键
     * @return 结果
     */
    public int deleteTWarehousebillsitemsByFId(Long fId);
}
