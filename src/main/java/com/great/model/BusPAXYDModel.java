package com.great.model;

import java.math.BigDecimal;

import org.codehaus.jackson.annotate.JsonProperty;

public class BusPAXYDModel {
	//@JsonProperty("PAXYDBusId")
	private Integer paxydBusId; //'平安新一贷业务id',
	private Integer userId;//'客户id',
	private Integer salesManId; //'客户经理员id',
	private Integer contractManId;//'签约经理id'
	private BigDecimal loanAmount;//'贷款金额',
	private Integer loanTerm;//'贷款期限',
	private Integer accrualType;//'利息分期类型',
	private BigDecimal accrualRate;//'利率',
	private Integer checkState; //'审核状态',
	private String applyDate;//'业务申请日期',
	private String loanStartDate;//'贷款开始日期',
	private String loanEndDate;// '贷款结束日期',
	private Integer housingLoanType;// '房贷类型',
	private Integer housingLoanTerm;//'房贷期限',
	private Integer warrantyType;//'保单类型',
	private Integer warrantyTerm;//'保单期限（月份）'
	private Integer warrantyCount;//'保单次数',
	private String accumulationFundAddress;//'公积金缴纳地址',
	private Integer accumulationFundTerm;//'公积金缴纳期限（月份）',
	private BigDecimal accumulationFundAmount;//'公积金缴纳金额',
	private Integer ownBusinessLicense;//'是否拥有营业执照'
	private String name;//贷款人姓名
	private Integer age;//贷款人年龄
	private Integer sex;//贷款人性别
	private String applicantTel;//贷款人手机号
	private String applicantJob;//贷款人类型（职业）
	private String salesManRemarkAndAdvice;// '客户经理申请备注以及建议'
	private Integer salesManAdviceProduct;// '客户经理意向产品（建议）1新一贷2兴业3中行4海尔5小额'
	private String contractManRemarkAndAdvice;// '签约经理申请备注以及建议'
	private Integer contractManAdviceProduct;// '签约经理意向产品（建议）1新一贷2兴业3中行4海尔5小额'
	private String applyFailReason;// '不可申请原因'
	private String applyRefuseReason;// '申请被拒绝原因'
	private Integer type;
	
	
	private UserModel userModel;//公众号对象（注册人）
	
	public BusPAXYDModel() {
		super();
	}



	public Integer getPaxydBusId() {
		return paxydBusId;
	}



	public void setPaxydBusId(Integer paxydBusId) {
		this.paxydBusId = paxydBusId;
	}



	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public Integer getSalesManId() {
		return salesManId;
	}

	public void setSalesManId(Integer salesManId) {
		this.salesManId = salesManId;
	}

	public BigDecimal getLoanAmount() {
		return loanAmount;
	}

	public void setLoanAmount(BigDecimal loanAmount) {
		this.loanAmount = loanAmount;
	}

	public Integer getLoanTerm() {
		return loanTerm;
	}

	public void setLoanTerm(Integer loanTerm) {
		this.loanTerm = loanTerm;
	}

	public Integer getAccrualType() {
		return accrualType;
	}

	public void setAccrualType(Integer accrualType) {
		this.accrualType = accrualType;
	}

	public BigDecimal getAccrualRate() {
		return accrualRate;
	}

	public void setAccrualRate(BigDecimal accrualRate) {
		this.accrualRate = accrualRate;
	}

	public Integer getCheckState() {
		return checkState;
	}

	public void setCheckState(Integer checkState) {
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

	public Integer getHousingLoanType() {
		return housingLoanType;
	}

	public void setHousingLoanType(Integer housingLoanType) {
		this.housingLoanType = housingLoanType;
	}

	public Integer getHousingLoanTerm() {
		return housingLoanTerm;
	}

	public void setHousingLoanTerm(Integer housingLoanTerm) {
		this.housingLoanTerm = housingLoanTerm;
	}

	public Integer getWarrantyType() {
		return warrantyType;
	}

	public void setWarrantyType(Integer warrantyType) {
		this.warrantyType = warrantyType;
	}

	public Integer getWarrantyTerm() {
		return warrantyTerm;
	}

	public void setWarrantyTerm(Integer warrantyTerm) {
		this.warrantyTerm = warrantyTerm;
	}

	public Integer getWarrantyCount() {
		return warrantyCount;
	}

	public void setWarrantyCount(Integer warrantyCount) {
		this.warrantyCount = warrantyCount;
	}

	public String getAccumulationFundAddress() {
		return accumulationFundAddress;
	}

	public void setAccumulationFundAddress(String accumulationFundAddress) {
		this.accumulationFundAddress = accumulationFundAddress;
	}

	public Integer getAccumulationFundTerm() {
		return accumulationFundTerm;
	}

	public void setAccumulationFundTerm(Integer accumulationFundTerm) {
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

	public Integer getSex() {
		return sex;
	}

	public void setSex(Integer sex) {
		this.sex = sex;
	}

	public String getApplicantTel() {
		return applicantTel;
	}

	public void setApplicantTel(String applicantTel) {
		this.applicantTel = applicantTel;
	}

	public Integer getContractManId() {
		return contractManId;
	}

	public void setContractManId(Integer contractManId) {
		this.contractManId = contractManId;
	}

	public Integer getOwnBusinessLicense() {
		return ownBusinessLicense;
	}

	public void setOwnBusinessLicense(Integer ownBusinessLicense) {
		this.ownBusinessLicense = ownBusinessLicense;
	}

	public String getApplicantJob() {
		return applicantJob;
	}

	public void setApplicantJob(String applicantJob) {
		this.applicantJob = applicantJob;
	}

	public String getSalesManRemarkAndAdvice() {
		return salesManRemarkAndAdvice;
	}

	public void setSalesManRemarkAndAdvice(String salesManRemarkAndAdvice) {
		this.salesManRemarkAndAdvice = salesManRemarkAndAdvice;
	}

	public Integer getSalesManAdviceProduct() {
		return salesManAdviceProduct;
	}

	public void setSalesManAdviceProduct(Integer salesManAdviceProduct) {
		this.salesManAdviceProduct = salesManAdviceProduct;
	}

	public String getContractManRemarkAndAdvice() {
		return contractManRemarkAndAdvice;
	}

	public void setContractManRemarkAndAdvice(String contractManRemarkAndAdvice) {
		this.contractManRemarkAndAdvice = contractManRemarkAndAdvice;
	}

	public Integer getContractManAdviceProduct() {
		return contractManAdviceProduct;
	}

	public void setContractManAdviceProduct(Integer contractManAdviceProduct) {
		this.contractManAdviceProduct = contractManAdviceProduct;
	}

	public String getApplyFailReason() {
		return applyFailReason;
	}

	public void setApplyFailReason(String applyFailReason) {
		this.applyFailReason = applyFailReason;
	}

	public String getApplyRefuseReason() {
		return applyRefuseReason;
	}

	public void setApplyRefuseReason(String applyRefuseReason) {
		this.applyRefuseReason = applyRefuseReason;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public Integer getType() {
		return type;
	}

	public void setType(Integer type) {
		this.type = type;
	}

	

}
