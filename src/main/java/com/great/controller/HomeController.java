package com.great.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/home")
public class HomeController {

	@RequestMapping(value="/gotoHome.action",method= RequestMethod.GET)
	public ModelAndView login(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("home");
		return mv;
	}
}
