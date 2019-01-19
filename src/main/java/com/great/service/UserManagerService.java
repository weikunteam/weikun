package com.great.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.tomcat.jni.User;
import org.springframework.stereotype.Service;

import com.great.dao.UserManagerDao;
import com.great.model.ResponseApi;
import com.great.model.UserModel;

@Service
public class UserManagerService {
	@Resource
	private UserManagerDao userManagerDao;
	@Resource
	private ResponseApi responseApi;
	
	public ArrayList<UserModel> getUserList(int queryInitCount,int limit) {
		
		ArrayList <UserModel> userList = userManagerDao.getUserList(queryInitCount, limit);
		if (null!=userList && 0!=userList.size()) {
			return userList;
		}else {
			return null;
		}
}
	public String getUserCount() {
		String userCount=userManagerDao.getUserCount();
		if(null!=userCount && !"".equals(userCount)) {
			return userCount;
		}else {
			return "0";
		}
	}

}
