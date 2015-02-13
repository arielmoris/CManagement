package com.cms.entity;

import java.math.BigDecimal;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.NotFound;
import org.hibernate.annotations.NotFoundAction;

@Entity
@Table(name="Agent_Credit_Trxns")
public class AgentCreditTransaction {
	
	@Id
	private int referenceId;
	
	private int agentId;
	@NotFound(action=NotFoundAction.IGNORE)
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="agentId", insertable=false, updatable=false)
	private Agent agent;
	
	private String agentLevel;
	private Date tranDateTime;
	private Character tranType;
	private String currencyCode;
	private BigDecimal amount;
	private BigDecimal endingBalance;
	private String status;
	private String processedBy;
	private String logMmYy;
	
	
	public int getReferenceId() {
		return referenceId;
	}
	public void setReferenceId(int referenceId) {
		this.referenceId = referenceId;
	}
	public int getAgentId() {
		return agentId;
	}
	public void setAgentId(int agentId) {
		this.agentId = agentId;
	}
	public String getAgentLevel() {
		return agentLevel;
	}
	public void setAgentLevel(String agentLevel) {
		this.agentLevel = agentLevel;
	}
	public Date getTranDateTime() {
		return tranDateTime;
	}
	public void setTranDateTime(Date tranDateTime) {
		this.tranDateTime = tranDateTime;
	}
	public Character getTranType() {
		return tranType;
	}
	public void setTranType(Character tranType) {
		this.tranType = tranType;
	}
	public String getCurrencyCode() {
		return currencyCode;
	}
	public void setCurrencyCode(String currencyCode) {
		this.currencyCode = currencyCode;
	}
	public BigDecimal getAmount() {
		return amount;
	}
	public void setAmount(BigDecimal amount) {
		this.amount = amount;
	}
	public BigDecimal getEndingBalance() {
		return endingBalance;
	}
	public void setEndingBalance(BigDecimal endingBalance) {
		this.endingBalance = endingBalance;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getProcessedBy() {
		return processedBy;
	}
	public void setProcessedBy(String processedBy) {
		this.processedBy = processedBy;
	}
	public String getLogMmYy() {
		return logMmYy;
	}
	public void setLogMmYy(String logMmYy) {
		this.logMmYy = logMmYy;
	}
	public Agent getAgent() {
		return agent;
	}
	public void setAgent(Agent agent) {
		this.agent = agent;
	}
	
	
	
}
