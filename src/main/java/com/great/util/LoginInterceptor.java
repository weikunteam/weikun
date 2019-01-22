package com.great.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginInterceptor extends HandlerInterceptorAdapter{
	@Override  
    public boolean preHandle(HttpServletRequest request,  
            HttpServletResponse response, Object handler) throws Exception {
    	Object object =  request.getSession().getAttribute("user");
    	if (object==null) {
			response.sendRedirect(request.getContextPath()+"/login/login.action");
		}
				return true;            
       
        
    } 

}
