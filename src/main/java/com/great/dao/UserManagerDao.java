package com.great.dao;

import java.util.ArrayList;
import org.apache.ibatis.annotations.Param;
import org.apache.tomcat.jni.User;
import org.springframework.stereotype.Repository;
import com.great.model.UserModel;

@Repository
public interface UserManagerDao {
	//带条件、分页查询客户数据  作者:zekun
	public ArrayList<UserModel> getUserList(@Param("queryInitCount")int queryInitCount,@Param("limit")int limit,@Param("name")String name) ;
	//获取客户数量 作者:zekun
	public String getUserCount(@Param("name")String name);
	//编辑客户信息 作者:zekun
	public void editUserInfo(UserModel editUserInfo) ;
	//删除客户信息 作者:zekun
	public void deleteUserInfo(int deleteUserId) ;
	//编辑客户信息（单笔） 作者:zekun
	public void addUserInfo(UserModel addUserInfo) ;
	//验证手机号唯一性
	public String verifyUserPhone(@Param("userPhone")String userPhone);
	//通过客户id获取客户对象
	public UserModel queryUserById(@Param("userId")int userId);
}
