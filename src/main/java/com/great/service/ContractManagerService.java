package com.great.service;

import java.util.ArrayList;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;

import com.great.dao.ContractManagerDao;
import com.great.dao.CustomerManagerDao;
import com.great.model.BusPAXYDModel;
import com.great.model.ConditionModel;
import com.great.model.ResponseApi;
import com.great.model.UserModel;

@Service
public class ContractManagerService {

	@Resource
	private ContractManagerDao contractManagerDao;
	@Resource
	private ResponseApi responseApi;
	
	public ArrayList<BusPAXYDModel> getContractList(int queryInitCount,int limit,ConditionModel condition) {
		
		ArrayList <BusPAXYDModel> contracList = contractManagerDao.getContractList(queryInitCount, limit,condition);
		if (null!=contracList && 0!=contracList.size()) {
			return contracList;
		}else {
			return null;
		}
}
	public String getContractCount(ConditionModel condition) {
		String contractCount=contractManagerDao.getContractCount(condition);
		if(null!=contractCount && !"".equals(contractCount)) {
			return contractCount;
		}else {
			return "0";
		}
	}
	
	public void contractBusHandle(BusPAXYDModel contractBus) {
		contractManagerDao.contractBusHandle(contractBus);
	}
	
	public void receiveCustomer(BusPAXYDModel receiveCustomerBus) {
		contractManagerDao.receiveCustomer(receiveCustomerBus);
	}//
	
	public BusPAXYDModel queryBusById(Integer paxydBusId) {
		return contractManagerDao.queryBusById(paxydBusId);
	}
	
	public void deleteUserInfo(int deleteUserId) {
		contractManagerDao.deleteUserInfo(deleteUserId);
	}
	
	public void addContractBusInfo(BusPAXYDModel addContractBus) {
		contractManagerDao.addContractBusInfo(addContractBus);
	}
	
	public String verifyUserPhone(String userPhone) {
		String existCode=contractManagerDao.verifyUserPhone(userPhone);
		if(existCode.equals("0")) {
			return "0";
		}else {
			return "200";
		}
		
	}

}
