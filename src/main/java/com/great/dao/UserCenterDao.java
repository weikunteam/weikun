package com.great.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public interface UserCenterDao {

    public void updateUser(@Param("userName")String userName,@Param("age")String age
            ,@Param("job")String job,@Param("userId")String userId);
    public List<Map<String,Object>> listService(@Param("userId")String userId,@Param("searchText")String searchText);

    public void updateSuggestion(@Param("paxydBusId")String paxydBusId,@Param("suggestion")String suggestion);

    public List<Map<String,Object>> myService(@Param("userId")String userId);

    public void updateUserTel(@Param("userId")String userId,@Param("uPhone")String uPhone);
}
