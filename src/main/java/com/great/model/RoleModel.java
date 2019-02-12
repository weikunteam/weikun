package com.great.model;

import java.util.ArrayList;

public class RoleModel {
	private int roleId;
	private String roleName;
	private String roleDetails;
	private ArrayList<UserModel> userList;//多个后台用户链表
	private ArrayList<PermissionModel>permissionList;//多个权限链表
	
	public RoleModel() {
		// TODO Auto-generated constructor stub
	}

	public int getRoleId() {
		return roleId;
	}

	public void setRoleId(int roleId) {
		this.roleId = roleId;
	}

	public String getRoleName() {
		return roleName;
	}

	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}

	public ArrayList<UserModel> getUserList() {
		return userList;
	}

	public void setUserList(ArrayList<UserModel> userList) {
		this.userList = userList;
	}

	public ArrayList<PermissionModel> getPermissionList() {
		return permissionList;
	}

	public void setPermissionList(ArrayList<PermissionModel> permissionList) {
		this.permissionList = permissionList;
	}

	public String getRoleDetails() {
		return roleDetails;
	}

	public void setRoleDetails(String roleDetails) {
		this.roleDetails = roleDetails;
	}
	
	
}
