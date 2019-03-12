package com.great.service;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import com.aliyuncs.dysmsapi.model.v20170525.SendSmsResponse;
import com.great.enumerate.RedisKeyEnum;
import org.apache.commons.codec.digest.DigestUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.http.ParseException;
import org.springframework.data.redis.core.RedisTemplate;
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
	@Resource
	private RedisTemplate<String, String> redisTemplate;
	
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
			String redisCode = redisTemplate.opsForValue().get(RedisKeyEnum.USER_CODE.key()+tel);
			if (SendCodeUtil.checkCodeByAli(code,redisCode)) {
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
//			SendCodeUtil.getCode(mobile);
			String code = SendCodeUtil.sendByAli(mobile);
			redisTemplate.opsForValue().set(RedisKeyEnum.USER_CODE.key()+mobile, code);
			redisTemplate.expire(RedisKeyEnum.USER_CODE.key()+mobile, 10, TimeUnit.MINUTES);
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
