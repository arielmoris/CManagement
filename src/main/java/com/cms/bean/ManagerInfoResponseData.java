package com.cms.bean;

public class ManagerInfoResponseData extends ResponseData{
	private String mgrUname;
	private String firstName;
	private String lastName;
	private String mobileNo;
	private String emailAdd;
	private String currencyCode;
	private String country;
	private String commRate;
	public String getMgrUname() {
		return mgrUname;
	}
	public void setMgrUname(String mgrUname) {
		this.mgrUname = mgrUname;
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
	public String getEmailAdd() {
		return emailAdd;
	}
	public void setEmailAdd(String emailAdd) {
		this.emailAdd = emailAdd;
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
	public String getCommRate() {
		return commRate;
	}
	public void setCommRate(String commRate) {
		this.commRate = commRate;
	}
	
}
