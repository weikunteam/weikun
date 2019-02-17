package com.great.controller;

import java.util.ArrayList;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import com.great.model.ConditionModel;
import com.great.model.PermissionModel;
import com.great.model.RoleModel;
import com.great.service.SystemManagerService;


@Controller
@RequestMapping("/systemAction")
public class SystemManagerController {

	@Resource
	private SystemManagerService systemManagerService;//

	@RequestMapping(value = "/getRoleList.action",method= RequestMethod.GET) // systemAction/showAllRole.action
	@ResponseBody
	public ModelAndView getRoleList(Model model){
		System.out.println("****");//Model model
		ArrayList<RoleModel> roleList = systemManagerService.getAllRole();
		// 返回视图
		ModelAndView mav = new ModelAndView();
		model.addAttribute("roleList", roleList);
		mav.setViewName("showRole");
		return mav;
	}
	
	@RequestMapping(value="/getRole.action")
	public @ResponseBody RoleModel getRole(HttpServletResponse response,Integer roleId) {
		System.out.println("获取角色对象");
		System.out.println("roleid---"+roleId);
		return systemManagerService.getRole(roleId);
	}
	
	@RequestMapping(value="/getAllPermission.action")
	public @ResponseBody ArrayList<PermissionModel> getAllPermission(HttpServletResponse response) {
		System.out.println("获取全部权限");
		return systemManagerService.getAllPermission();
	}
	
	@RequestMapping(value="/addRole.action")
	public @ResponseBody ArrayList<RoleModel> addRole(Model model,HttpServletResponse response, RoleModel RoleModel) {
		systemManagerService.addRole(RoleModel);
		ArrayList<RoleModel> roleList=systemManagerService.getAllRole();
		return roleList;
	}
	
	@RequestMapping(value="/updateRole.action")
	public @ResponseBody ArrayList<RoleModel> updateRole(Model model,HttpServletResponse response, RoleModel RoleModel) {
		systemManagerService.updateRole(RoleModel);
		ArrayList<RoleModel> roleList=systemManagerService.getAllRole();
		return roleList;
	}

	@RequestMapping(value="/deleteRole.action")
	public @ResponseBody ArrayList<RoleModel> deleteRole(Model model,HttpServletResponse response, RoleModel RoleModel) {
		
		//systemManagerService.deleteRolePermission(RoleModel.getRoleId());
		//systemManagerService.deleteRole(RoleModel);
		
		ArrayList<RoleModel> roleList=systemManagerService.getAllRole();
		
		return roleList;
	}
	
	@RequestMapping(value="/setPermission.action")
	public  @ResponseBody ArrayList<RoleModel> setPermission(HttpServletResponse response, @RequestBody ConditionModel conditionBean) {
		System.out.println("设置去权限");
		System.out.println("角色---"+conditionBean.getRoleId());
		systemManagerService.deleteRolePermission(conditionBean.getRoleId());
		for(int i=0;i<conditionBean.getSuperList().size();i++) {
			System.out.println("父级---"+conditionBean.getSuperList().get(i));
			systemManagerService.setRolePermission(conditionBean.getRoleId(), conditionBean.getSuperList().get(i));
		}
		for(int i=0;i<conditionBean.getChildList().size();i++) {
			System.out.println("子级---"+conditionBean.getChildList().get(i));
			systemManagerService.setRolePermission(conditionBean.getRoleId(), conditionBean.getChildList().get(i));
		}
		ArrayList<RoleModel> roleList=systemManagerService.getAllRole();
		return roleList;
	}
	
}
