package com.great.model;

import java.util.ArrayList;

public class RoleModel {
	private int roleId;
	private String roleName;
	private ArrayList<UserModel> adminList;//多个后台用户链表
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

	public ArrayList<UserModel> getAdminList() {
		return adminList;
	}

	public void setAdminList(ArrayList<UserModel> adminList) {
		this.adminList = adminList;
	}

	public ArrayList<PermissionModel> getPermissionList() {
		return permissionList;
	}

	public void setPermissionList(ArrayList<PermissionModel> permissionList) {
		this.permissionList = permissionList;
	}
	
	
}
