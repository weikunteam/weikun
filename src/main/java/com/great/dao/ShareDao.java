package com.great.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.Map;

@Repository
public interface ShareDao {

    public Map<String,Object> getLastJsApi();

    public void update(@Param("timestamp")String timestamp,@Param("jsApi")String jsApi);
}
