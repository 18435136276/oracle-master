package com.ruoyi.project.system.service;

import java.util.List;
import com.ruoyi.project.system.domain.TCorps;

/**
 * 客户Service接口
 * 
 * @author ruoyi
 * @date 2022-05-10
 */
public interface ITCorpsService 
{
    /**
     * 查询客户
     * 
     * @param fId 客户主键
     * @return 客户
     */
    public TCorps selectTCorpsByFId(Long fId);

    /**
     * 查询客户列表
     * 
     * @param tCorps 客户
     * @return 客户集合
     */
    public List<TCorps> selectTCorpsList(TCorps tCorps);

    /**
     * 新增客户
     * 
     * @param tCorps 客户
     * @return 结果
     */
    public int insertTCorps(TCorps tCorps);

    /**
     * 修改客户
     * 
     * @param tCorps 客户
     * @return 结果
     */
    public int updateTCorps(TCorps tCorps);

    /**
     * 批量删除客户
     * 
     * @param fIds 需要删除的客户主键集合
     * @return 结果
     */
    public int deleteTCorpsByFIds(Long[] fIds);

    /**
     * 删除客户信息
     * 
     * @param fId 客户主键
     * @return 结果
     */
    public int deleteTCorpsByFId(Long fId);
}
