package com.cms.dto;

import java.util.LinkedHashMap;

public class ChangeAgentStatusDto {
	private String targetUserID;
	private String status;
	private LinkedHashMap statusList;
	
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
	
}
