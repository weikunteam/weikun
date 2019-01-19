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
	
/*	public ResponseApi getUserList(String page,String limit) {
		
		List<UserModel> userList = userDao.getUserList(page, limit);
		if (userList!=null) {
			responseApi.setResponseApi("1", "客户信息查询成功",userList);
		}else {
			responseApi.setResponseApi("2", "客户信息查询成功失败");
		}
		
	return responseApi;
}*/
	
	public ArrayList<UserModel> getUserList(String page,String limit) {
		
		ArrayList <UserModel> userList = userManagerDao.getUserList(page, limit);
		System.out.println(userList.size());
		if (userList!=null) {
			return userList;
		}else {
			return null;
		}
		
}

}
