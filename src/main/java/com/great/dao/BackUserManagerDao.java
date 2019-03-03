package com.great.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.great.model.RoleModel;
import com.great.model.UserModel;

@Repository
public interface BackUserManagerDao {

	//带条件、分页查询客户数据  作者:zekun
	public ArrayList<UserModel> getBackUserList(@Param("queryInitCount")int queryInitCount,@Param("limit")int limit,
			@Param("userName")String userName,@Param("uBackGroundAccount")String uBackGroundAccount,@Param("roleId")String roleId) ;
	//获取客户数量 作者:zekun
	public String getBackUserCount(@Param("userName")String userName,@Param("uBackGroundAccount")String uBackGroundAccount,@Param("roleId")String roleId);
	//获取角色下拉框的列表
	public ArrayList<RoleModel> getRoleSelectList();
	//编辑客户信息 作者:zekun
	public void editBackUserInfo(UserModel editBackUserInfo) ;
	//删除客户信息 作者:zekun
	public void deleteBackUserInfo(int deleteBackUserId) ;
	//添加客户信息（单笔） 非客户经理 作者:zekun 
	public void addBackUserInfo(@Param("userName")String userName,@Param("uBackGroundAccount")String uBackGroundAccount,@Param("uBackGroundPsw")String uBackGroundPsw) ;
	//添加客户信息（单笔） 客户经理 作者:zekun 
	public void addSalesManInfo(@Param("uPhone")String uPhone,@Param("userName")String userName,@Param("uBackGroundAccount")String uBackGroundAccount,@Param("uBackGroundPsw")String uBackGroundPsw) ;
	//添加客户角色 作者:zekun
    public void addBackUserRole(@Param("userId")Integer userId,@Param("roleId")Integer roleId) ;
    //搜索全部客户经理
    public ArrayList<UserModel>queryAllSalesMan();
    //搜索组长下的组员
    public ArrayList<UserModel>queryTeamMate(@Param("teamLeader")String teamLeader);
    //搜索其他组长下的组员
    public ArrayList<UserModel>queryOtherTeamMate(@Param("teamLeader")String teamLeader);
    //搜索还未分配的客户经理 
    public ArrayList<UserModel>queryNotDistribute(); //clearTeam addTeamMate
  //先将分组表中 要添加的组员的数据初始化，删除清空
    public void clearTeamLeader(@Param("teamLeader")String teamLeader);
    //先将分组表中 要添加的组员的数据初始化，删除清空
    public void clearTeamMate(@Param("teamMate")String teamMate);
    //将组长 组员添加到 分组表
    public void addTeamMate(@Param("teamLeader")String teamLeader,@Param("teamMate")String teamMate);
	//验证手机号唯一性
	public String verifyBackUserPhone(@Param("uPhone")String uPhone);
	//检验后台账号是否被注册
	public String verifyBackUserAccount(@Param("uBackGroundAccount")String uBackGroundAccount);
	//通过账号查询后台用户信息
	public UserModel queryBackUserByAccount(@Param("uBackGroundAccount")String uBackGroundAccount);
}
