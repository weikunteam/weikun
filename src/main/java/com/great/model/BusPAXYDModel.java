package com.great.model;

import java.math.BigDecimal;

public class BusPAXYDModel {

	private int PAXYDBusId; //'平安新一贷业务id',
	private int userId;//'客户id',
	private int salesManId; //'业务员id',
	private BigDecimal loanAmount;//'贷款金额',
	private int loanTerm;//'贷款期限',
	private int accrualType;//'利息分期类型',
	private BigDecimal accrualRate;//'利率',
	private int checkState; //'审核状态',
	private String applyDate;//'业务申请日期',
	private String loanStartDate;//'贷款开始日期',
	private String loanEndDate;// '贷款结束日期',
	private int housingLoanType;// '房贷类型',
	private int housingLoanTerm;//'房贷期限',
	private int warrantyType;//'保单类型',
	private int warrantyTerm;//'保单期限（月份）'
	private int warrantyCount;//'保单次数',
	private String accumulationFundAddress;//'公积金缴纳地址',
	private int accumulationFundTerm;//'公积金缴纳期限（月份）',
	private BigDecimal accumulationFundAmount;//'公积金缴纳金额',
	private String name;//贷款人姓名
	private int sex;//贷款人性别
	private String applicantTel;//贷款人手机号
	
	private UserModel userModel;//客户对象（注册人）
	
	public BusPAXYDModel() {
		super();
	}

	public int getPAXYDBusId() {
		return PAXYDBusId;
	}

	public void setPAXYDBusId(int pAXYDBusId) {
		PAXYDBusId = pAXYDBusId;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public int getSalesManId() {
		return salesManId;
	}

	public void setSalesManId(int salesManId) {
		this.salesManId = salesManId;
	}

	public BigDecimal getLoanAmount() {
		return loanAmount;
	}

	public void setLoanAmount(BigDecimal loanAmount) {
		this.loanAmount = loanAmount;
	}

	public int getLoanTerm() {
		return loanTerm;
	}

	public void setLoanTerm(int loanTerm) {
		this.loanTerm = loanTerm;
	}

	public int getAccrualType() {
		return accrualType;
	}

	public void setAccrualType(int accrualType) {
		this.accrualType = accrualType;
	}

	public BigDecimal getAccrualRate() {
		return accrualRate;
	}

	public void setAccrualRate(BigDecimal accrualRate) {
		this.accrualRate = accrualRate;
	}

	public int getCheckState() {
		return checkState;
	}

	public void setCheckState(int checkState) {
		this.checkState = checkState;
	}

	public String getApplyDate() {
		return applyDate;
	}

	public void setApplyDate(String applyDate) {
		this.applyDate = applyDate;
	}

	public String getLoanStartDate() {
		return loanStartDate;
	}

	public void setLoanStartDate(String loanStartDate) {
		this.loanStartDate = loanStartDate;
	}

	public String getLoanEndDate() {
		return loanEndDate;
	}

	public void setLoanEndDate(String loanEndDate) {
		this.loanEndDate = loanEndDate;
	}

	public int getHousingLoanType() {
		return housingLoanType;
	}

	public void setHousingLoanType(int housingLoanType) {
		this.housingLoanType = housingLoanType;
	}

	public int getHousingLoanTerm() {
		return housingLoanTerm;
	}

	public void setHousingLoanTerm(int housingLoanTerm) {
		this.housingLoanTerm = housingLoanTerm;
	}

	public int getWarrantyType() {
		return warrantyType;
	}

	public void setWarrantyType(int warrantyType) {
		this.warrantyType = warrantyType;
	}

	public int getWarrantyTerm() {
		return warrantyTerm;
	}

	public void setWarrantyTerm(int warrantyTerm) {
		this.warrantyTerm = warrantyTerm;
	}

	public int getWarrantyCount() {
		return warrantyCount;
	}

	public void setWarrantyCount(int warrantyCount) {
		this.warrantyCount = warrantyCount;
	}

	public String getAccumulationFundAddress() {
		return accumulationFundAddress;
	}

	public void setAccumulationFundAddress(String accumulationFundAddress) {
		this.accumulationFundAddress = accumulationFundAddress;
	}

	public int getAccumulationFundTerm() {
		return accumulationFundTerm;
	}

	public void setAccumulationFundTerm(int accumulationFundTerm) {
		this.accumulationFundTerm = accumulationFundTerm;
	}

	public BigDecimal getAccumulationFundAmount() {
		return accumulationFundAmount;
	}

	public void setAccumulationFundAmount(BigDecimal accumulationFundAmount) {
		this.accumulationFundAmount = accumulationFundAmount;
	}

	public UserModel getUserModel() {
		return userModel;
	}

	public void setUserModel(UserModel userModel) {
		this.userModel = userModel;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getSex() {
		return sex;
	}

	public void setSex(int sex) {
		this.sex = sex;
	}

	public String getApplicantTel() {
		return applicantTel;
	}

	public void setApplicantTel(String applicantTel) {
		this.applicantTel = applicantTel;
	}

	

}
