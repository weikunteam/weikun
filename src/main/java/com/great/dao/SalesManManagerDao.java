package com.great.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import com.great.model.UserModel;

@Repository
public interface SalesManManagerDao {

	//带条件、分页查询客户数据  作者:zekun
	public ArrayList<UserModel> getSalesManList(@Param("queryInitCount")int queryInitCount,@Param("limit")int limit,@Param("name")String name) ;
	//获取客户数量 作者:zekun
	public String getSalesManCount(@Param("name")String name);
	//编辑客户信息 作者:zekun
	public void editSalesManInfo(UserModel editSalesManInfo) ;
	//删除客户信息 作者:zekun
	public void deleteSalesManInfo(int deleteSalesManId) ;
	//编辑客户信息（单笔） 作者:zekun
	public void addSalesManInfo(UserModel addSalesManInfo) ;
	//验证手机号唯一性
	public String verifySalesManPhone(@Param("salesManPhone")String salesManPhone);

}
