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
					responseApi.setResponseApi("1", "��¼�ɹ�");
				}else {
					responseApi.setResponseApi("2", "�������");
				}			
			}else {
				responseApi.setResponseApi("3", "�ֻ���δע��");
			}
		
				
		return responseApi;
	}
	
	public ResponseApi register(String tel,String pwd,String code,String recommend) {
		
		try {
			if (SendCodeUtil.checkCode(tel, code)) {
				
				String date = DateUtil.getDateTime();
				String selfCode = Long.toHexString(Long.parseLong(tel));
				String salt = PasswordUtil.getNextSalt();
				pwd = DigestUtils.sha1Hex(pwd+salt);
				userLoginDao.addUser(tel, pwd,date,selfCode,salt);
					responseApi.setResponseApi("2", "ע��ɹ�");
				
			}else {
				responseApi.setResponseApi("3", "��֤�벻��ȷ");
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
		if (map!=null) {//�����ѱ�ע��
			return true;
		}
		return false;
	}
	
}
