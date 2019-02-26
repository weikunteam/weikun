package com.great.dao;

import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface CustomListDao {

    public List<Map<String,Object>> listCustom(@Param("userId") String userId,@Param("tel") String tel);
}
