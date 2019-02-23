package com.great.dao;

import com.great.model.WithdrawModel;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public interface UserCenterDao {

    public void updateUser(@Param("userName") String userName, @Param("age") String age
            , @Param("job") String job, @Param("userId") String userId);

    public List<Map<String, Object>> listService(@Param("userId") String userId, @Param("searchText") String searchText);

    public void updateSuggestion(@Param("paxydBusId") String paxydBusId, @Param("suggestion") String suggestion);

    public List<Map<String, Object>> myService(@Param("userId") String userId);

    public void updateUserTel(@Param("userId") String userId, @Param("uPhone") String uPhone);

    public void insertObjection(@Param("userId") String userId, @Param("objection") String objection,
                                @Param("submitDate") String submitDate, @Param("handleState") Integer handleState);

    public void insertWithdraw(@Param("userId") String userId, @Param("card") String card,
                                @Param("name") String name, @Param("state") Integer state,
                               @Param("amount") String amount);

    List<WithdrawModel> withdrawList(@Param("userId") String userId);
}
