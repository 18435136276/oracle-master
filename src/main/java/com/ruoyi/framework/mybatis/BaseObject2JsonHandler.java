package com.ruoyi.framework.mybatis;

import com.alibaba.fastjson.JSON;
import com.ruoyi.common.utils.StringUtils;
import org.apache.ibatis.type.BaseTypeHandler;
import org.apache.ibatis.type.JdbcType;

import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


/**
 * mybatis的JSON对象类型转换处理器
 *
 * @param <T>
 */
public abstract class BaseObject2JsonHandler<T> extends BaseTypeHandler<T>
{

    @Override
    public void setNonNullParameter(PreparedStatement ps, int i, Object parameter,
                                    JdbcType jdbcType) throws SQLException
    {
        ps.setString(i, JSON.toJSONString(parameter));
    }

    @Override
    public T getNullableResult(ResultSet rs, String columnName)
            throws SQLException
    {
        String data = rs.getString(columnName);
        return StringUtils.isBlank(data) ? null : JSON.parseObject(data, (Class<T>) getRawType());
    }

    @Override
    public T getNullableResult(ResultSet rs, int columnIndex) throws SQLException
    {
        String data = rs.getString(columnIndex);
        return StringUtils.isBlank(data) ? null : JSON.parseObject(data, (Class<T>) getRawType());
    }

    @Override
    public T getNullableResult(CallableStatement cs, int columnIndex)
            throws SQLException
    {
        String data = cs.getString(columnIndex);
        return StringUtils.isBlank(data) ? null : JSON.parseObject(data, (Class<T>) getRawType());
    }
}
