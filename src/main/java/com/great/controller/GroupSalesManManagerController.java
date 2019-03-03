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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.great.model.BusPAXYDModel;
import com.great.model.ConditionModel;
import com.great.model.LayUITableResponseModel;
import com.great.model.RoleModel;
import com.great.model.UserModel;
import com.great.service.CustomerManagerService;
import com.great.service.GroupSalesManManagerService;
import com.great.service.UserManagerService;
import com.great.util.Ognl;
import com.sun.management.VMOption.Origin;
import com.sun.org.apache.bcel.internal.generic.NEW;

@Controller
@RequestMapping("/groupSalesManManager")
public class GroupSalesManManagerController {
	@Resource
	private GroupSalesManManagerService groupSalesManManagerService;
	
	
	//获取客户数据列表
	@RequestMapping(value="/getCustomerList.action",method= RequestMethod.GET)
	@ResponseBody
	public LayUITableResponseModel getCustomerList(String page,String limit,String teamLeader,String teamMate,ConditionModel condition) {
		System.out.println("page"+page);
		System.out.println("limit"+limit);
		System.out.println("teamLeader"+teamLeader);
		System.out.println("condition"+condition.getName());
		System.out.println("condition"+condition.getApplicantTel());
		System.out.println("condition"+condition.getCustomerState());
		System.out.println("condition"+condition.getBusSpeed());
		System.out.println("condition"+condition.getApplyDateStart());
		System.out.println("condition"+condition.getApplyDateEnd());
		
		int queryInitCount=(Integer.valueOf(page).intValue()-1)*Integer.valueOf(limit).intValue();
		ArrayList<BusPAXYDModel> customerList=groupSalesManManagerService.getCustomerList(queryInitCount, Integer.valueOf(limit).intValue(),teamLeader,teamMate,condition);
	
		int customerCount= Integer.valueOf(groupSalesManManagerService.getCustomerCount(teamLeader,teamMate,condition)).intValue();
		LayUITableResponseModel layUITableResponseModel=new LayUITableResponseModel(0,"ms",customerCount,customerList);
		return layUITableResponseModel;
	}
	
	//获取组内成员下拉框的列表
	@RequestMapping(value="/getGroupSalesManSelectList.action",method= RequestMethod.POST)
	@ResponseBody
	public Map<String,Object> getGroupSalesManSelectList(String teamLeader) {
		System.out.println("teamLeader---"+teamLeader);
		Map<String,Object> responseMap=new HashMap<String, Object>();
		ArrayList<UserModel>groupSalesManList=new ArrayList<UserModel>();
		groupSalesManList=groupSalesManManagerService.getGroupSalesManSelectList(teamLeader);
		if(groupSalesManList.size()!=0) {
			responseMap.put("returnCode", 200);
			responseMap.put("groupSalesManList", groupSalesManList);
		}else {
			responseMap.put("returnCode", 0);
		}
		return responseMap;
	}
	
	//编辑修改客户数据
	@RequestMapping(value="/editCustomerInfo.action",method= RequestMethod.POST)
	@ResponseBody
	public Map<String,Object> editCustomerInfo( @RequestBody BusPAXYDModel editCustomerBus) {
//		editCustomerBus.setSalesManRemarkAndAdvice((String)Ognl.transferDateType(editCustomerBus.getSalesManRemarkAndAdvice()));
		System.out.println(editCustomerBus.getPaxydBusId());
		System.out.println(editCustomerBus.getType());
		System.out.println(editCustomerBus.getApplyDate());
		System.out.println(editCustomerBus.getName());
		System.out.println(editCustomerBus.getApplicantTel());
		System.out.println(editCustomerBus.getSex());
		System.out.println(editCustomerBus.getApplicantJob());
		System.out.println(editCustomerBus.getHousingLoanType());
		System.out.println(editCustomerBus.getHousingLoanTerm());
		System.out.println(editCustomerBus.getWarrantyType());
		System.out.println(editCustomerBus.getWarrantyTerm());
		System.out.println(editCustomerBus.getWarrantyCount());
		System.out.println(editCustomerBus.getAccumulationFundAddress());
		System.out.println(editCustomerBus.getAccumulationFundTerm());
		System.out.println(editCustomerBus.getAccumulationFundAmount());
		System.out.println(editCustomerBus.getOwnBusinessLicense());
		System.out.println(editCustomerBus.getSalesManAdviceProduct());
		System.out.println(editCustomerBus.getSalesManRemarkAndAdvice());
		
		groupSalesManManagerService.editCustomerInfo(editCustomerBus);
		Map<String,Object> responseMap=new HashMap<String, Object>();
		responseMap.put("returnCode", 200);
		return responseMap;
	}
	
//	//通知客户
//	@RequestMapping(value="/callCustomer.action",method= RequestMethod.POST)
//	@ResponseBody
//	public Map<String,Object> callCustomer( @RequestBody BusPAXYDModel callCustomerBus) {
//		System.out.println("通知客户");
//		System.out.println(callCustomerBus.getPaxydBusId());
//		customerManagerService.callCustomer(callCustomerBus);
//		Map<String,Object> responseMap=new HashMap<String, Object>();
//		responseMap.put("returnCode", 200);
//		return responseMap;
//	}
//	
//	//添加客户数据（单笔）
//	@RequestMapping(value="/addCustomerInfo.action",method= RequestMethod.POST)
//	@ResponseBody
//	public Map<String,Object> addCustomerInfo(@RequestBody BusPAXYDModel addCustomerBus) {
//		//System.out.println(editCustomerBus.getPaxydBusId());
//		System.out.println(addCustomerBus.getType());
//		//System.out.println(editCustomerBus.getApplyDate());
//		System.out.println(addCustomerBus.getName());
//		System.out.println(addCustomerBus.getSex());
//		System.out.println(addCustomerBus.getApplicantJob());
//		System.out.println(addCustomerBus.getApplicantTel());
//		System.out.println(addCustomerBus.getHousingLoanType());
//		System.out.println(addCustomerBus.getHousingLoanTerm());
//		System.out.println(addCustomerBus.getWarrantyType());
//		System.out.println(addCustomerBus.getWarrantyTerm());
//		System.out.println(addCustomerBus.getWarrantyCount());
//		System.out.println(addCustomerBus.getAccumulationFundAddress());
//		System.out.println(addCustomerBus.getAccumulationFundTerm());
//		System.out.println(addCustomerBus.getAccumulationFundAmount());
//		System.out.println(addCustomerBus.getOwnBusinessLicense());
//		System.out.println(addCustomerBus.getSalesManAdviceProduct());
//		System.out.println(addCustomerBus.getSalesManRemarkAndAdvice());
//		//设置申请日期为此时此刻
//		addCustomerBus.setApplyDate(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));
//		//设置客户状态(未通知)
//		addCustomerBus.setCheckState(5);
//		
//		customerManagerService.addCustomerInfo(addCustomerBus);
//		//int userCount= Integer.valueOf(userManagerService.getUserCount(null)).intValue();
//		Map<String,Object> responseMap=new HashMap<String, Object>();
//		responseMap.put("returnCode", 200);
//		responseMap.put("returnCode", 200);
//		return responseMap;
//	}
//	
//	//公众号用户注册数量统计
//	@RequestMapping(value="/userRegisterStatistic.action",method= RequestMethod.POST)
//	@ResponseBody
//	public ArrayList<Integer> userRegisterStatistic(@RequestParam(value="dateArray[]") String[] dateArray ) {
//		//System.out.println("userPhone"+userPhone);
//		ArrayList<Integer> dataList = new ArrayList<Integer>();
//		for(int i=0;i<dateArray.length;i++) {
//			System.out.println(dateArray[i]);
//			Integer count=customerManagerService.userRegisterStatistic(dateArray[i]);
//			System.out.println("---"+count);
//			dataList.add(count);
//		}
//		//System.out.println("----"+existCode);
//		//responseMap.put("code", existCode);
//		return dataList;
//	}
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
