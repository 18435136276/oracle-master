package com.ruoyi.framework.mybatis;

import com.alibaba.fastjson.JSON;
import com.ruoyi.common.utils.StringUtils;
import org.apache.ibatis.type.BaseTypeHandler;
import org.apache.ibatis.type.JdbcType;

import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.type.BaseTypeHandler;

/**
 * mybatis的JSON数组类型转换处理器
 *
 * @param <T>
 */
public abstract class BaseList2JsonHandler<T> extends BaseTypeHandler<List<T>>
{
    @Override
    public void setNonNullParameter(PreparedStatement ps, int i, List<T> parameter, JdbcType jdbcType) throws SQLException
    {
        ps.setString(i, JSON.toJSONString(parameter));
    }

    @Override
    public List<T> getNullableResult(ResultSet rs, String columnName)
            throws SQLException
    {
        String data = rs.getString(columnName);
        return StringUtils.isBlank(data) ? null : JSON.parseArray(data, (Class<T>) getRawType());
    }

    @Override
    public List<T> getNullableResult(ResultSet rs, int columnIndex) throws SQLException
    {
        String data = rs.getString(columnIndex);
        return StringUtils.isBlank(data) ? null : JSON.parseArray(data, (Class<T>) getRawType());
    }

    @Override
    public List<T> getNullableResult(CallableStatement cs, int columnIndex)
            throws SQLException
    {
        String data = cs.getString(columnIndex);
        return StringUtils.isBlank(data) ? null : JSON.parseArray(data, (Class<T>) getRawType());
    }
}
