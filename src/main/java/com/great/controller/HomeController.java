package com.great.controller;

import com.great.model.ResponseApi;
import com.great.service.RankService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.Map;

@Controller
@RequestMapping("/home")
public class HomeController {
	@Resource
	private RankService rankService;

	@RequestMapping(value="/gotoHome.action",method= RequestMethod.GET)
	public ModelAndView gotoHome(HttpServletRequest request){
		ModelAndView mv = new ModelAndView();
		Map<String, Object> map = (Map<String, Object>) request.getSession().getAttribute("user");
		mv.setViewName("redirect:/home/home.action?code="+map.get("uRecommendCode"));
		return mv;
	}

	@RequestMapping(value="/home.action",method= RequestMethod.GET)
	public ModelAndView home(HttpServletRequest request){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("home");
		return mv;
	}

	@RequestMapping(value="/getRank.action",method= RequestMethod.POST)
	@ResponseBody
	public ResponseApi getRank(){
		return  new ResponseApi("1","查询成功",rankService.listRank());
	}
}
