package com.cms.dto;

import java.math.BigDecimal;
import java.util.Date;

import com.google.common.base.Function;

public class UserDto {
	
	private String username;
	private String password;
	private String agentId;
	private String fullName;
	private String mobileNo;
	private String address;
	private String registerDate;
	private Date lastLogin;
	private String lastLoginIp;
	private Character status;
	private String sessionId;
	private String languageSelected;
	private Boolean isLogged;
	private String accountType;
	private BigDecimal balance;
	private String currencyCode;
	private Boolean isSuperUserFlag;
	
	public UserDto(){
		languageSelected = "en";
	}
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getAgentId() {
		return agentId;
	}
	public void setAgentId(String agentId) {
		this.agentId = agentId;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public String getMobileNo() {
		return mobileNo;
	}
	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getRegisterDate() {
		return registerDate;
	}
	public void setRegisterDate(String registerDate) {
		this.registerDate = registerDate;
	}
	public Date getLastLogin() {
		return lastLogin;
	}
	public void setLastLogin(Date lastLogin) {
		this.lastLogin = lastLogin;
	}
	public String getLastLoginIp() {
		return lastLoginIp;
	}
	public void setLastLoginIp(String lastLoginIp) {
		this.lastLoginIp = lastLoginIp;
	}
	public Character getStatus() {
		return status;
	}
	public void setStatus(Character status) {
		this.status = status;
	}
	public String getSessionId() {
		return sessionId;
	}
	public void setSessionId(String sessionId) {
		this.sessionId = sessionId;
	}
	public String getLanguageSelected() {
		return languageSelected;
	}
	public void setLanguageSelected(String languageSelected) {
		this.languageSelected = languageSelected;
	}

	public Boolean getIsLogged() {
		return isLogged;
	}

	public void setIsLogged(Boolean isLogged) {
		this.isLogged = isLogged;
	}

	public String getAccountType() {
		return accountType;
	}

	public void setAccountType(String accountType) {
		this.accountType = accountType;
	}

	public BigDecimal getBalance() {
		return balance;
	}

	public void setBalance(BigDecimal balance) {
		this.balance = balance;
	}

	public String getCurrencyCode() {
		return currencyCode;
	}

	public void setCurrencyCode(String currencyCode) {
		this.currencyCode = currencyCode;
	}

	public Boolean getIsSuperUserFlag() {
		return isSuperUserFlag;
	}

	public void setIsSuperUserFlag(Boolean isSuperUserFlag) {
		this.isSuperUserFlag = isSuperUserFlag;
	}
}
