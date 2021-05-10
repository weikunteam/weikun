package com.great.service;

import com.great.dao.ProductionDao;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * @Author chenweiwei
 * @Date 2021-03-12 23:52
 * @Version 1.0
 */
@Service
public class ProductionService {

    @Resource
    private ProductionDao productionDao;

    public String getImg(String productionNo,String userId){
        return productionDao.getImg(productionNo,userId);
    }

    public void saveImg(String productionNo,String userId,String path){
        productionDao.saveImg(productionNo,userId,path);
    }

    public void updateImg(String productionNo,String userId,String path){
        productionDao.updateImg(productionNo,userId,path);
    }

}
