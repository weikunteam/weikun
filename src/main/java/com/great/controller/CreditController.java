package com.great.controller;

import com.great.service.CreditService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.great.model.ResponseApi;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/credit")

public class CreditController {
    @Resource
    private CreditService creditService;

    @SuppressWarnings("unchecked")
	@RequestMapping(value="/xinyidaiHandle",method= RequestMethod.POST)
    @ResponseBody
    public ResponseApi xydHandle(String name, int age, int sex, String houseRadio, String houseMonth,
                                 String warrantyRadio, String warrantyMonth, String warrantyCount, String moneyYear,
                                 String moneyNum, String loanAmount,HttpServletRequest request) {
    	Map<String, Object> user = (Map<String, Object>) request.getSession().getAttribute("user");
    	creditService.insertXyd(name, age, sex, houseRadio, houseMonth, warrantyRadio,
    			warrantyMonth, warrantyCount, moneyYear, moneyNum, loanAmount,
    			 user.get("userId").toString());
        return new ResponseApi("1", "申请成功");

    }

}
