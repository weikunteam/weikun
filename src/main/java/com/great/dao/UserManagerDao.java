package com.great.dao;

import java.util.ArrayList;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import com.great.model.UserModel;

@Repository
public interface UserManagerDao {
	//����������ҳ��ѯ�ͻ�����  ����:zekun
	public ArrayList<UserModel> getUserList(@Param("queryInitCount")int queryInitCount,@Param("limit")int limit,@Param("name")String name) ;
	//��ȡ�ͻ����� ����:zekun
	public String getUserCount(@Param("name")String name);
	//�༭�ͻ���Ϣ ����:zekun
	public void editUserInfo(UserModel editUserInfo) ;
	//ɾ���ͻ���Ϣ ����:zekun
	public void deleteUserInfo(int deleteUserId) ;
	//�༭�ͻ���Ϣ�����ʣ� ����:zekun
	public void addUserInfo(UserModel addUserInfo) ;
	//��֤�ֻ���Ψһ��
	public String verifyUserPhone(@Param("userPhone")String userPhone);
}
