<<<<<<< HEAD
package com.great.test;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.great.model.BusPAXYDModel;
import com.great.model.PermissionModel;
import com.great.model.UserModel;
import com.great.service.BackLoginService;
import com.great.service.BusPAXYDManagerService;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration(locations={"classpath:applicationContext.xml"})
public class ZeKunTest {
	@Resource
	private BusPAXYDManagerService busPAXYDManagerService;
	@Resource
	private BackLoginService backLoginService;
/*	@Test	
	public void test() {
		ArrayList<BusPAXYDModel>list=busPAXYDManagerService.getBusPAXYDList(0,10, "183");
		System.out.println(list);
		for(int i=0;i<list.size();i++) {
			System.out.println(list.get(i).getUserModel().getuPhone()+"/"+(i+1));
		}
	}*/
	
	@Test	
	public void test() {
		UserModel userModel=backLoginService.getUserBackGroundInfo("chenzekun");
		
		ArrayList<PermissionModel>perList=userModel.getRoleList().get(0).getPermissionList();
			for(int i=0;i<perList.size();i++) {
			if(perList.get(i).getpId()==0) {
				perList.get(i).setOwnChild(0);
				System.out.println("====/"+perList.get(i).getPermissionName());
				
				for(int j=0;j<perList.size();j++) {
					if(perList.get(j).getpId()==perList.get(i).getPermissionId()) {
						perList.get(i).setOwnChild(1);
						System.out.println(perList.get(j).getPermissionName());
					}
				}
				
			}
		}
	}
}
=======
//package com.great.test;
//
//import java.util.ArrayList;
//
//import javax.annotation.Resource;
//
//import org.junit.Test;
//import org.junit.runner.RunWith;
//import org.springframework.test.context.ContextConfiguration;
//import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
//import org.springframework.test.context.web.WebAppConfiguration;
//
//import com.great.model.BusPAXYDModel;
//import com.great.service.BusPAXYDManagerService;
//
//@RunWith(SpringJUnit4ClassRunner.class)
//@WebAppConfiguration
//@ContextConfiguration(locations={"classpath:applicationContext.xml"})
//public class ZeKunTest {
//	@Resource
//	private BusPAXYDManagerService busPAXYDManagerService;
//
//	@Test
//	public void test() {
//		ArrayList<BusPAXYDModel>list=busPAXYDManagerService.getBusPAXYDList(0,10, "183");
//		System.out.println(list);
//		for(int i=0;i<list.size();i++) {
//			System.out.println(list.get(i).getUserModel().getuPhone()+"/"+(i+1));
//		}
//	}
//
//}
>>>>>>> 8d4ddc6216d32c9972c20f0565db382840259b96
