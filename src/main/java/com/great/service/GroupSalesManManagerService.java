package com.great.service;

import java.util.ArrayList;
import java.util.Map;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.great.dao.CustomerManagerDao;
import com.great.dao.GroupSalesManManagerDao;
import com.great.model.BusPAXYDModel;
import com.great.model.ConditionModel;
import com.great.model.ResponseApi;
import com.great.model.RoleModel;
import com.great.model.UserModel;

@Service
public class GroupSalesManManagerService {

	@Resource
	private GroupSalesManManagerDao groupSalesManManagerDao;
	@Resource
	private ResponseApi responseApi;
	
	public ArrayList<BusPAXYDModel> getCustomerList(int queryInitCount,int limit,String teamLeader,String teamMate,ConditionModel condition) {
		
		ArrayList <BusPAXYDModel> customerList = groupSalesManManagerDao.getCustomerList(queryInitCount, limit,teamLeader,teamMate,condition);
		if (null!=customerList && 0!=customerList.size()) {
			return customerList;
		}else {
			return null;
		}
}
	public String getCustomerCount(String teamLeader,String teamMate,ConditionModel condition) {
		String customerCount=groupSalesManManagerDao.getCustomerCount(teamLeader,teamMate,condition);
		if(null!=customerCount && !"".equals(customerCount)) {
			return customerCount;
		}else {
			return "0";
		}
	}
	
	public ArrayList<UserModel> getGroupSalesManSelectList(String teamLeader) {
		return groupSalesManManagerDao.getGroupSalesManSelectList(teamLeader);
	}
	
	public void editCustomerInfo(BusPAXYDModel editCustomer) {
		groupSalesManManagerDao.editCustomerInfo(editCustomer);
	}
	
//	public void callCustomer(BusPAXYDModel callCustomerBus) {
//		customerManagerDao.callCustomer(callCustomerBus);
//	}
//	
//	public void deleteUserInfo(int deleteUserId) {
//		customerManagerDao.deleteUserInfo(deleteUserId);
//	}
//	
//	public void addCustomerInfo(BusPAXYDModel addCustomerBus) {
//		customerManagerDao.addCustomerInfo(addCustomerBus);
//	}
//	public Integer userRegisterStatistic(String dateToday) {
//		return customerManagerDao.userRegisterStatistic(dateToday);
//	}
//	public String verifyUserPhone(String userPhone) {
//		String existCode=customerManagerDao.verifyUserPhone(userPhone);
//		if(existCode.equals("0")) {
//			return "0";
//		}else {
//			return "200";
//		}
//		
//	}

}
