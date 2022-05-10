package com.ruoyi.project.wf.mapper;

import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * 用户节点人员分配
 *
 * @author 毛泽
 * @date 2022/3/18
 */
@Mapper
public interface WfAssignMapper
{
    /**
     * 通过权限ID查询用户ID
     *
     * @param roleIds 权限ID列表
     * @return 用户ID
     */
    List<Long> selectUserIdsByRoleIds(List<Long> roleIds);


    /**
     * 通过岗位ID查询用户ID
     *
     * @param postIds 岗位ID列表
     * @return 用户ID
     */
    List<Long> selectUserIdsByPostIds(List<Long> postIds);
}
