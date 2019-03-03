package com.great.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginInterceptor extends HandlerInterceptorAdapter{
	@Override  
    public boolean preHandle(HttpServletRequest request,  
            HttpServletResponse response, Object handler) throws Exception {
    	Object object =  request.getSession().getAttribute("user");
    	String code = request.getParameter("code");
    	if (StringUtils.isNotBlank(code)&&object==null) {
    		response.sendRedirect(request.getContextPath()+"/login/register.action?code="+code);
			return false;
		}else  if (object==null) {
			String isUserCenter = request.getParameter("isUserCenter");
			String isRecommend = request.getParameter("isRecommend");
			if (StringUtils.isNotBlank(isUserCenter)){
				response.sendRedirect(request.getContextPath()+"/login/login.action?isUserCenter="+isUserCenter);
				return false;
			}else if (StringUtils.isNotBlank(isRecommend)){
				response.sendRedirect(request.getContextPath()+"/login/login.action?isRecommend="+isRecommend);
				return false;
			}else {
				response.sendRedirect(request.getContextPath()+"/login/login.action");
				return false;
			}

		}
				return true;            
       
        
    } 

}
