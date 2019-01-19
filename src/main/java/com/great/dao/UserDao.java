package com.great.dao;

import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface UserDao {
	
	public Map<String, Object> getUser(@Param("tel")String tel);
	public void addUser(@Param("tel")String tel,@Param("psw")String psw);
}
