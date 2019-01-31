package com.great.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.great.model.BusPAXYDModel;

@Repository
public interface BusPAXYDManagerDao {

	//����������ҳ��ѯ"ƽ����һ��"ҵ������  ����:zekun
	public ArrayList<BusPAXYDModel> getBusPAXYDList(@Param("queryInitCount")int queryInitCount,@Param("limit")int limit,@Param("name")String name) ;
	//��ȡ"ƽ����һ��"ҵ������������ ����:zekun
	public String getBusPAXYDCount(@Param("name")String name);

}
