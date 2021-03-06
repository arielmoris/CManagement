package com.cms.bean;

import java.math.BigDecimal;


public class LoginResponseData extends ResponseData{

	private String userID;
	private String sessionID;
	private String name;
	private String balance;
	private String currencyCode;
	private String accountType;
	private String agentID;
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getSessionID() {
		return sessionID;
	}
	public void setSessionID(String sessionID) {
		this.sessionID = sessionID;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBalance() {
		return balance;
	}
	public void setBalance(String balance) {
		this.balance = balance;
	}
	public String getCurrencyCode() {
		return currencyCode;
	}
	public void setCurrencyCode(String currencyCode) {
		this.currencyCode = currencyCode;
	}
	public String getAccountType() {
		return accountType;
	}
	public void setAccountType(String accountType) {
		this.accountType = accountType;
	}
	public String getAgentID() {
		return agentID;
	}
	public void setAgentID(String agentID) {
		this.agentID = agentID;
	}
	@Override
	public String toString() {
		return "LoginResponseData [userID=" + userID + ", sessionID="
				+ sessionID + ", name=" + name + ", balance=" + balance
				+ ", currencyCode=" + currencyCode + ", accountType="
				+ accountType + ", agentID=" + agentID + "]";
	}	
	
	
}
