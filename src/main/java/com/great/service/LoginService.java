package com.great.service;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.codec.digest.DigestUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.http.ParseException;
import org.springframework.stereotype.Service;


import com.great.dao.UserLoginDao;
import com.great.model.ResponseApi;
import com.great.util.DateUtil;
import com.great.util.PasswordUtil;
import com.great.util.SendCodeUtil;
@Service
public class LoginService {
	@Resource
	private UserLoginDao userLoginDao;
	@Resource
	private ResponseApi responseApi;
	
	public ResponseApi login(String tel,String pwd,HttpServletRequest request) {
		
			Map<String, Object> map = userLoginDao.getUser(tel);
			if (map!=null) {
				pwd = DigestUtils.sha1Hex(pwd+map.get("salt"));
				if (map.get("uPsw").equals(pwd)) {
					request.getSession().setAttribute("user",map);
					responseApi.setResponseApi("1", "登录成功");
				}else {
					responseApi.setResponseApi("2", "密码错误");
				}			
			}else {
				responseApi.setResponseApi("3", "手机号未注册");
			}
		
				
		return responseApi;
	}
	
	public ResponseApi register(String tel,String pwd,String code,String recommendCode) {
		
		try {
			if (SendCodeUtil.checkCode(tel, code)) {
				String date = DateUtil.getDateTime();
				String selfCode = Long.toHexString(Long.parseLong(tel));
				String salt = PasswordUtil.getNextSalt();
				pwd = DigestUtils.sha1Hex(pwd+salt);
				String recommendPeople = userLoginDao.getRecommendpeople(recommendCode);
				userLoginDao.addUser(tel, pwd,date,selfCode,salt,recommendPeople);
					responseApi.setResponseApi("2", "注册成功");
			}else {
				responseApi.setResponseApi("3", "验证码不正确");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return responseApi;
	}
	public void sendCode(String mobile) {
		try {
			SendCodeUtil.getCode(mobile);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public boolean checkCode(String mobile,String code) throws ParseException, Exception {
		return SendCodeUtil.checkCode(mobile, code);
	}
	public boolean checkRepeat(String tel){
		Map<String, Object> map = userLoginDao.getUser(tel);
		if (map!=null) {//号码已被注册
			return true;
		}
		return false;
	}
	
}
