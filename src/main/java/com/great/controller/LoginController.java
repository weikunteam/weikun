package com.great.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.great.dao.UserDao;
import com.great.model.ResponseApi;
import com.great.service.LoginService;

@Controller
@RequestMapping("/login")
public class LoginController {
@Resource
private LoginService loginService;
@Resource
private ResponseApi responseApi;
	@RequestMapping(value="/login.action",method= RequestMethod.GET)
	public ModelAndView login(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("index");
		return mv;
	}
	
	@RequestMapping(value="/register.action",method= RequestMethod.GET)
	public ModelAndView register(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("register");
		return mv;
	}
	
	@RequestMapping(value="/login.action",method= RequestMethod.POST)
	@ResponseBody
	public ResponseApi login(String tel,String pwd){
		
		return loginService.login(tel, pwd);
	}
	
	@RequestMapping(value="/register.action",method= RequestMethod.POST)
	@ResponseBody
	public ResponseApi register(String tel,String pwd,String code,String recommend){
		
		return loginService.register(tel, pwd, code, recommend);
	
	}
	@RequestMapping(value="/sendCode.action",method= RequestMethod.POST)
	@ResponseBody
	public void sendCode(String tel){
		loginService.sendCode(tel);
	}
	@RequestMapping(value="/checkRepeat.action",method= RequestMethod.POST)
	@ResponseBody
	public ResponseApi checkRepea(String tel){
		if (loginService.checkRepeat(tel)) {
			responseApi.setResponseApi("2", "手机号被注册");
		}else{
			responseApi.setResponseApi("1", "手机号未被注册");
		}
		return responseApi;
	}
}
