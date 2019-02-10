package com.great.service;

import com.great.dao.CustomListDao;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

@Service
public class CustomListService {

    @Resource
    private CustomListDao customListDao;

    public List<Map<String,Object>> getList(String tel){
        return  customListDao.listCustom(tel);
    }
}
