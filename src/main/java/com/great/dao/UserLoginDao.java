package com.great.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.Map;

@Repository
public interface UserLoginDao {
	
	/*public Map<String, Object> login(@Param("tel")String tel);*/
	Map<String, Object> getUser(@Param("tel")String tel);
	void addUser(@Param("tel")String tel,@Param("psw")String psw,
			@Param("date")String date,@Param("selfCode")String selfCode,
			@Param("salt")String salt,@Param("recommendPeople") String recommendPeople,
                        @Param("openId") String openId);
	String getRecommendpeople(@Param("code")String code);
	Map<String, Object> getUserById(@Param("userId")String userId);
	void updatePwd(@Param("tel")String tel,@Param("psw")String psw,@Param("salt")String salt);
}
