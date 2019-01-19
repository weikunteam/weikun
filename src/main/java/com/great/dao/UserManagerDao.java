package com.great.dao;

import java.util.ArrayList;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import com.great.model.UserModel;

@Repository
public interface UserManagerDao {
	//带条件、分页查询客户数据  作者:zekun
	public ArrayList<UserModel> getUserList(@Param("queryInitCount")int queryInitCount,@Param("limit")int limit) ;
	//获取客户数量 作者:zekun
	public String getUserCount();
}
