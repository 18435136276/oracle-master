package com.ruoyi.framework.websocket;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Semaphore;
import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.PathParam;
import javax.websocket.server.ServerEndpoint;

import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.framework.security.LoginUser;
import com.ruoyi.framework.security.service.TokenService;
import com.ruoyi.common.utils.SemaphoreUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 * websocket 消息处理
 *
 * @author ruoyi
 */
@Component
@ServerEndpoint("/websocket/message/{token}")
public class MessageSocketServer
{

    // 这里使用静态，让 service 属于类
    private static TokenService tokenService;

    @Autowired
    public void setChatService(TokenService tokenService)
    {
        MessageSocketServer.tokenService = tokenService;
    }

    // 用户会话列表
    private static final Map<Long, Map<String, Session>> userSessions = new HashMap<>();

    /**
     * WebSocketServer 日志控制器
     */
    private static final Logger LOGGER = LoggerFactory.getLogger(MessageSocketServer.class);

    /**
     * 默认最多允许同时在线人数100
     */
    public static int socketMaxOnlineCount = 100;

    private static final Semaphore socketSemaphore = new Semaphore(socketMaxOnlineCount);
    private static int currentSessionCount = 0;

    /**
     * 连接建立成功调用的方法
     */
    @OnOpen
    public void onOpen(Session session, @PathParam("token") String token) throws Exception
    {
        LoginUser loginUser = tokenService.getLoginUser(token);
        // 验证失败直接关闭
        if (!verifyToken(token))
        {
            LOGGER.error("\n websocket访问权限验证失败- username：{}", loginUser.getUsername());
            session.close();
            return;
        }
        // 尝试获取信号量
        if (!SemaphoreUtils.tryAcquire(socketSemaphore))
        {
            // 未获取到信号量
            LOGGER.error("\n 当前连接数超过限制数- {}", socketMaxOnlineCount);
            session.close();
        }
        else
        {
            // 添加用户
            String sessionId = session.getId();
            if (!userSessions.containsKey(loginUser.getUserId()))
            {
                userSessions.put(loginUser.getUserId(), new HashMap<>());
            }
            userSessions.get(loginUser.getUserId()).put(sessionId, session);
            currentSessionCount++;
            LOGGER.info("\n 建立连接 - username：{}，sessionId：{}", loginUser.getUsername(), sessionId);
            LOGGER.info("\n 当前连接数 - {}", currentSessionCount);
        }
    }

    /**
     * 连接关闭时处理
     */
    @OnClose
    public void onClose(Session session)
    {
        LOGGER.info("\n 关闭连接 - sessionId：{}", session.getId());
        // 移除用户
        removeUserSession(session);
        currentSessionCount--;
        // 获取到信号量则需释放
        SemaphoreUtils.release(socketSemaphore);
    }

    /**
     * 抛出异常时处理
     */
    @OnError
    public void onError(Session session, Throwable exception) throws Exception
    {
        if (session.isOpen())
        {
            // 关闭连接
            session.close();
        }
        LOGGER.error("\n 连接异常 - sessionId：{}", session.getId(), exception);
        // 移出用户
        removeUserSession(session);
        currentSessionCount--;
        // 获取到信号量则需释放
        SemaphoreUtils.release(socketSemaphore);
    }

    /**
     * 服务器接收到客户端消息时调用的方法
     */
    @OnMessage
    public void onMessage(String message, Session session)
    {
        String msg = message.replace("你", "我").replace("吗", "");
        session.getAsyncRemote().sendText(msg);
    }

    /**
     * 验证token
     *
     * @param token 令牌
     * @return 验证结果
     */
    private boolean verifyToken(String token)
    {
        if (StringUtils.isNotEmpty(token))
        {
            LoginUser loginUser = tokenService.getLoginUser(token);
            return StringUtils.isNotNull(loginUser);
        }
        return false;
    }

    /**
     * 移除session
     *
     * @param session
     */
    private void removeUserSession(Session session)
    {
        String sessionId = session.getId();
        for (Map.Entry<Long, Map<String, Session>> entry : userSessions.entrySet())
        {
            Map<String, Session> sessionMap = entry.getValue();
            if (sessionMap.containsKey(sessionId))
            {
                sessionMap.remove(sessionId);
                break;
            }
        }
    }
}
