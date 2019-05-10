package com.great.util;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.great.dao.UserLoginDao;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import java.util.Map;

public class LoginInterceptor extends HandlerInterceptorAdapter {
    @Resource
    private UserLoginDao userLoginDao;

    private static Logger logger = LoggerFactory.getLogger(LoginInterceptor.class);

    @Override
    public boolean preHandle(HttpServletRequest request,
                             HttpServletResponse response, Object handler) throws Exception {
        Cookie[] cookies = request.getCookies();
        if (cookies != null){

            for (Cookie cookie : cookies){
                if (cookie.getName().equals("tel")){
                    logger.info("用户{}通过cookie获得session", cookie.getValue());
                    Map<String, Object> map = userLoginDao.getUser(cookie.getValue());//通过cookie的tel获得user对象
                    request.getSession().setAttribute("user", map);
                }
            }
        }
        Object object = request.getSession().getAttribute("user");
        String code = request.getParameter("code");
        if (object == null) {
            if (StringUtils.isNotBlank(code)) {
                response.sendRedirect(request.getContextPath() + "/login/register.action?code=" + code);
                return false;
            }
            String isUserCenter = request.getParameter("isUserCenter");
            String isRecommend = request.getParameter("isRecommend");
            if (StringUtils.isNotBlank(isUserCenter)) {
                response.sendRedirect(request.getContextPath() + "/login/login.action?isUserCenter=" + isUserCenter);
                return false;
            } else if (StringUtils.isNotBlank(isRecommend)) {
                response.sendRedirect(request.getContextPath() + "/login/login.action?isRecommend=" + isRecommend);
                return false;
            } else {
                response.sendRedirect(request.getContextPath() + "/login/login.action");
                return false;
            }

        } else {
            System.out.println("code"+code);
            Map<String,Object> map = userLoginDao.getUserById(((Map<String, Object>)object).get("userId").toString());
            System.out.println("mycode"+map.get("uRecommendCode"));
            if (StringUtils.isNotBlank(code) && !code.equals(map.get("uRecommendCode"))) {
                System.out.println("enter method-----");
                response.sendRedirect(request.getContextPath() + "/home/gotoHome.action" );
                return false;
            }

        }
        return true;


    }

}
