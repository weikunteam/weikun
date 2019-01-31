package com.great.service;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.great.dao.BusPAXYDManagerDao;
import com.great.dao.UserManagerDao;
import com.great.model.BusPAXYDModel;
import com.great.model.UserModel;

@Service
public class BusPAXYDManagerService {
	@Resource
	private BusPAXYDManagerDao busPAXYDManagerDao;
	
	public ArrayList<BusPAXYDModel> getBusPAXYDList(int queryInitCount,int limit,String name) {
		ArrayList <BusPAXYDModel> PAXYDBusList = busPAXYDManagerDao.getBusPAXYDList(queryInitCount, limit,name);
		if (null!=PAXYDBusList && 0!=PAXYDBusList.size()) {
			return PAXYDBusList;
		}else {
			return null;
		}
}
	public String getBusPAXYDCount(String name) {
		String PAXYDBusCount=busPAXYDManagerDao.getBusPAXYDCount(name);
		if(null!=PAXYDBusCount && !"".equals(PAXYDBusCount)) {
			return PAXYDBusCount;
		}else {
			return "0";
		}
	}
}
