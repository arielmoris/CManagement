package com.cms.dto;

import java.math.BigDecimal;

public class ChangeAgentBalanceDto {
	private String targetUserID;
	private String mgrFullName;
	private BigDecimal balance;	
	private String refId; 
	private BigDecimal tranAmount;
	private String tranType; 
	
	public String getTargetUserID() {
		return targetUserID;
	}
	public void setTargetUserID(String targetUserID) {
		this.targetUserID = targetUserID;
	}
	public String getMgrFullName() {
		return mgrFullName;
	}
	public void setMgrFullName(String mgrFullName) {
		this.mgrFullName = mgrFullName;
	}
	public BigDecimal getBalance() {
		return balance;
	}
	public void setBalance(BigDecimal balance) {
		this.balance = balance;
	}
	public String getRefId() {
		return refId;
	}
	public void setRefId(String refId) {
		this.refId = refId;
	}
	public BigDecimal getTranAmount() {
		return tranAmount;
	}
	public void setTranAmount(BigDecimal tranAmount) {
		this.tranAmount = tranAmount;
	}
	public String getTranType() {
		return tranType;
	}
	public void setTranType(String tranType) {
		this.tranType = tranType;
	}
	
	
}
