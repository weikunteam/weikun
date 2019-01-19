package com.great.controller;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.great.model.UserModel;
import com.great.service.LoginService;
import com.great.service.UserManagerService;

@Controller
@RequestMapping("/userManager")
public class UserManagerController {
	@Resource
	private UserManagerService userManagerService;
	
	@RequestMapping(value="/getUserList.action",method= RequestMethod.GET)
	@ResponseBody
	public ArrayList<UserModel> getUserList(String page,String limit) {
		System.out.println("page"+page);
		System.out.println("limit"+limit);
		return userManagerService.getUserList(page, limit);
	}

}
