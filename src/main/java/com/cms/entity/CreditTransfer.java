package com.cms.entity;

import java.math.BigDecimal;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="CREDIT_TRANSFERS")
public class CreditTransfer {
	
	@Id
	private int referenceId;
	private String playerCode;
	private int agentId;
	private Date tranDateTime;
	private String creditSource;
	private String creditDestination;
	private BigDecimal amount;
	private Character status;
	private String tranType;
	private String vendorTranId;
	private String casinoInternalId;
	private BigDecimal casinoBalance;
	
	public int getReferenceId() {
		return referenceId;
	}
	public void setReferenceId(int referenceId) {
		this.referenceId = referenceId;
	}
	public String getPlayerCode() {
		return playerCode;
	}
	public void setPlayerCode(String playerCode) {
		this.playerCode = playerCode;
	}
	public int getAgentId() {
		return agentId;
	}
	public void setAgentId(int agentId) {
		this.agentId = agentId;
	}
	public Date getTranDateTime() {
		return tranDateTime;
	}
	public void setTranDateTime(Date tranDateTime) {
		this.tranDateTime = tranDateTime;
	}
	public String getCreditSource() {
		return creditSource;
	}
	public void setCreditSource(String creditSource) {
		this.creditSource = creditSource;
	}
	public String getCreditDestination() {
		return creditDestination;
	}
	public void setCreditDestination(String creditDestination) {
		this.creditDestination = creditDestination;
	}
	public BigDecimal getAmount() {
		return amount;
	}
	public void setAmount(BigDecimal amount) {
		this.amount = amount;
	}
	public Character getStatus() {
		return status;
	}
	public void setStatus(Character status) {
		this.status = status;
	}
	public String getTranType() {
		return tranType;
	}
	public void setTranType(String tranType) {
		this.tranType = tranType;
	}
	public String getVendorTranId() {
		return vendorTranId;
	}
	public void setVendorTranId(String vendorTranId) {
		this.vendorTranId = vendorTranId;
	}
	public String getCasinoInternalId() {
		return casinoInternalId;
	}
	public void setCasinoInternalId(String casinoInternalId) {
		this.casinoInternalId = casinoInternalId;
	}
	public BigDecimal getCasinoBalance() {
		return casinoBalance;
	}
	public void setCasinoBalance(BigDecimal casinoBalance) {
		this.casinoBalance = casinoBalance;
	}
	
}
