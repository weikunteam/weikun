package com.great.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.great.dao.UserDao;
@Service
public class LoginService {
	@Resource
	private UserDao userDao;
	
	public boolean login(String tel,String pwd) {
		if (userDao.login(tel, pwd)==1) {
			return Boolean.TRUE;
		}else {
			return Boolean.FALSE;
		}
	}
	
}
