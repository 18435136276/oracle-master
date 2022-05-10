package com.ruoyi.framework.mybatis.extend;

import com.ruoyi.framework.mybatis.BaseList2JsonHandler;
import org.apache.ibatis.type.JdbcType;
import org.apache.ibatis.type.MappedJdbcTypes;
import org.apache.ibatis.type.MappedTypes;

import java.util.List;

/**
 * string与string数组的处理
 */
@MappedTypes({List.class})
@MappedJdbcTypes(JdbcType.VARCHAR)
public class ObjectListHandler extends BaseList2JsonHandler<Object>
{

}
