package com.great.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.great.dao.UserManagerDao;
import com.great.model.ConditionModel;
import com.great.model.ResponseApi;
import com.great.model.UserModel;

@Service
public class UserManagerService {
	@Resource
	private UserManagerDao userManagerDao;
	@Resource
	private ResponseApi responseApi;
	
	public ArrayList<UserModel> getUserList(int queryInitCount,int limit,ConditionModel condition) {
		
		ArrayList <UserModel> userList = userManagerDao.getUserList(queryInitCount, limit,condition);
		if (null!=userList && 0!=userList.size()) {
			return userList;
		}else {
			return null;
		}
}
	public String getUserCount(ConditionModel condition) {
		String userCount=userManagerDao.getUserCount(condition);
		if(null!=userCount && !"".equals(userCount)) {
			return userCount;
		}else {
			return "0";
		}
	}
	
	public void editUserInfo(UserModel editUserInfo) {
		userManagerDao.editUserInfo(editUserInfo);
	}
	
	public void deleteUserInfo(int deleteUserId) {
		userManagerDao.deleteUserInfo(deleteUserId);
	}
	
	public void addUserInfo(UserModel addUserInfo) {
		userManagerDao.addUserInfo(addUserInfo);
	}
	
	public String verifyUserPhone(String userPhone) {
		String existCode=userManagerDao.verifyUserPhone(userPhone);
		if(existCode.equals("0")) {
			return "0";
		}else {
			return "200";
		}
		
	}
}
