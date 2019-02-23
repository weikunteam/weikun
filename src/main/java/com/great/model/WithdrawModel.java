package com.great.model;

import org.springframework.stereotype.Component;

import java.math.BigDecimal;

public class WithdrawModel {
    private Integer id;
    private Integer userId;
    private String withdrawCard;
    private String withdrawName;
    private Integer withdrawState;
    private String reason;
    private BigDecimal amount;
    private String state;
    private String applyDate;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getWithdrawCard() {
        return withdrawCard;
    }

    public void setWithdrawCard(String withdrawCard) {
        this.withdrawCard = withdrawCard;
    }

    public String getWithdrawName() {
        return withdrawName;
    }

    public void setWithdrawName(String withdrawName) {
        this.withdrawName = withdrawName;
    }

    public Integer getWithdrawState() {
        return withdrawState;
    }

    public void setWithdrawState(Integer withdrawState) {
        this.withdrawState = withdrawState;
    }

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }

    public BigDecimal getAmount() {
        return amount;
    }

    public void setAmount(BigDecimal amount) {
        this.amount = amount;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getApplyDate() {
        return applyDate;
    }

    public void setApplyDate(String applyDate) {
        this.applyDate = applyDate;
    }
}
