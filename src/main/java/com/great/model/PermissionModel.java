package com.great.model;

import java.util.ArrayList;


public class PermissionModel {
	private int permissionId;
	private String permissionName;
	private String pUrl;
	private int pId;
	private ArrayList<RoleModel> roleList;//多个角色链表
	
	private int ownChild;//是否拥有子菜单
	
	public PermissionModel() {
		// TODO Auto-generated constructor stub
	}

	public int getPermissionId() {
		return permissionId;
	}

	public void setPermissionId(int permissionId) {
		this.permissionId = permissionId;
	}

	public String getPermissionName() {
		return permissionName;
	}

	public void setPermissionName(String permissionName) {
		this.permissionName = permissionName;
	}

	public String getpUrl() {
		return pUrl;
	}

	public void setpUrl(String pUrl) {
		this.pUrl = pUrl;
	}

	public int getpId() {
		return pId;
	}

	public void setpId(int pId) {
		this.pId = pId;
	}

	public ArrayList<RoleModel> getRoleList() {
		return roleList;
	}

	public void setRoleList(ArrayList<RoleModel> roleList) {
		this.roleList = roleList;
	}

	public int getOwnChild() {
		return ownChild;
	}

	public void setOwnChild(int ownChild) {
		this.ownChild = ownChild;
	}
	
	
	
}
