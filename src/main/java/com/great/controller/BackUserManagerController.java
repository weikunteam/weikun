package com.great.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.great.model.LayUITableResponseModel;
import com.great.model.RoleModel;
import com.great.model.TreeNodeModel;
import com.great.model.UserModel;
import com.great.service.BackUserManagerService;

import sun.reflect.generics.tree.Tree;
import sun.tools.jar.resources.jar;

@Controller
@RequestMapping("/backUserManager")
public class BackUserManagerController {

	@Resource
	private BackUserManagerService backUserManagerService;
	
	//获取客户数据列表
	@RequestMapping(value="/getBackUserList.action",method= RequestMethod.GET)
	@ResponseBody
	public LayUITableResponseModel getBackUserList(String page,String limit,String userName,String uBackGroundAccount,String roleId) {
		System.out.println("name"+page);
		System.out.println("name"+limit);
		System.out.println("name"+userName);
		System.out.println("name"+uBackGroundAccount);
		int queryInitCount=(Integer.valueOf(page).intValue()-1)*Integer.valueOf(limit).intValue();
		ArrayList<UserModel> backUserList=backUserManagerService.getBackUserList(queryInitCount, Integer.valueOf(limit).intValue(),userName,uBackGroundAccount,roleId);
		
		if(backUserList!=null) {
			for(int i=0;i<backUserList.size();i++) {
				if(backUserList.get(i).getRoleList().size()!=0) {
					backUserList.get(i).setRoleModel(backUserList.get(i).getRoleList().get(0));
				}else {
					backUserList.get(i).setRoleModel(null);
				}
			}
		}
		
		int backUserCount= Integer.valueOf(backUserManagerService.getBackUserCount(userName,uBackGroundAccount,roleId)).intValue();
		LayUITableResponseModel layUITableResponseModel=new LayUITableResponseModel(0,"ms",backUserCount,backUserList);
		return layUITableResponseModel;
	}
	
	//获取角色下拉框的列表
	@RequestMapping(value="/getRoleSelectList.action",method= RequestMethod.POST)
	@ResponseBody
	public Map<String,Object> getRoleSelectList() {
		Map<String,Object> responseMap=new HashMap<String, Object>();
		ArrayList<RoleModel>roleList=new ArrayList<RoleModel>();
		roleList=backUserManagerService.getRoleSelectList();
		if(roleList.size()!=0) {
			responseMap.put("returnCode", 200);
			responseMap.put("roleList", roleList);
		}else {
			responseMap.put("returnCode", 0);
		}
		return responseMap;
	}
	
	//重置密码
	@RequestMapping(value="/editBackUserInfo.action",method= RequestMethod.POST)
	@ResponseBody
	public Map<String,Object> editBackUserInfo(UserModel editBackUserInfo) {
		backUserManagerService.editBackUserInfo(editBackUserInfo);
		Map<String,Object> responseMap=new HashMap<String, Object>();
		responseMap.put("returnCode", 200);
		return responseMap;
	}
	
	//删除客户数据
	@RequestMapping(value="/deleteBackUserInfo.action",method= RequestMethod.POST)
	@ResponseBody
	public Map<String,Object> deleteBackUserInfo(int deleteBackUserId) {
		System.out.println("删除的id-"+deleteBackUserId);
		backUserManagerService.deleteBackUserInfo(deleteBackUserId);
		Map<String,Object> responseMap=new HashMap<String, Object>();
		responseMap.put("returnCode", 200);
		return responseMap;
	}
	
	//添加客户数据（单笔）
	@RequestMapping(value="/addBackUserInfo.action",method= RequestMethod.POST)
	@ResponseBody
	public Map<String,Object> addBackUserInfo(String roleId,String uPhone,String userName,String uBackGroundAccount,String uBackGroundPsw) {
		System.out.println("---"+roleId);
		System.out.println("---"+uPhone);
		System.out.println("---"+userName);
		System.out.println("---"+uBackGroundAccount);
		System.out.println("---"+uBackGroundPsw);
		UserModel addUserModel = new UserModel();
		//若是客户经理 要特殊处理，直接把后天账号密码填入即可。
		if(!uPhone.trim().equals("") && uPhone!=null) {
			backUserManagerService.addSalesManInfo(uPhone, userName, uBackGroundAccount, uBackGroundPsw);
		}else {
			backUserManagerService.addBackUserInfo(userName,uBackGroundAccount,uBackGroundPsw);
		}
		addUserModel=backUserManagerService.queryBackUserByAccount(uBackGroundAccount);
		backUserManagerService.addBackUserRole(addUserModel.getUserId(), Integer.valueOf(roleId).intValue());
		//int userCount= Integer.valueOf(userManagerService.getUserCount(null)).intValue();
		Map<String,Object> responseMap=new HashMap<String, Object>();
		//responseMap.put("returnCode", 200);
		responseMap.put("returnCode", 200);
		return responseMap;
	}
	//
	//分配组员
	@RequestMapping(value="/distributeSalesMan.action",method= RequestMethod.GET)
	@ResponseBody
	public ArrayList<TreeNodeModel> distributeSalesMan(String teamLeader) {
		
		ArrayList<UserModel> allSalesManList=new ArrayList<UserModel>();
		ArrayList<UserModel> teamMateList=new ArrayList<UserModel>(); //queryNotDistribute
		ArrayList<UserModel> otherTeamMateList=new ArrayList<UserModel>(); //queryNotDistribute
		ArrayList<UserModel> notDistributeList=new ArrayList<UserModel>();
		allSalesManList	=	backUserManagerService.queryAllSalesMan();
		teamMateList = backUserManagerService.queryTeamMate(teamLeader);
		otherTeamMateList = backUserManagerService.queryOtherTeamMate(teamLeader);
		notDistributeList= backUserManagerService.queryNotDistribute();
		TreeNodeModel treeNodeModel = new TreeNodeModel();
		ArrayList<TreeNodeModel> tree=new ArrayList<TreeNodeModel>();
		ArrayList<TreeNodeModel> distributeSalesManList=new ArrayList<TreeNodeModel>();
		//将组内现有组员添加 并勾选
		for(int i=0;i<teamMateList.size();i++) {
			distributeSalesManList.add(new TreeNodeModel(teamMateList.get(i).getUserName()+"_"+teamMateList.get(i).getuBackGroundAccount(),""+teamMateList.get(i).getUserId(),true,false,null));
		}
		//将未分配的 客户经理添加 不勾选
		for(int i=0;i<notDistributeList.size();i++) {
			distributeSalesManList.add(new TreeNodeModel(notDistributeList.get(i).getUserName()+"_"+notDistributeList.get(i).getuBackGroundAccount(),""+notDistributeList.get(i).getUserId(),false,false,null));
		}
		//将其他组长下的组员添加 并勾选 并不可操作
		for(int i=0;i<otherTeamMateList.size();i++) {
			distributeSalesManList.add(new TreeNodeModel(otherTeamMateList.get(i).getUserName()+"_"+otherTeamMateList.get(i).getuBackGroundAccount(),""+otherTeamMateList.get(i).getUserId(),false,true,null));
		}
		//(String title, String value, boolean checked, boolean disabled, ArrayList<TreeNodeModel> data)
		tree.add(new TreeNodeModel("分配组员列表(已有组员为'已勾选',其他组的未'无法勾选')","",false,false,distributeSalesManList));
		return tree;
	}
	
	//进行分配客户经理
	@RequestMapping(value="/confirmDistributeSalesMan.action",method= RequestMethod.POST)
	@ResponseBody
	public  Map<String,Object> confirmDistributeSalesMan(String teamLeader,@RequestParam(value="clickedArray[]",required=false) String[] clickedArray) {
		System.out.println("teamLeader---"+teamLeader);
		backUserManagerService.clearTeamLeader(teamLeader);
		if(clickedArray!=null && clickedArray.length!=0) {
			for(int i=0;i<clickedArray.length;i++) {
				System.out.println("click---"+clickedArray[i]);
				backUserManagerService.clearTeamMate(clickedArray[i]);
				backUserManagerService.addTeamMate(teamLeader, clickedArray[i]);
			}
		}
		Map<String,Object> responseMap=new HashMap<String, Object>();
		responseMap.put("code", "200");
		return responseMap;
	}
	
	//校验客户经理手机号是否在公众号注册
	@RequestMapping(value="/verifyBackUserPhone.action",method= RequestMethod.GET)
	@ResponseBody
	public Map<String,Object> verifyBackUserPhone(String uPhone) {
		System.out.println("backUserPhone"+uPhone);
		String existCode=backUserManagerService.verifyBackUserPhone(uPhone);
		Map<String,Object> responseMap=new HashMap<String, Object>();
		System.out.println("----"+existCode);
		responseMap.put("code", existCode);
		return responseMap;
	}
	
	//校验客户数据列表
	@RequestMapping(value="/verifyBackUserAccount.action",method= RequestMethod.GET)
	@ResponseBody
	public Map<String,Object> verifyBackUserAccount(String uBackGroundAccount) {
		System.out.println("uBackGroundAccount"+uBackGroundAccount);
		String existCode=backUserManagerService.verifyBackUserAccount(uBackGroundAccount);
		Map<String,Object> responseMap=new HashMap<String, Object>();
		System.out.println("----"+existCode);
		responseMap.put("code", existCode);
		return responseMap;
	}
	
    @RequestMapping(value = "/downloadTemplet.action",method= RequestMethod.GET)
	@ResponseBody //,method= RequestMethod.POST
	public void downloadTemplet(HttpServletRequest request, HttpServletResponse response) throws IOException {

			FileInputStream ips = null;
			
			String filePath = "D:\\SourceTree\\Git仓库\\OfficialAccounts\\target\\classes\\templet\\TB_USER.xlsx";
			File file = new File(filePath);
			String fileName = file.getName();
			
			ips = new FileInputStream(file);
			
			response.setHeader("Content-disposition",
					"attachment;filename=" + new String(fileName.getBytes("gb2312"), "ISO8859-1"));// 设置文件头编码格式
			response.setContentType("APPLICATION/OCTET-STREAM;charset=UTF-8");// 设置类型
			response.setHeader("Cache-Control", "no-cache");// 设置头
			response.setDateHeader("Expires", 0);// 设置日期头
			
			response.getOutputStream();
			
			int len = 0;
			byte[] buffer = new byte[1024 * 10];
			while ((len = ips.read(buffer)) != -1) {
				response.getOutputStream().write(buffer, 0, len);
			}
			response.getOutputStream().flush();
			response.getOutputStream().close();
			System.out.println("end===");
	}
}
