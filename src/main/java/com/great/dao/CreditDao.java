package com.great.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface CreditDao {

    public void insertCredit(@Param("userId") String userId, @Param("loanAmount") String loanAmount,
                          @Param("checkState") String checkState, @Param("applyDate") String applyDate,
                          @Param("housingLoanType") String housingLoanType, @Param("housingLoanTerm") String housingLoanTerm,
                          @Param("warrantyType") String warrantyType, @Param("warrantyTerm") String warrantyTerm,
                          @Param("warrantyCount") String warrantyCount, @Param("accumulationFundTerm") String accumulationFundTerm,
                          @Param("accumulationFundAmount") String accumulationFundAmount,@Param("name")String name,
                          @Param("age") int age,@Param("sex")int sex,@Param("tel")String tel,@Param("type") String type
                          ,@Param("salesManId") int salesManId);
    public Integer getSalesManId(@Param("uRegRecommendPeople")String uRegRecommendPeople);
}
