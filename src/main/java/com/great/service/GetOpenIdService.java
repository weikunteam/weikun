package com.great.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

/**
 * 获取微信openid
 *
 * @author: cww
 * @date: 2021/2/25 11:06
 */
@Service
public class GetOpenIdService {


    @Value("${weChat.authorize.url}")
    private String weChatAuthorizeUrl;
    @Value("${weChat.appId}")
    private String appId;
    @Value("${weChat.secret}")
    private String secret;
    @Value("${weChat.access.token.url}")
    private String weChatAccessTokenUrl;
    @Value("${weChat.authorize.redirectUrl}")
    private String authorizeRedirectUrl;
    private final static Logger LOGGER = LoggerFactory.getLogger(GetOpenIdService.class);

    /**
     * 跳转微信授权路径
     *
     * @return
     */
    public String wxAuthorizeUrl() {
        StringBuilder s = new StringBuilder(512);
        s.append(weChatAuthorizeUrl);
        s.append("?appid=");
        s.append(appId);
        s.append("&redirect_uri=");
        String targetUrl = null;
        try {
            targetUrl = URLEncoder.encode(authorizeRedirectUrl, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e);
        }
        s.append(targetUrl);
        s.append("&response_type=code&scope=snsapi_base&state=#wechat_redirect");
        return s.toString();
    }

    public String wxCodeUrl(String code){
        StringBuilder s = new StringBuilder(512);
        s.append(weChatAccessTokenUrl);
        s.append("?appid=");
        s.append(appId);
        s.append("&secret=");
        s.append(secret);
        s.append("&code=");
        s.append(code);
        s.append("&grant_type=authorization_code");
        return s.toString();
    }

    /**
     * 处理响应重定向
     *
     * @param response
     */
    public void dealRespRedirect(HttpServletResponse response,String url) {
        try {
            response.sendRedirect(response.encodeRedirectURL(url));
        } catch (IOException e) {
            LOGGER.error(e.getMessage(), e);
        }
    }


}
