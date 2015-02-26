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
	@ManyToOne
	@JoinColumn(name="agentId", insertable=false, updatable=false)
	private Agent agent;
	
	
	@NotFound(action=NotFoundAction.IGNORE)
	@ManyToOne
	@JoinColumn(name="parentAgentId", insertable=false, updatable=false)
	private Agent parentAgent;
	
	private String agentLevel;
	private Date tranDateTime;
	private String tranType;
	private String currencyCode;
	private BigDecimal amount;
	private BigDecimal endingBalance;
	private BigDecimal endingBalanceParent;
	private String status;
	
	@NotFound(action=NotFoundAction.IGNORE)
	@ManyToOne
	@JoinColumn(name="processedBy", insertable=false, updatable=false)
	private Agent processedBy;
	
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
	public String getTranType() {
		return tranType;
	}
	public void setTranType(String tranType) {
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
	public BigDecimal getEndingBalanceParent() {
		return endingBalanceParent;
	}
	public void setEndingBalanceParent(BigDecimal endingBalanceParent) {
		this.endingBalanceParent = endingBalanceParent;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Agent getProcessedBy() {
		return processedBy;
	}
	public void setProcessedBy(Agent processedBy) {
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
	public Agent getParentAgent() {
		return parentAgent;
	}
	public void setParentAgent(Agent parentAgent) {
		this.parentAgent = parentAgent;
	}	
	
}
