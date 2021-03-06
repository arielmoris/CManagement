package com.cms.dto;

import java.util.Collection;
import java.util.List;

import com.cms.bean.AgentListResponseData;
import com.cms.bean.Record;

public class AgentsListDto {
	private String firstName;
	private String lastName;
	private String mobileNum;
	private Collection<AgentListResponseData> agentListResponseDataTable;
	private Record record;
	
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
	public String getMobileNum() {
		return mobileNum;
	}
	public void setMobileNum(String mobileNum) {
		this.mobileNum = mobileNum;
	}
	public Collection<AgentListResponseData> getAgentListResponseDataTable() {
		return agentListResponseDataTable;
	}
	public void setAgentListResponseDataTable(
			Collection<AgentListResponseData> agentListResponseDataTable) {
		this.agentListResponseDataTable = agentListResponseDataTable;
	}
	public Record getRecord() {
		return record;
	}
	public void setRecord(Record record) {
		this.record = record;
	}
	
}
