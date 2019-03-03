package com.great.service;

import java.util.ArrayList;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;
import com.great.dao.BackUserManagerDao;
import com.great.model.ResponseApi;
import com.great.model.RoleModel;
import com.great.model.UserModel;

@Service
public class BackUserManagerService {

	@Resource
	private BackUserManagerDao backUserManagerDao;
	@Resource
	private ResponseApi responseApi;
	
	public ArrayList<UserModel> getBackUserList(int queryInitCount,int limit,String userName,String uBackGroundAccount,String roleId) {
		ArrayList <UserModel> backUserList = backUserManagerDao.getBackUserList(queryInitCount, limit,userName,uBackGroundAccount,roleId);
		if (null!=backUserList && 0!=backUserList.size()) {
			return backUserList;
		}else {
			return null;
		}
}
	public String getBackUserCount(String userName,String uBackGroundAccount,String roleId) {
		String backUserCount=backUserManagerDao.getBackUserCount(userName,uBackGroundAccount,roleId);
		if(null!=backUserCount && !"".equals(backUserCount)) {
			return backUserCount;
		}else {
			return "0";
		}
	}
	
	public ArrayList<RoleModel> getRoleSelectList() {
		return backUserManagerDao.getRoleSelectList();
	}
	
	public void editBackUserInfo(UserModel editBackUserInfo) {
		backUserManagerDao.editBackUserInfo(editBackUserInfo);
	}
	
	public void deleteBackUserInfo(int deleteBackUserId) {
		backUserManagerDao.deleteBackUserInfo(deleteBackUserId);
	}
	
	public void addBackUserInfo(String userName,String uBackGroundAccount,String uBackGroundPsw) {
		backUserManagerDao.addBackUserInfo(userName,uBackGroundAccount,uBackGroundPsw);
	}
	
	public void addSalesManInfo(String uPhone,String userName,String uBackGroundAccount,String uBackGroundPsw) {
		backUserManagerDao.addSalesManInfo(uPhone, userName, uBackGroundAccount, uBackGroundPsw);
	}
	
	public void addBackUserRole(Integer userId,Integer roleId) {
		 backUserManagerDao.addBackUserRole(userId,roleId);
	 }
	
	public ArrayList<UserModel>queryAllSalesMan(){
		return backUserManagerDao.queryAllSalesMan();
	}
	
	 public ArrayList<UserModel>queryTeamMate(String teamLeader){
		 return backUserManagerDao.queryTeamMate(teamLeader);
	 }
	 
	 public ArrayList<UserModel>queryOtherTeamMate(String teamLeader){
		 return backUserManagerDao.queryOtherTeamMate(teamLeader);
	 }
	 
	 public ArrayList<UserModel>queryNotDistribute(){
		 return backUserManagerDao.queryNotDistribute();
	 } 
	 
	 public void clearTeamLeader(String teamLeader) {
		 backUserManagerDao.clearTeamLeader(teamLeader);
	 }
	 
	 public void clearTeamMate(String teamMate) {
		 backUserManagerDao.clearTeamMate(teamMate);
	 }

	public void addTeamMate(String teamLeader,@Param("teamMate")String teamMate) {
		backUserManagerDao.addTeamMate(teamLeader, teamMate);
	}
	 
	public String verifyBackUserPhone(String uPhone) {
		String existCode=backUserManagerDao.verifyBackUserPhone(uPhone);
		if(existCode.equals("0")) {
			return "0";
		}else {
			return "200";
		}
	}
	
	public String verifyBackUserAccount(String uBackGroundAccount){
		String existCode=backUserManagerDao.verifyBackUserAccount(uBackGroundAccount);
		if(existCode.equals("0")) {
			return "0";
		}else {
			return "200";
		}
	}
	
	public UserModel queryBackUserByAccount(String uBackGroundAccount) {
		return backUserManagerDao.queryBackUserByAccount(uBackGroundAccount);
	}
}
