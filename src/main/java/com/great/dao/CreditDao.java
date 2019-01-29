package com.great.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface CreditDao {

    public void insertXyd(@Param("userId") String userId, @Param("loanAmount") String loanAmount,
                          @Param("checkState") String checkState, @Param("applyDate") String applyDate,
                          @Param("housingLoanType") String housingLoanType, @Param("housingLoanTerm") String housingLoanTerm,
                          @Param("warrantyType") String warrantyType, @Param("warrantyTerm") String warrantyTerm,
                          @Param("warrantyCount") String warrantyCount, @Param("accumulationFundTerm") String accumulationFundTerm,
                          @Param("accumulationFundAmount") String accumulationFundAmount);
}
