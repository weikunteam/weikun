package com.great.dao;

import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface UserDao {
	
	public Map<String, Object> login(@Param("tel")String tel);
}
