package com.great.service;

import java.util.ArrayList;
import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.great.dao.SalesManManagerDao;
import com.great.model.ResponseApi;
import com.great.model.UserModel;

@Service
public class SalesManManagerService {

	@Resource
	private SalesManManagerDao salesManManagerDao;
	@Resource
	private ResponseApi responseApi;
	
	public ArrayList<UserModel> getSalesManList(int queryInitCount,int limit,String name) {
		ArrayList <UserModel> salesManList = salesManManagerDao.getSalesManList(queryInitCount, limit,name);
		if (null!=salesManList && 0!=salesManList.size()) {
			return salesManList;
		}else {
			return null;
		}
}
	public String getSalesManCount(String name) {
		String salesManCount=salesManManagerDao.getSalesManCount(name);
		if(null!=salesManCount && !"".equals(salesManCount)) {
			return salesManCount;
		}else {
			return "0";
		}
	}
	
	public void editSalesManInfo(UserModel editSalesManInfo) {
		salesManManagerDao.editSalesManInfo(editSalesManInfo);
	}
	
	public void deleteSalesManInfo(int deleteSalesManId) {
		salesManManagerDao.deleteSalesManInfo(deleteSalesManId);
	}
	
	public void addSalesManInfo(UserModel addSalesManInfo) {
		salesManManagerDao.addSalesManInfo(addSalesManInfo);
	}
	
	public String verifySalesManPhone(String salesManPhone) {
		String existCode=salesManManagerDao.verifySalesManPhone(salesManPhone);
		if(existCode.equals("0")) {
			return "0";
		}else {
			return "200";
		}
		
	}

}
