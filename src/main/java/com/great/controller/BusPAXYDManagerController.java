package com.great.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.great.model.BusPAXYDModel;
import com.great.model.LayUITableResponseModel;
import com.great.model.UserModel;
import com.great.service.BusPAXYDManagerService;
import com.great.service.UserManagerService;

@Controller
@RequestMapping("/PAXYDBusManager")
public class BusPAXYDManagerController {
	@Resource
	private BusPAXYDManagerService busPAXYDManagerService;
	
	//获取"平安新一代"业务数据列表
	@RequestMapping(value="/getBusPAXYDList.action",method= RequestMethod.GET)
	@ResponseBody
	public LayUITableResponseModel getBusPAXYDList(String page,String limit,String name) {
		System.out.println("page"+page);
		System.out.println("limit"+limit);
		System.out.println("name"+name);
		int queryInitCount=(Integer.valueOf(page).intValue()-1)*Integer.valueOf(limit).intValue();
		ArrayList<BusPAXYDModel> allBusPAXYDList=busPAXYDManagerService.getBusPAXYDList(queryInitCount, Integer.valueOf(limit).intValue(),name);
		int busPAXYDCount= Integer.valueOf(busPAXYDManagerService.getBusPAXYDCount(name)).intValue();
		//组装前端Table字段
		ArrayList<Map<String,Object>> busPAXYDList=new ArrayList<>();
		for(int i=0;i<allBusPAXYDList.size();i++) {
			Map<String,Object> filedMap=new HashMap<String, Object>();
			BusPAXYDModel busPAXYDModel=allBusPAXYDList.get(i);
			filedMap.put("PAXYDBusId", busPAXYDModel.getPAXYDBusId());
			filedMap.put("uPhone", busPAXYDModel.getUserModel().getuPhone());
			filedMap.put("salesManId", busPAXYDModel.getSalesManId());
			filedMap.put("loanAmount", busPAXYDModel.getLoanAmount());
			filedMap.put("loanTerm", busPAXYDModel.getLoanTerm());
			filedMap.put("accrualType", busPAXYDModel.getAccrualType());
			filedMap.put("accrualRate", busPAXYDModel.getAccrualRate());
			filedMap.put("applyDate", busPAXYDModel.getApplyDate());
			filedMap.put("housingLoanType", busPAXYDModel.getHousingLoanType());
			filedMap.put("housingLoanTerm", busPAXYDModel.getHousingLoanTerm());
			filedMap.put("warrantyType", busPAXYDModel.getWarrantyType());
			filedMap.put("warrantyTerm", busPAXYDModel.getWarrantyTerm());
			filedMap.put("warrantyCount", busPAXYDModel.getWarrantyCount());
			filedMap.put("accumulationFundAddress", busPAXYDModel.getAccumulationFundAddress());
			filedMap.put("accumulationFundTerm", busPAXYDModel.getAccumulationFundTerm());
			filedMap.put("accumulationFundAmount", busPAXYDModel.getAccumulationFundAmount());
			filedMap.put("checkState", busPAXYDModel.getCheckState());
			filedMap.put("name", busPAXYDModel.getName());
			filedMap.put("sex", busPAXYDModel.getSex());
			filedMap.put("applicantTel", busPAXYDModel.getApplicantTel());
			busPAXYDList.add(filedMap);
		}
		LayUITableResponseModel layUITableResponseModel=new LayUITableResponseModel(0,"ms",busPAXYDCount,busPAXYDList);
		return layUITableResponseModel;
	}

}
