package com.great.service;

import com.great.dao.UserCenterDao;
import com.great.dao.UserLoginDao;
import com.great.util.DateUtil;
import com.great.util.SendCodeUtil;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

@Service
public class UserCenterService {
    @Resource
    private UserCenterDao userCenterDao;
    @Resource
    private UserLoginDao userLoginDao;

    public void updateUser(String userName, String age, String job, String userId) {
        userCenterDao.updateUser(userName, age, job, userId);
    }

    public Map<String, Object> getUser(String userId) {
        return userLoginDao.getUserById(userId);
    }

    public List<Map<String, Object>> listService(String userId, String searchText) {
        return userCenterDao.listService(userId, searchText);
    }

    public void suggest(String id, String suggestion) {
        userCenterDao.updateSuggestion(id, suggestion);
    }

    public List<Map<String, Object>> myService(String userId) {
        return userCenterDao.myService(userId);
    }

    public boolean updateTel(String uPhone, String code, String userId) {
        try {
            if (SendCodeUtil.checkCode(uPhone, code)) {
                userCenterDao.updateUserTel(userId, uPhone);
                return true;
            } else {
                return false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public void insertObjection(String userId, String objection) {
        userCenterDao.insertObjection(userId, objection, DateUtil.getDateTime(), 0);
    }

    public void insertWithdraw(String userId,String card,String name,String amount){
        userCenterDao.insertWithdraw(userId, card, name, 0,amount);
    }
}
