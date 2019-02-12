package com.great.model;

import java.util.ArrayList;

public class ConditionModel {

	private String roleId;
	private ArrayList<String> superList;
	private ArrayList<String> childList;
//	private ArrayList<String> superList;
//	private ArrayList<String> childList;

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

}
