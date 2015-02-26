package com.cms.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="Agent_Managers")
public class AgentManager {
	
	@Id
	private String userId;
	private String agentId;
	
	private String password;
	private String firstName;
	private String lastName;
	private String mobileNo;
	private String address;
	private Date registerDate;
	private Date lastLogin;
	private String lastLoginIp;
	private String status;
	private String sessionId;
	private Boolean isSuperUser;
	private Boolean allowReport;
	private Boolean allowSecurity;
	private Boolean allowCredit;
	private Boolean allowEdit;
	private Boolean allowApi;
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getAgentId() {
		return agentId;
	}
	public void setAgentId(String agentId) {
		this.agentId = agentId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
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
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Date getRegisterDate() {
		return registerDate;
	}
	public void setRegisterDate(Date registerDate) {
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
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getSessionId() {
		return sessionId;
	}
	public void setSessionId(String sessionId) {
		this.sessionId = sessionId;
	}
	public Boolean getIsSuperUser() {
		return isSuperUser;
	}
	public void setIsSuperUser(Boolean isSuperUser) {
		this.isSuperUser = isSuperUser;
	}
	public Boolean getAllowReport() {
		return allowReport;
	}
	public void setAllowReport(Boolean allowReport) {
		this.allowReport = allowReport;
	}
	public Boolean getAllowSecurity() {
		return allowSecurity;
	}
	public void setAllowSecurity(Boolean allowSecurity) {
		this.allowSecurity = allowSecurity;
	}
	public Boolean getAllowCredit() {
		return allowCredit;
	}
	public void setAllowCredit(Boolean allowCredit) {
		this.allowCredit = allowCredit;
	}
	public Boolean getAllowEdit() {
		return allowEdit;
	}
	public void setAllowEdit(Boolean allowEdit) {
		this.allowEdit = allowEdit;
	}
	public Boolean getAllowApi() {
		return allowApi;
	}
	public void setAllowApi(Boolean allowApi) {
		this.allowApi = allowApi;
	}
	
	
	
}
