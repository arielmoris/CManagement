package com.cms.dto;

import java.math.BigDecimal;
import java.util.Date;

import com.cms.entity.PlayerLoading;
import com.cms.entity.PlayerWithdrawal;

public class CreditTransactionTableDto {
	
	private Date transferDate;
	private String currency;
	private String type;
	private String transferBy;
	private String fromTo;
	private BigDecimal increaseBalance;
	private BigDecimal decreaseBalance;
	private BigDecimal balance;
	private String transacionType;
	
	public CreditTransactionTableDto(Date transferDate, String currency, String agent, String processedBy, BigDecimal amount, BigDecimal endingBalance, String transactionType){
		System.out.println("Agent : "+agent);
		System.out.println("Processed By :"+processedBy);
		this.transferDate = transferDate;
		this.currency = currency;
		this.transferBy = processedBy;
		this.fromTo = agent;
		this.balance = endingBalance;
		this.transacionType = transactionType;
		if(transactionType != null && transactionType.equals("CR")){
			this.increaseBalance = amount;
		}else if(transactionType != null && transactionType.equals("DR")){
			this.decreaseBalance = amount;
		}
	}
	
	public CreditTransactionTableDto(Date transferDate, String currency, String type, String player, String agent, BigDecimal amount, BigDecimal balance, Class clazz){
		this.transferDate = transferDate;
		this.type = type;
		this.currency = currency;
		this.transferBy = agent;
		this.fromTo = player;
		if(clazz.equals(PlayerLoading.class)){
			this.increaseBalance = amount;
		}else if(clazz.equals(PlayerWithdrawal.class)){
			this.decreaseBalance = amount;
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
	public String getFromTo() {
		return fromTo;
	}
	public void setFromTo(String fromTo) {
		this.fromTo = fromTo;
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
	public String getTransacionType() {
		return transacionType;
	}
	public void setTransacionType(String transacionType) {
		this.transacionType = transacionType;
	}
	
}
