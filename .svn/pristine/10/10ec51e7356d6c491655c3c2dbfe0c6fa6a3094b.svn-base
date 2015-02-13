package com.cms.dto;

import java.util.Calendar;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;

import com.cms.util.Constants;

public class CreditTransferReportFilter extends ReportFilter{
	private String transactionType;
	private String summaryLevel;
	private String agent;
	private String accountType; //master, agent, shop or player
	private LinkedHashMap<String, String> transactionTypeList;
	private LinkedHashMap<String, String> summaryLevelList;
	
	
	public CreditTransferReportFilter(){
		Calendar cal = Calendar.getInstance();
		cal.set(Calendar.DATE, 1);
		super.setFromDate(cal.getTime());
		
		cal = Calendar.getInstance();
		super.setToDate(cal.getTime());	
	}
	
	public CreditTransferReportFilter(String accountType){
		this();
		this.accountType = accountType;
		getTransactionTypeListByAccountType();
		getSummaryLevelListByAccountType();
		setTransactionType(transactionTypeList.entrySet().iterator().next().getKey());
		setSummaryLevel(summaryLevelList.entrySet().iterator().next().getKey());
		
	}
	
	public String getTransactionType() {
		return transactionType;
	}
	public void setTransactionType(String transactionType) {
		this.transactionType = transactionType;
	}
	public String getSummaryLevel() {
		return summaryLevel;
	}
	public void setSummaryLevel(String summaryLevel) {
		this.summaryLevel = summaryLevel;
	}
	public String getAgent() {
		return agent;
	}
	public void setAgent(String agent) {
		this.agent = agent;
	}

	public String getAccountType() {
		return accountType;
	}

	public void setAccountType(String accountType) {
		this.accountType = accountType;
	}

	public LinkedHashMap<String, String> getTransactionTypeList() {
		return transactionTypeList;
	}

	public void setTransactionTypeList(
			LinkedHashMap<String, String> transactionTypeList) {
		this.transactionTypeList = transactionTypeList;
	}

	public LinkedHashMap<String, String> getSummaryLevelList() {
		return summaryLevelList;
	}

	public void setSummaryLevelList(LinkedHashMap<String, String> summaryLevelList) {
		this.summaryLevelList = summaryLevelList;
	}
	
	public void getTransactionTypeListByAccountType(){
		transactionTypeList = new LinkedHashMap<String, String>();
		
		switch(accountType){
			case Constants.AccountType.TOP:
				transactionTypeList.put("MemberOut", "Agent Transaction");
				transactionTypeList.put("MemberIn", "Head Office Transaction");
				break;
			case Constants.AccountType.AGENT:
			case Constants.AccountType.CASHIER:
				transactionTypeList.put("FromAgentToStation", "Station Transaction");
				transactionTypeList.put("FromAgentToPlayer", "Player Transaction");
				transactionTypeList.put("MemberIn", "Master Agent Transaction");
				break;
		}
	}
	
	public void getSummaryLevelListByAccountType() {
		summaryLevelList = new LinkedHashMap<String, String>();

		switch (accountType) {
			case Constants.AccountType.TOP:
			case Constants.AccountType.AGENT:
				summaryLevelList.put("Daily", "Daily");
				summaryLevelList.put("Detailed", "Detailed");
				break;
		}
	}

}
