package com.great.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.great.model.UserModel;

@Repository
public interface BackLoginDao {

	public UserModel getUserBackGroundInfo(@Param("uBackGroundAccount")String uBackGroundAccount);
	
	public String backLoginIsSuccess(@Param("uBackGroundAccount")String uBackGroundAccount, @Param("uBackGroundPsw")String uBackGroundPsw);
	
	public String checkAccount(@Param("uBackGroundAccount")String uBackGroundAccount);
}
