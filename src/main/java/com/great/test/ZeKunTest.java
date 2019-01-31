package com.great.test;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.great.model.BusPAXYDModel;
import com.great.service.BusPAXYDManagerService;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration(locations={"classpath:applicationContext.xml"})
public class ZeKunTest {
	@Resource
	private BusPAXYDManagerService busPAXYDManagerService;

	@Test	
	public void test() {
		ArrayList<BusPAXYDModel>list=busPAXYDManagerService.getBusPAXYDList(0,10, "183");
		System.out.println(list);
		for(int i=0;i<list.size();i++) {
			System.out.println(list.get(i).getUserModel().getuPhone()+"/"+(i+1));
		}
	}

}
