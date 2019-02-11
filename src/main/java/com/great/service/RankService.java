package com.great.service;

import com.great.dao.RankDao;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

@Service
public class RankService {


    @Resource
    private RankDao rankDao;
    public List<Map<String,Object>> listRank(){
        return  rankDao.listRank();
    }

}
