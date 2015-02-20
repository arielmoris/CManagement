package com.cms.dto;

import java.math.BigDecimal;

public class UpdateAgentDto {
	private String username;
	private String firstName;
	private String lastName;
	private String mobileNo;
	private String email;
	private String currencyCode;
	private String country;
	private BigDecimal commRate;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getMobileNo() {
		return mobileNo;
	}
	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCurrencyCode() {
		return currencyCode;
	}
	public void setCurrencyCode(String currencyCode) {
		this.currencyCode = currencyCode;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public BigDecimal getCommRate() {
		return commRate;
	}
	public void setCommRate(BigDecimal commRate) {
		this.commRate = commRate;
	}
	

	
}
