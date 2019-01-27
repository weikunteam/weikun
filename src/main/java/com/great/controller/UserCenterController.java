package com.great.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
@Controller
@RequestMapping("/userCenter")
public class UserCenterController {
	
	
		@RequestMapping(value="/gotoUserCenter.action",method= RequestMethod.GET)
		public ModelAndView gotoUserCenter(){
			ModelAndView mv = new ModelAndView();
			mv.setViewName("userCenter");
			return mv;
		}
	
}
