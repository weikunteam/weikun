package com.great.controller;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.great.model.LayUITableResponseModel;
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
	public LayUITableResponseModel getUserList(String page,String limit) {
		int queryInitCount=(Integer.valueOf(page).intValue()-1)*Integer.valueOf(limit).intValue();
		ArrayList<UserModel> userList=userManagerService.getUserList(queryInitCount, Integer.valueOf(limit).intValue());
		int userCount= Integer.valueOf(userManagerService.getUserCount()).intValue();
		LayUITableResponseModel layUITableResponseModel=new LayUITableResponseModel(0,"ms",userCount,userList);
		return layUITableResponseModel;
	}

}
