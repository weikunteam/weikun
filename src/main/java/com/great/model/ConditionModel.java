package com.great.model;

import java.util.ArrayList;

public class ConditionModel {

	private String roleId;
	private ArrayList<String> superList;
	private ArrayList<String> childList;
	
	private String name;
	private String applicantTel;
	private String customerState;
	private String busSpeed;
	private String applyDateStart;
	private String applyDateEnd;

	public ConditionModel() {
		// TODO Auto-generated constructor stub
	}

	public String getRoleId() {
		return roleId;
	}

	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}

	public ArrayList<String> getSuperList() {
		return superList;
	}

	public void setSuperList(ArrayList<String> superList) {
		this.superList = superList;
	}

	public ArrayList<String> getChildList() {
		return childList;
	}

	public void setChildList(ArrayList<String> childList) {
		this.childList = childList;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getApplicantTel() {
		return applicantTel;
	}

	public void setApplicantTel(String applicantTel) {
		this.applicantTel = applicantTel;
	}

	public String getCustomerState() {
		return customerState;
	}

	public void setCustomerState(String customerState) {
		this.customerState = customerState;
	}

	public String getBusSpeed() {
		return busSpeed;
	}

	public void setBusSpeed(String busSpeed) {
		this.busSpeed = busSpeed;
	}

	public String getApplyDateStart() {
		return applyDateStart;
	}

	public void setApplyDateStart(String applyDateStart) {
		this.applyDateStart = applyDateStart;
	}

	public String getApplyDateEnd() {
		return applyDateEnd;
	}

	public void setApplyDateEnd(String applyDateEnd) {
		this.applyDateEnd = applyDateEnd;
	}

}
