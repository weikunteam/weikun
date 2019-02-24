package com.great.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.great.model.BusPAXYDModel;
import com.great.model.ConditionModel;
import com.great.model.LayUITableResponseModel;
import com.great.model.UserModel;
import com.great.service.ContractManagerService;
import com.great.service.CustomerManagerService;
import com.great.service.UserManagerService;
import com.great.util.Ognl;
import com.sun.management.VMOption.Origin;
import com.sun.org.apache.bcel.internal.generic.NEW;

@Controller
@RequestMapping("/contractManager")
public class ContractManagerController {
	@Resource
	private ContractManagerService contractManagerService;
	
	
	//获取客户数据列表
	@RequestMapping(value="/getContractList.action",method= RequestMethod.GET)
	@ResponseBody
	public LayUITableResponseModel getContractList(String page,String limit,ConditionModel condition) {
		System.out.println("page"+page);
		System.out.println("limit"+limit);
		//System.out.println("salesManId"+salesManId);
		System.out.println("condition"+condition.getName());
		System.out.println("condition"+condition.getApplicantTel());
		System.out.println("condition"+condition.getBusSpeed());
		System.out.println("condition"+condition.getApplyDateStart());
		System.out.println("condition"+condition.getApplyDateEnd());
		
		int queryInitCount=(Integer.valueOf(page).intValue()-1)*Integer.valueOf(limit).intValue();
		ArrayList<BusPAXYDModel> customerList=contractManagerService.getContractList(queryInitCount, Integer.valueOf(limit).intValue(),condition);
		System.out.println("签约列表返回");
		int customerCount= Integer.valueOf(contractManagerService.getContractCount(condition)).intValue();
		LayUITableResponseModel layUITableResponseModel=new LayUITableResponseModel(0,"ms",customerCount,customerList);
		return layUITableResponseModel;
	}
	
	//j业务处理
	@RequestMapping(value="/contractBusHandle.action",method= RequestMethod.POST)
	@ResponseBody
	public Map<String,Object> contractBusHandle( @RequestBody BusPAXYDModel contractBus) {
		contractManagerService.contractBusHandle(contractBus);
		Map<String,Object> responseMap=new HashMap<String, Object>();
		responseMap.put("returnCode", 200);
		return responseMap;
	}
	
	//接待客户
	@RequestMapping(value="/receiveCustomer.action",method= RequestMethod.POST)
	@ResponseBody
	public Map<String,Object> receiveCustomer( @RequestBody BusPAXYDModel receiveCustomerBus) {
		System.out.println("接待客户");
		System.out.println(receiveCustomerBus.getPaxydBusId());
		contractManagerService.receiveCustomer(receiveCustomerBus);
		Map<String,Object> responseMap=new HashMap<String, Object>();
		responseMap.put("returnCode", 200);
		return responseMap;
	}
	
	//接待客户
	@RequestMapping(value="/currentBusIsHandle.action",method= RequestMethod.GET)
	@ResponseBody
	public Map<String,Object> currentBusIsHandle( Integer paxydBusId,Integer contractManId) {
		System.out.println("当前检验的业务id---"+paxydBusId);
		System.out.println("当前检验的签约经理id---"+contractManId);
		Map<String,Object> responseMap=new HashMap<String, Object>();
		BusPAXYDModel currentBus=contractManagerService.queryBusById(paxydBusId);
		//若无签约经理在处理 或 处理人为本人 则可处理
		if(currentBus.getContractManId()==null || currentBus.getContractManId()==contractManId) {
			responseMap.put("returnCode", 200);
		}else{
			responseMap.put("returnCode", 0);
		}
		responseMap.put("currentBus", currentBus);
		
		
		return responseMap;
	}
//	
	//添加客户数据（单笔）
	@RequestMapping(value="/addContractBusInfo.action",method= RequestMethod.POST)
	@ResponseBody
	public Map<String,Object> addContractBusInfo(@RequestBody BusPAXYDModel addContractBus) {
		//设置申请日期为此时此刻
		addContractBus.setApplyDate(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));
		//设置客户状态(未操作)
		addContractBus.setCheckState(4);
		
		contractManagerService.addContractBusInfo(addContractBus);
		//int userCount= Integer.valueOf(userManagerService.getUserCount(null)).intValue();
		Map<String,Object> responseMap=new HashMap<String, Object>();
		responseMap.put("returnCode", 200);
		responseMap.put("returnCode", 200);
		return responseMap;
	}
//	
//	//验证用户手机号
//	@RequestMapping(value="/verifyUserPhone.action",method= RequestMethod.GET)
//	@ResponseBody
//	public Map<String,Object> verifyUserPhone(String userPhone) {
//		System.out.println("userPhone"+userPhone);
//		String existCode=customerManagerService.verifyUserPhone(userPhone);
//		Map<String,Object> responseMap=new HashMap<String, Object>();
//		System.out.println("----"+existCode);
//		responseMap.put("code", existCode);
//		return responseMap;
//	}
	
}
