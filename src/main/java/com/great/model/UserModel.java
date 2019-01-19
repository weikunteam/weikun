package com.great.model;

import java.math.BigDecimal;

import org.omg.CORBA.PRIVATE_MEMBER;

public class UserModel {
	
	private int userId;
	private String uPhone;
	private String uPsw;
	private BigDecimal  uRecommendAmount;   
	private String uRegRecommendPeople;
	private String uRecommendCode;
	private String uLoginState;
	
	public UserModel() {
		
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
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
	

}
