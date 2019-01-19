package com.great.dao;

import java.util.ArrayList;
import java.util.Map;

import org.apache.catalina.mbeans.UserMBean;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.great.model.UserModel;

@Repository
public interface UserDao {
	
	public Map<String, Object> login(@Param("tel")String tel);
	
	//����������ҳ��ѯ�ͻ�����  ����:zekun
	public ArrayList<UserModel> getUserList(@Param("pageX")String page,@Param("limitX")String limit);
}
