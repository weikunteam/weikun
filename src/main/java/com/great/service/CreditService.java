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

    public void insertXyd(String name, String age, String sex, String houseRadio, String houseMonth,
                          String warrantyRadio, String warrantyMonth, String warrantyCount, String moneyYear,
                          String moneyNum, String loanAmount, String userId) {
        creditDao.insertXyd(userId, loanAmount, "0", DateUtil.getDateTime(),
                houseRadio, houseMonth, warrantyRadio, warrantyMonth, warrantyCount, moneyYear, moneyNum);
    }

}
