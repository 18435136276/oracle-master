package com.ruoyi.framework.jmReport;

import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.framework.security.LoginUser;
import com.ruoyi.framework.security.service.TokenService;
import org.jeecg.modules.jmreport.api.JmReportTokenServiceI;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

/**
 * 积木报表自定义权限认证配置类
 *
 * @author orange
 * @date 2022-02-28
 */
@Component
public class JmReportTokenService implements JmReportTokenServiceI
{
    @Autowired
    private TokenService tokenService;

    @Override
    public String getToken(HttpServletRequest request)
    {
        return tokenService.getToken(request);// 获取传入的token
    }

    @Override
    public String getUsername(String token)
    {
        return tokenService.getLoginUser(token).getUsername();
    }

    @Override
    public Boolean verifyToken(String token)
    {
        LoginUser loginUser = tokenService.getLoginUser(token);
        if (StringUtils.isNotNull(loginUser))
        {
            tokenService.verifyToken(loginUser);
            return true;
        }
        return false;
    }

    @Override
    public Map<String, Object> getUserInfo(String token)
    {
        LoginUser loginUser = tokenService.getLoginUser(token);
        Map<String, Object> map = new HashMap<>();
        if (StringUtils.isNotNull(loginUser))
        {
            map.put("sysUserId", loginUser.getUserId());// 当前登录用户ID
            map.put("sysDeptId", loginUser.getDeptId());// 当前登录用户部门ID
        }
        return map;
    }
}
