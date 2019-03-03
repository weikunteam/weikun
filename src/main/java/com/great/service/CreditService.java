package com.great.service;

import javax.annotation.Resource;

import com.great.util.DateUtil;
import org.springframework.stereotype.Service;

import com.great.dao.CreditDao;

import java.util.Date;
import java.util.logging.SimpleFormatter;

@Service
public class CreditService {

    @Resource
    private CreditDao creditDao;

    public void insertCredit(String name, int age, String job, int sex, String houseRadio, String houseMonth,
                             String warrantyRadio, String warrantyMonth, String warrantyCount, String moneyYear,
                             String moneyNum, String loanAmount, String userId, String tel, String type) {
        Integer salesManId = creditDao.getSalesManId(userId);
        if (salesManId == null) {
            salesManId = 0;
        }
        creditDao.insertCredit(userId, loanAmount, "5", DateUtil.getDateTime(),
                houseRadio, houseMonth, warrantyRadio, warrantyMonth, warrantyCount, moneyYear, moneyNum
                , name, age, job, sex, tel, type, salesManId);
    }


}
