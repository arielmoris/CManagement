package com.cms.bean;

public class AgentStatusResponseData extends ResponseData{
	private String targetUserID;
	private Character accountStatus;
	private String mgrFullname;
	public String getTargetUserID() {
		return targetUserID;
	}
	public void setTargetUserID(String targetUserID) {
		this.targetUserID = targetUserID;
	}
	public Character getAccountStatus() {
		return accountStatus;
	}
	public void setAccountStatus(Character accountStatus) {
		this.accountStatus = accountStatus;
	}
	public String getMgrFullname() {
		return mgrFullname;
	}
	public void setMgrFullname(String mgrFullname) {
		this.mgrFullname = mgrFullname;
	}
	
}
