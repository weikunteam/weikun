package com.great.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.great.dao.UserDao;
import com.great.service.LoginService;

@Controller
@RequestMapping("/login")
public class LoginController {
@Resource
private LoginService loginService;
	
	@RequestMapping(value="/login.action",method= RequestMethod.POST)
	@ResponseBody
	public boolean login(String tel,String pwd){
		
		return loginService.login(tel, pwd);
	}
}
