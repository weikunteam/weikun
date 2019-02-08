package com.great.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.great.dao.BackLoginDao;
import com.great.model.UserModel;
@Service
public class BackLoginService {
	@Resource
	BackLoginDao backLoginDao;
	
	public UserModel getUserBackGroundInfo(String uBackGroundAccount) {
		
		return backLoginDao.getUserBackGroundInfo(uBackGroundAccount);
	}
	
	
	public String checkAccount(String uBackGroundAccount) {
		String existCode=backLoginDao.checkAccount(uBackGroundAccount);
		if(existCode.equals("0")) {
			return "0";
		}else {
			return "200";
		}
		
	}
}
