package com.great.controller;

import com.great.dao.UserLoginDao;
import com.great.model.ResponseApi;
import com.great.service.LoginService;
import com.great.service.UserCenterService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ValueConstants;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.awt.*;
import java.util.Map;

@Controller
@RequestMapping("/userCenter")
public class UserCenterController {
	@Resource
	private UserCenterService userCenterService;

	
		@RequestMapping(value="/gotoUserCenter.action",method= RequestMethod.GET)
		public ModelAndView gotoUserCenter(){
			ModelAndView mv = new ModelAndView();
			mv.setViewName("userCenter");
			return mv;
		}

		@RequestMapping(value="/gotoPeople.action",method= RequestMethod.GET)
		public ModelAndView gotoPeople(HttpServletRequest request){
			ModelAndView mv = new ModelAndView();
			String tel = ((Map<String,Object>)request.getSession().getAttribute("user")).get("uPhone").toString();
			mv.addObject("people",userCenterService.getUser(tel)) ;
			mv.setViewName("people");
			return mv;
		}

		@RequestMapping(value="/updateUser.action",method= RequestMethod.POST)
		@ResponseBody
		public ResponseApi updateUser(String userName, String age,String job, HttpServletRequest request){
			String userId = ((Map<String,Object>)request.getSession().getAttribute("user")).get("userId").toString();
		userCenterService.updateUser(userName, age, job, userId);
			return new ResponseApi("1", "更改成功");
		}
	
}
