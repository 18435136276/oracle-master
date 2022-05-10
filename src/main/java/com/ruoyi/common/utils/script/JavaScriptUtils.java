package com.ruoyi.common.utils.script;

import com.ruoyi.common.utils.StringUtils;

import javax.script.ScriptEngine;
import javax.script.ScriptEngineManager;
import javax.script.ScriptException;
import java.util.Map;

/**
 * js脚本执行类
 */
public class JavaScriptUtils
{
    /**
     * 单例的JavaScript解析引擎
     */
    private static final ScriptEngine javaScriptEngine;

    // 额外参数变量占位符
    private static final String OPEN = "${";
    private static final String CLOSE = "}";

    static
    {
        ScriptEngineManager manager = new ScriptEngineManager();
        ScriptEngine scriptEngine = manager.getEngineByName("js");
        if (scriptEngine == null) throw new RuntimeException("获取JavaScript解析引擎失败");
        javaScriptEngine = scriptEngine;
    }

    /**
     * 传参，运行一个JavaScript代码段,并获取指定变量名的值
     *
     * @param property 属性
     * @param value    值
     * @param script   代码段
     * @return 指定变量名对应的值
     * @throws ScriptException JavaScript代码运行异常
     */
    public static Object executeForAttribute(String property, Object value, String script) throws ScriptException
    {
        // 传入参数
        javaScriptEngine.put(property, value);
        // 删除占位符标识
        script = StringUtils.replaceChars(script, OPEN, property + ".");
        script = StringUtils.replaceChars(script, CLOSE, "");
        // 添加js脚本执行头声明
        script = "return " + script;
        return javaScriptEngine.eval(script);
    }
}
