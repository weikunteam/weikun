package com.great.controller;

import com.great.service.RankService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;

@Controller
@RequestMapping("/home")
public class HomeController {
	@Resource
	private RankService rankService;

	@RequestMapping(value="/gotoHome.action",method= RequestMethod.GET)
	public ModelAndView login(){
		ModelAndView mv = new ModelAndView();
		mv.addObject("listRank", rankService.listRank());
		mv.setViewName("home");
		return mv;
	}
}
