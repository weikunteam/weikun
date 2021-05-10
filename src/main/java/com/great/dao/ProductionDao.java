package com.great.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

/**
 * @Author chenweiwei
 * @Date 2021-03-07 00:46
 * @Version 1.0
 */
@Repository
public interface ProductionDao {
    String getImg(@Param("productionNo")String productionNo,@Param("userId")String userId);

    void saveImg(@Param("productionNo")String productionNo,@Param("userId")String userId,@Param("path")String path);

    void updateImg(@Param("productionNo")String productionNo,@Param("userId")String userId,@Param("path")String path);
}
