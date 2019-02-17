package com.great.service;

import com.great.dao.UserCenterDao;
import com.great.dao.UserLoginDao;
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

    public void updateUser(String userName,String age,String job,String userId){
        userCenterDao.updateUser(userName, age, job, userId);
    }

    public Map<String,Object> getUser(String tel){
        return  userLoginDao.getUser(tel);
    }

    public List<Map<String,Object>> listService(String userId){
     return userCenterDao.listService(userId);
    }

    public void suggest(String id,String suggestion){
        userCenterDao.updateSuggestion(id, suggestion);
    }
}
