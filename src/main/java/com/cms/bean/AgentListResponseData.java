package com.cms.bean;


public class AgentListResponseData extends ResponseData{
	
	private String agentID;
	private String mgrUserID;
	private String firstName;
	private String lastName;
	private String mobileNo;
	private String status;
	private String balance;
	
	
	public String getAgentID() {
		return agentID;
	}
	public void setAgentID(String agentID) {
		this.agentID = agentID;
	}
	public String getMgrUserID() {
		return mgrUserID;
	}
	public void setMgrUserID(String mgrUserID) {
		this.mgrUserID = mgrUserID;
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
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getBalance() {
		return balance;
	}
	public void setBalance(String balance) {
		this.balance = balance;
	}
	
	
	
}
