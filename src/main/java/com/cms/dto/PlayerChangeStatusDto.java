package com.cms.dto;

import java.util.LinkedHashMap;

public class PlayerChangeStatusDto {
	
	private String targetUserID;
	private String status;
	private LinkedHashMap statusList;
	private String mgrFullName;
	
	public String getTargetUserID() {
		return targetUserID;
	}
	public void setTargetUserID(String targetUserID) {
		this.targetUserID = targetUserID;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public LinkedHashMap getStatusList() {
		return statusList;
	}
	public void setStatusList(LinkedHashMap statusList) {
		this.statusList = statusList;
	}
	public String getMgrFullName() {
		return mgrFullName;
	}
	public void setMgrFullName(String mgrFullName) {
		this.mgrFullName = mgrFullName;
	}
	
}
