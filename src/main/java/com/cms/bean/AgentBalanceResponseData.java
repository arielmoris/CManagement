package com.cms.bean;

import java.math.BigDecimal;

public class AgentBalanceResponseData extends ResponseData{
	
	private BigDecimal accountBalance;
	private String targetAgentID;
	private String tranType;
	private BigDecimal tranAmount;
	private String refID;
	public BigDecimal getAccountBalance() {
		return accountBalance;
	}
	public void setAccountBalance(BigDecimal accountBalance) {
		this.accountBalance = accountBalance;
	}
	public String getTargetAgentID() {
		return targetAgentID;
	}
	public void setTargetAgentID(String targetAgentID) {
		this.targetAgentID = targetAgentID;
	}
	public String getTranType() {
		return tranType;
	}
	public void setTranType(String tranType) {
		this.tranType = tranType;
	}
	public BigDecimal getTranAmount() {
		return tranAmount;
	}
	public void setTranAmount(BigDecimal tranAmount) {
		this.tranAmount = tranAmount;
	}
	public String getRefID() {
		return refID;
	}
	public void setRefID(String refID) {
		this.refID = refID;
	}
}
