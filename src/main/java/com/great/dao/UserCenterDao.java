package com.great.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface UserCenterDao {

    public void updateUser(@Param("userName")String userName,@Param("age")String age
            ,@Param("job")String job,@Param("userId")String userId);
}
