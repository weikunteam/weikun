package com.great.service;

import com.alibaba.fastjson.JSONObject;
import com.great.util.HttpUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

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


    @Value("${weChat.authorize.url:https://open.weixin.qq.com/connect/oauth2/authorize}")
    private String weChatAuthorizeUrl;
    @Value("${weChat.appId:wxbd637f57bc04981d}")
    private String appId;
    @Value("${weChat.secret:7bc40feb9c299c132943fb02d14fbc3f}")
    private String secret;
    @Value("${weChat.access.token.url:https://api.weixin.qq.com/sns/oauth2/access_token}")
    private String weChatAccessTokenUrl;
    @Value("${weChat.authorize.redirectUrl:http://www.zhongtianshangwu.top/OfficialAccounts/login/getOpenId.action}")
    private String authorizeRedirectUrl;
    private final static Logger LOGGER = LoggerFactory.getLogger(GetOpenIdService.class);

    /**
     * 跳转微信授权路径
     *
     * @return
     */
    public String wxAuthorizeUrl(String recommendCode) {
        StringBuilder s = new StringBuilder(512);
        s.append(weChatAuthorizeUrl);
        s.append("?appid=");
        s.append(appId);
        s.append("&redirect_uri=");
        String targetUrl = authorizeRedirectUrl;
        String encodeUrl;
        try {
            if (StringUtils.hasText(recommendCode)){
                targetUrl = authorizeRedirectUrl + "?recommendCode=" + recommendCode;
            }
            encodeUrl = URLEncoder.encode(targetUrl, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e);
        }
        s.append(encodeUrl);
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

    public String getOpenId(String code){
        String url = wxCodeUrl(code);
        String result = HttpUtil.doGet(url);
        LOGGER.info("openid返回结果:{}",result);
        JSONObject jsonObject = JSONObject.parseObject(result);
        if (jsonObject != null){
            String openId = jsonObject.getString("openid");
            if (StringUtils.hasText(openId)){
                return openId;
            }else {
                throw new RuntimeException("openid获取值为空");
            }
        }else {
            throw new RuntimeException("openid获取异常");
        }


    }


}
