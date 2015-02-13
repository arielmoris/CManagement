package com.cms.bean;

public class AgentCreditTranResponseData {
	private String accountBalance;
	private String subAccountBalance;
	private String tranType;
	private String amount;
	public String getAccountBalance() {
		return accountBalance;
	}
	public void setAccountBalance(String accountBalance) {
		this.accountBalance = accountBalance;
	}
	public String getSubAccountBalance() {
		return subAccountBalance;
	}
	public void setSubAccountBalance(String subAccountBalance) {
		this.subAccountBalance = subAccountBalance;
	}
	public String getTranType() {
		return tranType;
	}
	public void setTranType(String tranType) {
		this.tranType = tranType;
	}
	public String getAmount() {
		return amount;
	}
	public void setAmount(String amount) {
		this.amount = amount;
	}
	
}
