package com.ruoyi.framework.mybatis.extend;

import com.ruoyi.framework.mybatis.BaseObject2JsonHandler;
import com.ruoyi.project.wf.domain.base.GraphData;
import org.apache.ibatis.type.JdbcType;
import org.apache.ibatis.type.MappedJdbcTypes;
import org.apache.ibatis.type.MappedTypes;

/**
 * string与json类型处理
 */
@MappedTypes({GraphData.class})
@MappedJdbcTypes(JdbcType.CLOB)
public class GraphDataTypeHandler extends BaseObject2JsonHandler<GraphData>
{

}
