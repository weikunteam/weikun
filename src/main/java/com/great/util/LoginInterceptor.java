package com.great.util;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.great.dao.UserLoginDao;
import org.apache.commons.lang3.StringUtils;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import java.util.Map;

public class LoginInterceptor extends HandlerInterceptorAdapter {
    @Resource
    private UserLoginDao userLoginDao;

    @Override
    public boolean preHandle(HttpServletRequest request,
                             HttpServletResponse response, Object handler) throws Exception {
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
