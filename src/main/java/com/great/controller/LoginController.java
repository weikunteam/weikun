package com.great.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/login")
public class LoginController {

	
	@RequestMapping(value="/check",method= RequestMethod.GET)
	@ResponseBody
	public String check(){
		return "11111";
	}
}