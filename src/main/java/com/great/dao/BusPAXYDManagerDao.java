package com.great.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.great.model.BusPAXYDModel;

@Repository
public interface BusPAXYDManagerDao {

	//带条件、分页查询"平安新一代"业务数据  作者:zekun
	public ArrayList<BusPAXYDModel> getBusPAXYDList(@Param("queryInitCount")int queryInitCount,@Param("limit")int limit,@Param("name")String name) ;
	//获取"平安新一代"业务数据总数量 作者:zekun
	public String getBusPAXYDCount(@Param("name")String name);

}
