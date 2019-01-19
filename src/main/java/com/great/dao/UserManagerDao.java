package com.great.dao;

import java.util.ArrayList;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import com.great.model.UserModel;

@Repository
public interface UserManagerDao {

	//����������ҳ��ѯ�ͻ�����  ����:zekun
	public ArrayList<UserModel> getUserList(@Param("pageX")String page,@Param("limitX")String limit) ;

}
