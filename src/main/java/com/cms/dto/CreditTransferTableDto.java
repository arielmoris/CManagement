package com.cms.dto;

import java.math.BigDecimal;
import java.util.Date;

import com.cms.entity.PlayerLoading;
import com.cms.entity.PlayerWithdrawal;

public class CreditTransferTableDto {
	
	private Date transferDate;
	private String currency;
	private String type;
	private String transferBy;
	private String fromTo;
	private BigDecimal increaseBalance;
	private BigDecimal decreaseBalance;
	private BigDecimal balance;
	
	public CreditTransferTableDto(Date transferDate, String currency, String type, String agent, String processedBy, BigDecimal amount, BigDecimal endingBalance){
		this.transferDate = transferDate;
		this.currency = currency;
		this.type = type;
		this.transferBy = processedBy;
		this.fromTo = agent;
		this.increaseBalance = amount;
		this.balance = endingBalance;
	}
	public CreditTransferTableDto(Date transferDate, String currency, String type, String player, String agent, BigDecimal amount, BigDecimal balance, Class clazz){
		this.transferDate = transferDate;
		this.type = type;
		this.currency = currency;
		if(clazz.equals(PlayerLoading.class)){
			this.increaseBalance = amount;
			this.transferBy = agent;
			this.fromTo = player;
		}else if(clazz.equals(PlayerWithdrawal.class)){
			this.decreaseBalance = amount;
			this.transferBy = player;
			this.fromTo = agent;
		}
		this.balance = balance;
	}
	
	public Date getTransferDate() {
		return transferDate;
	}
	public void setTransferDate(Date transferDate) {
		this.transferDate = transferDate;
	}
	public String getCurrency() {
		return currency;
	}
	public void setCurrency(String currency) {
		this.currency = currency;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getTransferBy() {
		return transferBy;
	}
	public void setTransferBy(String transferBy) {
		this.transferBy = transferBy;
	}
	public String getTransferTo() {
		return fromTo;
	}
	public void setTransferTo(String transferTo) {
		this.fromTo = transferTo;
	}
	public BigDecimal getIncreaseBalance() {
		return increaseBalance;
	}
	public void setIncreaseBalance(BigDecimal increaseBalance) {
		this.increaseBalance = increaseBalance;
	}
	public BigDecimal getDecreaseBalance() {
		return decreaseBalance;
	}
	public void setDecreaseBalance(BigDecimal decreaseBalance) {
		this.decreaseBalance = decreaseBalance;
	}
	public BigDecimal getBalance() {
		return balance;
	}
	public void setBalance(BigDecimal balance) {
		this.balance = balance;
	}
	
}
