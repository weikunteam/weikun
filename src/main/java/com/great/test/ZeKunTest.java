package com.great.test;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import com.great.model.PermissionModel;
import com.great.model.RoleModel;
import com.great.model.UserModel;
import com.great.service.BackLoginService;
import com.great.service.BusPAXYDManagerService;
import com.great.service.SystemManagerService;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration(locations={"classpath:applicationContext.xml"})
public class ZeKunTest {
	@Resource
	private BusPAXYDManagerService busPAXYDManagerService;
	@Resource
	private BackLoginService backLoginService;
	@Resource
	private SystemManagerService systemManagerService;
	
	@Test	
	public void test() {
		String currentDate = new SimpleDateFormat("yyyy-MM-dd").format(new Date()); 
		String year = currentDate.split("-")[0];
		String month = currentDate.split("-")[1];
		String day = currentDate.split("-")[2];
//		if(15>) {
//			System.out.println("*************");
//		}
		String newDate = year+"-"+month+"-"+"02";
		System.out.println("---"+year+"---");
		System.out.println("---"+month+"---");
		System.out.println("---"+day+"---");
		System.out.println("---"+newDate+"---");
		System.out.println("---"+deleteZero("29")+"---");
		System.out.println("---"+addZero("01")+"---");
		System.out.println("---"+(Integer.parseInt(year)+1)+"---");
	}
	//@Test
	public String deleteZero(String test) {
		//System.out.println("---"+ +"---");
		if(test!=null && !test.trim().equals("")) {
			if(firtCharIsOwnZero(test)) {
				return test.substring(1, 2);
			}else {
				return test;
			}
		}else {
			return "";
		}
	}
	
	public String addZero(String test) {
		//System.out.println("---"+ +"---");
		if(test!=null && !test.trim().equals("")) {
			if(test.length()==1) {//个位数
				return "0"+test;
			}
			return test;
		}else {
			return "";
		}
	}
	
	public boolean firtCharIsOwnZero(String test) {
		if(test!=null && !test.trim().equals("")) {
			if(test.substring(0, 1).equals("0")) {
				return true;
			}else {
				return false;
			}
			
		}else {
			return false;
		}
	}
	
//	@Test	
//	public void test() {
//		UserModel userModel=backLoginService.getUserBackGroundInfo("chenzekun");
//		
//		ArrayList<PermissionModel>perList=userModel.getRoleList().get(0).getPermissionList();
//			for(int i=0;i<perList.size();i++) {
//			if(perList.get(i).getpId()==0) {
//				perList.get(i).setOwnChild(0);
//				System.out.println("====/"+perList.get(i).getPermissionName());
//				
//				for(int j=0;j<perList.size();j++) {
//					if(perList.get(j).getpId()==perList.get(i).getPermissionId()) {
//						perList.get(i).setOwnChild(1);
//						System.out.println(perList.get(j).getPermissionName());
//					}
//				}
//				
//			}
//		}
//	}
//	@Test	
//	public void test() {
//		try {
//			File f = new File("");
//			String filePath = f.getCanonicalPath()+"\\target\\classes\\templet\\TB_USER.xlsx";
//			File file = new File(filePath);
//			String fileName=file.getName();
//			System.out.println(file.length());
//			System.out.println(fileName);
//		} catch (IOException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		RoleModel roleModel=systemManagerService.getRole(3);
//		System.out.println(roleModel);
//		System.out.println("1");
/*		ArrayList<RoleModel>roleList=systemManagerService.getAllRole();
		for(int i=0;i<roleList.size();i++) {
			System.out.println(roleList.get(i).getRoleName());
			for(int j=0;j<roleList.get(i).getPermissionList().size();j++) {
				System.out.println("权限有----"+roleList.get(i).getPermissionList().get(j).getPermissionName());
			}
			
		}*/
	}



