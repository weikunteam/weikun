package com.great.dao;

import java.util.ArrayList;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.great.model.UserModel;

@Repository
public interface UserLoginDao {
	
	/*public Map<String, Object> login(@Param("tel")String tel);*/
	public Map<String, Object> getUser(@Param("tel")String tel);
	public void addUser(@Param("tel")String tel,@Param("psw")String psw,
			@Param("date")String date,@Param("selfCode")String selfCode,
			@Param("salt")String salt,@Param("recommendPeople") String recommendPeople);
	public String getRecommendpeople(@Param("code")String code);

}
