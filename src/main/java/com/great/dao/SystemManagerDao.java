package com.great.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.great.model.PermissionModel;
import com.great.model.RoleModel;


public interface SystemManagerDao {

	public ArrayList<RoleModel> getAllRole();

	public RoleModel getRole(Integer roleId) ;

	public ArrayList<PermissionModel> getAllPermission() ;

	public void updateRole(RoleModel roleBean) ;

	public void deleteRole(RoleModel roleBean) ;

	public void addRole(RoleModel roleBean);

	public void deleteRolePermission(String roleId) ;

	public void setRolePermission(@Param("roleId")String roleId, @Param("permissionId")String permissionId) ;

}
