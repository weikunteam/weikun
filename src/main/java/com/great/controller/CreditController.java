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


	@RequestMapping(value="/xinyidaiHandle",method= RequestMethod.POST)
    @ResponseBody
    public ResponseApi xinyidaiHandle(String name, int age, int sex, String houseRadio, String houseMonth,
                                 String warrantyRadio, String warrantyMonth, String warrantyCount, String moneyYear,
                                 String moneyNum, String loanAmount,HttpServletRequest request,String tel) {
    	Map<String, Object> user = (Map<String, Object>) request.getSession().getAttribute("user");
    	creditService.insertCredit(name, age, sex, houseRadio, houseMonth, warrantyRadio,
    			warrantyMonth, warrantyCount, moneyYear, moneyNum, loanAmount,
    			 user.get("userId").toString(),tel,"1");
        return new ResponseApi("1", "申请成功");

    }

    @RequestMapping(value="/xingyeHandle",method= RequestMethod.POST)
    @ResponseBody
    public ResponseApi xingyeHandle(String name, int age, int sex, String houseRadio, String houseMonth,
                                 String warrantyRadio, String warrantyMonth, String warrantyCount, String moneyYear,
                                 String moneyNum, String loanAmount,HttpServletRequest request,String tel) {
        Map<String, Object> user = (Map<String, Object>) request.getSession().getAttribute("user");
        creditService.insertCredit(name, age, sex, houseRadio, houseMonth, warrantyRadio,
                warrantyMonth, warrantyCount, moneyYear, moneyNum, loanAmount,
                user.get("userId").toString(),tel,"2");
        return new ResponseApi("1", "申请成功");

    }

    @RequestMapping(value="/zhonghangHandle",method= RequestMethod.POST)
    @ResponseBody
    public ResponseApi zhonghangHandle(String name, int age, int sex, String houseRadio, String houseMonth,
                                String warrantyRadio, String warrantyMonth, String warrantyCount, String moneyYear,
                                String moneyNum, String loanAmount,HttpServletRequest request,String tel) {
        Map<String, Object> user = (Map<String, Object>) request.getSession().getAttribute("user");
        creditService.insertCredit(name, age, sex, houseRadio, houseMonth, warrantyRadio,
                warrantyMonth, warrantyCount, moneyYear, moneyNum, loanAmount,
                user.get("userId").toString(),tel,"3");
        return new ResponseApi("1", "申请成功");

    }

    @RequestMapping(value="/haierHandle",method= RequestMethod.POST)
    @ResponseBody
    public ResponseApi haierHandle(String name, int age, int sex, String houseRadio, String houseMonth,
                                String warrantyRadio, String warrantyMonth, String warrantyCount, String moneyYear,
                                String moneyNum, String loanAmount,HttpServletRequest request,String tel) {
        Map<String, Object> user = (Map<String, Object>) request.getSession().getAttribute("user");
        creditService.insertCredit(name, age, sex, houseRadio, houseMonth, warrantyRadio,
                warrantyMonth, warrantyCount, moneyYear, moneyNum, loanAmount,
                user.get("userId").toString(),tel,"4");
        return new ResponseApi("1", "申请成功");

    }

    @RequestMapping(value="/smallamountHandle",method= RequestMethod.POST)
    @ResponseBody
    public ResponseApi smallamountHandle(String name, int age, int sex, String houseRadio, String houseMonth,
                                String warrantyRadio, String warrantyMonth, String warrantyCount, String moneyYear,
                                String moneyNum, String loanAmount,HttpServletRequest request,String tel) {
        Map<String, Object> user = (Map<String, Object>) request.getSession().getAttribute("user");
        creditService.insertCredit(name, age, sex, houseRadio, houseMonth, warrantyRadio,
                warrantyMonth, warrantyCount, moneyYear, moneyNum, loanAmount,
                user.get("userId").toString(),tel,"5");
        return new ResponseApi("1", "申请成功");

    }

}
