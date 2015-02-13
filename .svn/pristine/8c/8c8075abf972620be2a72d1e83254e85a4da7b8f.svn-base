package com.cms.entity;

import java.math.BigDecimal;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import org.hibernate.annotations.NotFound;
import org.hibernate.annotations.NotFoundAction;

@Entity
@Inheritance(strategy=InheritanceType.TABLE_PER_CLASS)
public abstract class PlayerCreditTransaction {
	
	@Id
	private int referenceId;
	private String playerCode;
	@NotFound(action=NotFoundAction.IGNORE)
	@JoinColumn(name="playerCode", insertable=false, updatable=false)
	@ManyToOne(fetch=FetchType.LAZY)
	private Player player;
	
	private int agentId;
	@NotFound(action=NotFoundAction.IGNORE)
	@JoinColumn(name="agentId", insertable=false, updatable=false)
	@ManyToOne(fetch=FetchType.LAZY)
	private Agent agent;
	
	private Date tranDateTime;
	private String tranIp;
	private BigDecimal amount;
	private Character status;
	private BigDecimal playerEndingBalance;
	private BigDecimal AgentEndingBalance;
	private String logMmYy;
	
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
	public Player getPlayer() {
		return player;
	}
	public void setPlayer(Player player) {
		this.player = player;
	}
	public Agent getAgent() {
		return agent;
	}
	public void setAgent(Agent agent) {
		this.agent = agent;
	}
	public Date getTranDateTime() {
		return tranDateTime;
	}
	public void setTranDateTime(Date tranDateTime) {
		this.tranDateTime = tranDateTime;
	}
	public String getTranIp() {
		return tranIp;
	}
	public void setTranIp(String tranIp) {
		this.tranIp = tranIp;
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
	public BigDecimal getPlayerEndingBalance() {
		return playerEndingBalance;
	}
	public void setPlayerEndingBalance(BigDecimal playerEndingBalance) {
		this.playerEndingBalance = playerEndingBalance;
	}
	public BigDecimal getAgentEndingBalance() {
		return AgentEndingBalance;
	}
	public void setAgentEndingBalance(BigDecimal agentEndingBalance) {
		AgentEndingBalance = agentEndingBalance;
	}
	public String getLogMmYy() {
		return logMmYy;
	}
	public void setLogMmYy(String logMmYy) {
		this.logMmYy = logMmYy;
	}
	
	
}
