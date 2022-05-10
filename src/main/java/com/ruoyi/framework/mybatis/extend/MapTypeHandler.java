package com.ruoyi.framework.mybatis.extend;

import com.ruoyi.framework.mybatis.BaseObject2JsonHandler;
import org.apache.ibatis.type.JdbcType;
import org.apache.ibatis.type.MappedJdbcTypes;
import org.apache.ibatis.type.MappedTypes;

import java.util.Map;

/**
 * string与map类型处理
 */
@MappedTypes({Map.class})
@MappedJdbcTypes(JdbcType.CLOB)
public class MapTypeHandler extends BaseObject2JsonHandler<Map<String, Object>>
{

}
