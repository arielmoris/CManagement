package com.cms.entity;

import java.math.BigDecimal;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Players")
public class Player {

	@Id
	private String playerCode;
	private String playerLevel;
	private Integer agentId;
	private String username;
	private String password;
	private Character accountType;
	private Integer playerCategory;
	private String playerName;
	private String mobileNo;
	private String email;
	private Date registerDate;
	private String registerIp;
	private Character status;
	private String currencyCode;
	private BigDecimal totalCredit;
	private Date lastLogin;
	private String lastLoginIp;
	private String sessionId;
	private Integer lastLoadingId;
	private Integer lastWithdrawalId;
	private Integer lastTransferId;
	private Date lastChangePassword;
	private Character playMode;
	private Boolean allowFreePlay;
	private String defLang;
	
	public String getPlayerCode() {
		return playerCode;
	}
	public void setPlayerCode(String playerCode) {
		this.playerCode = playerCode;
	}
	public String getPlayerLevel() {
		return playerLevel;
	}
	public void setPlayerLevel(String playerLevel) {
		this.playerLevel = playerLevel;
	}
	public Integer getAgentId() {
		return agentId;
	}
	public void setAgentId(Integer agentId) {
		this.agentId = agentId;
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
	public Character getAccountType() {
		return accountType;
	}
	public void setAccountType(Character accountType) {
		this.accountType = accountType;
	}
	public Integer getPlayerCategory() {
		return playerCategory;
	}
	public void setPlayerCategory(Integer playerCategory) {
		this.playerCategory = playerCategory;
	}
	public String getPlayerName() {
		return playerName;
	}
	public void setPlayerName(String playerName) {
		this.playerName = playerName;
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
	public Date getRegisterDate() {
		return registerDate;
	}
	public void setRegisterDate(Date registerDate) {
		this.registerDate = registerDate;
	}
	public String getRegisterIp() {
		return registerIp;
	}
	public void setRegisterIp(String registerIp) {
		this.registerIp = registerIp;
	}
	public Character getStatus() {
		return status;
	}
	public void setStatus(Character status) {
		this.status = status;
	}
	public String getCurrencyCode() {
		return currencyCode;
	}
	public void setCurrencyCode(String currencyCode) {
		this.currencyCode = currencyCode;
	}
	public BigDecimal getTotalCredit() {
		return totalCredit;
	}
	public void setTotalCredit(BigDecimal totalCredit) {
		this.totalCredit = totalCredit;
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
	public String getSessionId() {
		return sessionId;
	}
	public void setSessionId(String sessionId) {
		this.sessionId = sessionId;
	}
	public Integer getLastLoadingId() {
		return lastLoadingId;
	}
	public void setLastLoadingId(Integer lastLoadingId) {
		this.lastLoadingId = lastLoadingId;
	}
	public Integer getLastWithdrawalId() {
		return lastWithdrawalId;
	}
	public void setLastWithdrawalId(Integer lastWithdrawalId) {
		this.lastWithdrawalId = lastWithdrawalId;
	}
	public Integer getLastTransferId() {
		return lastTransferId;
	}
	public void setLastTransferId(Integer lastTransferId) {
		this.lastTransferId = lastTransferId;
	}
	public Date getLastChangePassword() {
		return lastChangePassword;
	}
	public void setLastChangePassword(Date lastChangePassword) {
		this.lastChangePassword = lastChangePassword;
	}
	public Character getPlayMode() {
		return playMode;
	}
	public void setPlayMode(Character playMode) {
		this.playMode = playMode;
	}
	public Boolean getAllowFreePlay() {
		return allowFreePlay;
	}
	public void setAllowFreePlay(Boolean allowFreePlay) {
		this.allowFreePlay = allowFreePlay;
	}
	public String getDefLang() {
		return defLang;
	}
	public void setDefLang(String defLang) {
		this.defLang = defLang;
	}
	
	
}
