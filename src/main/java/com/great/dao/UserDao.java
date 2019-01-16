package com.great.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface UserDao {
	
	public int login(@Param("tel")String tel,@Param("pwd")String pwd);
}
