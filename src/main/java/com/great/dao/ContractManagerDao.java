package com.great.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.great.model.BusPAXYDModel;
import com.great.model.ConditionModel;
import com.great.model.UserModel;

@Repository
public interface ContractManagerDao {
	//带条件、分页查询 业务员手下的签约客户申请的业务数据  作者:zekun
	public ArrayList<BusPAXYDModel> getContractList(@Param("queryInitCount")int queryInitCount,
			@Param("limit")int limit,@Param("condition")ConditionModel condition) ;
	//获取签约客户申请的业务数量 作者:zekun
	public String getContractCount(@Param("condition")ConditionModel condition);
	//业务处理 作者:zekun
	public void contractBusHandle(BusPAXYDModel contractBus) ;
	//接待客户 作者:zekun
	public void receiveCustomer(BusPAXYDModel receiveCustomerBus) ;
	//查询业务 通过id 
	public BusPAXYDModel queryBusById(Integer paxydBusId);
	//删除客户信息 作者:zekun
	public void deleteUserInfo(int deleteUserId) ;
	//添加客户申办的业务信息（单笔） 作者:zekun
	public void addContractBusInfo(BusPAXYDModel addContractBus) ;
	//查看还款日
	public ArrayList<BusPAXYDModel> showAllRepaymentDate();
	//验证手机号唯一性
	public String verifyUserPhone(@Param("userPhone")String userPhone);
	//通过客户id获取客户对象
	public UserModel queryUserById(@Param("userId")int userId);

}
