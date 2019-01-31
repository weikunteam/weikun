package com.great.model;

import java.math.BigDecimal;

public class BusPAXYDModel {

	private int PAXYDBusId; //'ƽ����һ��ҵ��id',
	private int userId;//'�ͻ�id',
	private int salesManId; //'ҵ��Աid',
	private BigDecimal loanAmount;//'������',
	private int loanTerm;//'��������',
	private int accrualType;//'��Ϣ��������',
	private BigDecimal accrualRate;//'����',
	private int checkState; //'���״̬',
	private String applyDate;//'ҵ����������',
	private String loanStartDate;//'���ʼ����',
	private String loanEndDate;// '�����������',
	private int housingLoanType;// '��������',
	private int housingLoanTerm;//'��������',
	private int warrantyType;//'��������',
	private int warrantyTerm;//'�������ޣ��·ݣ�'
	private int warrantyCount;//'��������',
	private String accumulationFundAddress;//'��������ɵ�ַ',
	private int accumulationFundTerm;//'������������ޣ��·ݣ�',
	private BigDecimal accumulationFundAmount;//'��������ɽ��',
	private String name;//����������
	private int sex;//�������Ա�
	private String applicantTel;//�������ֻ���
	
	private UserModel userModel;//�ͻ�����ע���ˣ�
	
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
