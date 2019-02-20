package com.great.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.great.model.BusPAXYDModel;
import com.great.model.ConditionModel;
import com.great.model.UserModel;

@Repository
public interface CustomerManagerDao {
	//带条件、分页查询 业务员手下的客户申请的业务数据  作者:zekun
	public ArrayList<BusPAXYDModel> getCustomerList(@Param("queryInitCount")int queryInitCount,
			@Param("limit")int limit,@Param("salesManId")String salesManId,@Param("condition")ConditionModel condition) ;
	//获取客户申请的业务数量 作者:zekun
	public String getCustomerCount(@Param("salesManId")String salesManId,@Param("condition")ConditionModel condition);
	//编辑客户申办的业务信息 作者:zekun
	public void editCustomerInfo(BusPAXYDModel editCustomer) ;
	//通知客户申办的业务信息 作者:zekun
	public void callCustomer(BusPAXYDModel callCustomerBus) ;
	//删除客户信息 作者:zekun
	public void deleteUserInfo(int deleteUserId) ;
	//添加客户申办的业务信息（单笔） 作者:zekun
	public void addCustomerInfo(BusPAXYDModel addCustomerBus) ;
	//验证手机号唯一性
	public String verifyUserPhone(@Param("userPhone")String userPhone);
	//通过客户id获取客户对象
	public UserModel queryUserById(@Param("userId")int userId);

}