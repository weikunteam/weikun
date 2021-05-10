package com.great.test;

import com.great.dao.UserLoginDao;
import org.junit.Test;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractJUnit4SpringContextTests;

import javax.annotation.Resource;

/**
 * @Author chenweiwei
 * @Date 2021-02-27 13:50
 * @Version 1.0
 */
@ContextConfiguration(locations={"classpath:applicationContext.xml"})
public class SqlTest extends AbstractJUnit4SpringContextTests {

    @Resource
    private UserLoginDao userLoginDao;

    @Test
    public void test(){
       String code = userLoginDao.getRecommendpeople("4464b8178");
       System.out.println(code);
    }

}
