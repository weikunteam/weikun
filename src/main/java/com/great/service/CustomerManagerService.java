package com.great.service;

import java.util.ArrayList;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.great.dao.CustomerManagerDao;
import com.great.model.BusPAXYDModel;
import com.great.model.ConditionModel;
import com.great.model.ResponseApi;
import com.great.model.UserModel;

@Service
public class CustomerManagerService {

	@Resource
	private CustomerManagerDao customerManagerDao;
	@Resource
	private ResponseApi responseApi;
	
	public ArrayList<BusPAXYDModel> getCustomerList(int queryInitCount,int limit,String salesManId,ConditionModel condition) {
		
		ArrayList <BusPAXYDModel> customerList = customerManagerDao.getCustomerList(queryInitCount, limit,salesManId,condition);
		if (null!=customerList && 0!=customerList.size()) {
			return customerList;
		}else {
			return null;
		}
}
	public String getCustomerCount(String salesManId,ConditionModel condition) {
		String customerCount=customerManagerDao.getCustomerCount(salesManId,condition);
		if(null!=customerCount && !"".equals(customerCount)) {
			return customerCount;
		}else {
			return "0";
		}
	}
	
	public void editCustomerInfo(BusPAXYDModel editCustomer) {
		customerManagerDao.editCustomerInfo(editCustomer);
	}
	
	public void callCustomer(BusPAXYDModel callCustomerBus) {
		customerManagerDao.callCustomer(callCustomerBus);
	}
	
	public void deleteUserInfo(int deleteUserId) {
		customerManagerDao.deleteUserInfo(deleteUserId);
	}
	
	public void addCustomerInfo(BusPAXYDModel addCustomerBus) {
		customerManagerDao.addCustomerInfo(addCustomerBus);
	}
	
	public String verifyUserPhone(String userPhone) {
		String existCode=customerManagerDao.verifyUserPhone(userPhone);
		if(existCode.equals("0")) {
			return "0";
		}else {
			return "200";
		}
		
	}

}