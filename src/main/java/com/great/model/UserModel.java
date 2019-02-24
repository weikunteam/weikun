package com.great.model;

import java.math.BigDecimal;
import java.util.ArrayList;
import org.omg.CORBA.PRIVATE_MEMBER;

public class UserModel {
	
	private Integer userId;//用户id
	private String uPhone;//手机号
	private String uPsw;//密码
	private BigDecimal  uRecommendAmount;//应得推广金额
	private String uRegRecommendPeople;//注册推广人
	private String uRecommendCode;//推广码
	private String uLoginState;//登录状态
	private String salt;//
	private String registerTime;//注册时间
	private String userType;//公众号用户类型 1客户2公司人员
	private Integer delState;//用户删除状态 0存在1被删除（假）
	private String userName;//用户名称
	private String uBackGroundAccount;//用户后台账号
	private String uBackGroundPsw;//用户后台密码
	private Integer age;//年龄
	private String job;//工作
	
	private ArrayList<RoleModel> roleList;//多个角色链表
	
	public UserModel() {
		
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getuPhone() {
		return uPhone;
	}

	public void setuPhone(String uPhone) {
		this.uPhone = uPhone;
	}
	
	public String getuPsw() {
		return uPsw;
	}

	public void setuPsw(String uPsw) {
		this.uPsw = uPsw;
	}

	public BigDecimal getuRecommendAmount() {
		return uRecommendAmount;
	}

	public void setuRecommendAmount(BigDecimal uRecommendAmount) {
		this.uRecommendAmount = uRecommendAmount;
	}

	public String getuRegRecommendPeople() {
		return uRegRecommendPeople;
	}

	public void setuRegRecommendPeople(String uRegRecommendPeople) {
		this.uRegRecommendPeople = uRegRecommendPeople;
	}

	public String getuRecommendCode() {
		return uRecommendCode;
	}

	public void setuRecommendCode(String uRecommendCode) {
		this.uRecommendCode = uRecommendCode;
	}

	public String getuLoginState() {
		return uLoginState;
	}

	public void setuLoginState(String uLoginState) {
		this.uLoginState = uLoginState;
	}

	public ArrayList<RoleModel> getRoleList() {
		return roleList;
	}

	public void setRoleList(ArrayList<RoleModel> roleList) {
		this.roleList = roleList;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getSalt() {
		return salt;
	}

	public void setSalt(String salt) {
		this.salt = salt;
	}

	public String getRegisterTime() {
		return registerTime;
	}

	public void setRegisterTime(String registerTime) {
		this.registerTime = registerTime;
	}

	public String getUserType() {
		return userType;
	}

	public void setUserType(String userType) {
		this.userType = userType;
	}

	public Integer getDelState() {
		return delState;
	}

	public void setDelState(Integer delState) {
		this.delState = delState;
	}

	public String getuBackGroundAccount() {
		return uBackGroundAccount;
	}

	public void setuBackGroundAccount(String uBackGroundAccount) {
		this.uBackGroundAccount = uBackGroundAccount;
	}

	public String getuBackGroundPsw() {
		return uBackGroundPsw;
	}

	public void setuBackGroundPsw(String uBackGroundPsw) {
		this.uBackGroundPsw = uBackGroundPsw;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public String getJob() {
		return job;
	}

	public void setJob(String job) {
		this.job = job;
	}
	

}
