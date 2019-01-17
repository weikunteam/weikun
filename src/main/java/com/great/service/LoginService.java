package com.great.service;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.great.dao.UserDao;
import com.great.model.ResponseApi;
@Service
public class LoginService {
	@Resource
	private UserDao userDao;
	@Resource
	private ResponseApi responseApi;
	
	public ResponseApi login(String tel,String pwd) {
		
			Map<String, Object> map = userDao.login(tel);
			if (map!=null) {
				if (map.get("uPsw").equals(pwd)) {
					responseApi.setResponseApi("1", "µÇÂ¼³É¹¦");
				}else {
					responseApi.setResponseApi("2", "ÃÜÂë´íÎó");
				}			
			}else {
				responseApi.setResponseApi("3", "ÊÖ»úºÅÎ´×¢²á");
			}
		
				
		return responseApi;
	}
	
}
