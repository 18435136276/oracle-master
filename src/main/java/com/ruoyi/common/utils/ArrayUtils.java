package com.ruoyi.common.utils;

import java.util.Arrays;

/**
 * 数组工具类
 *
 * @author 毛泽
 * @date 2022/3/18
 */
public class ArrayUtils
{
    /**
     * 数组是否包含某个元素
     *
     * @param array 数组
     * @param key   元素
     * @return 是否包含
     */
    public static boolean contains(Object[] array, Object key)
    {
        if (array == null) return false;
        return Arrays.binarySearch(array, key) > 0;
    }

    /**
     * 判断两个数组是否有相同元素
     *
     * @param array1 数组1
     * @param array2 数组2
     * @return 是否存在相同元素
     */
    public static boolean hasSameKey(Object[] array1, Object[] array2)
    {
        if (array1 == null || array2 == null) return false;
        for (Object key : array1)
        {
            if (contains(array2, key)) return true;
        }
        return false;
    }
}
