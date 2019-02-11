package com.great.service;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.great.dao.SystemManagerDao;
import com.great.model.PermissionModel;
import com.great.model.RoleModel;

@Service
public class SystemManagerService {
	
	@Resource
	private SystemManagerDao systemManagerDao;
	
	public ArrayList<RoleModel> getAllRole() {
		return systemManagerDao.getAllRole();
	}

	public RoleModel getRole(Integer roleId) {
		return systemManagerDao.getRole(roleId);
	}

	public ArrayList<PermissionModel> getAllPermission() {
		return systemManagerDao.getAllPermission();
	}

	public void updateRole(RoleModel RoleModel) {
		systemManagerDao.updateRole(RoleModel);
	}

	public void deleteRole(RoleModel RoleModel) {
		systemManagerDao.deleteRole(RoleModel);
	}

	public void addRole(RoleModel RoleModel) {
		systemManagerDao.addRole(RoleModel);
	}

	public void deleteRolePermission(String roleId) {
		systemManagerDao.deleteRolePermission(roleId);
	}

	public void setRolePermission(String roleId, String permissionId) {
		systemManagerDao.setRolePermission(roleId, permissionId);
	}

}
