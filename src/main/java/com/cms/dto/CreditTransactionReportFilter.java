package com.cms.dto;

import java.util.Calendar;
import java.util.LinkedHashMap;

import com.cms.util.Constants;
import com.cms.util.Constants.AccountType;

public class CreditTransactionReportFilter extends ReportFilter{
	private String transactionType;
	private String summaryLevel;
	private String loggedInAgent;
	private String accountType; //master, agent, shop or player
	private LinkedHashMap<String, String> transactionTypeList;
	private LinkedHashMap<String, String> summaryLevelList;
	private String isSearch;
	
	private String selectedMasterId;
	private String selectedAgentId;
	private String selectedShopId;
	private String selectedPlayerId;
	
	private String fromId;
	private String toId;
	
	public CreditTransactionReportFilter(){
		Calendar cal = Calendar.getInstance();
		cal.set(Calendar.DATE, 1);
		cal.set(Calendar.HOUR_OF_DAY,0);
		cal.set(Calendar.MINUTE,0);
		cal.set(Calendar.SECOND,0);
		cal.set(Calendar.MILLISECOND,0);
		super.setFromDate(cal.getTime());
		
		cal = Calendar.getInstance();
		cal.set(Calendar.HOUR_OF_DAY,23);
		cal.set(Calendar.MINUTE,59);
		cal.set(Calendar.SECOND,59);
		cal.set(Calendar.MILLISECOND,59);
		super.setToDate(cal.getTime());	
	}
	
	public CreditTransactionReportFilter(String accountType){
		Calendar cal = Calendar.getInstance();
		cal.set(Calendar.DATE, 1);
		cal.set(Calendar.HOUR_OF_DAY,0);
		cal.set(Calendar.MINUTE,0);
		cal.set(Calendar.SECOND,0);
		cal.set(Calendar.MILLISECOND,0);
		super.setFromDate(cal.getTime());
		
		cal = Calendar.getInstance();
		cal.set(Calendar.HOUR_OF_DAY,23);
		cal.set(Calendar.MINUTE,59);
		cal.set(Calendar.SECOND,59);
		cal.set(Calendar.MILLISECOND,59);
		super.setToDate(cal.getTime());	
		
		this.accountType = accountType;
		getTransactionTypeListByAccountType();
		getSummaryLevelListByAccountType();
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
	public String getLoggedInAgent() {
		return loggedInAgent;
	}

	public void setLoggedInAgent(String loggedInAgent) {
		this.loggedInAgent = loggedInAgent;
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
	
	public String getIsSearch() {
		return isSearch;
	}

	public void setIsSearch(String isSearch) {
		this.isSearch = isSearch;
	}
	
	public String getFromId() {
		return fromId;
	}

	public String getToId() {
		return toId;
	}
	
	public String getSelectedMasterId() {
		return selectedMasterId;
	}

	public void setSelectedMasterId(String selectedMasterId) {
		this.selectedMasterId = selectedMasterId;
	}

	public String getSelectedAgentId() {
		return selectedAgentId;
	}

	public void setSelectedAgentId(String selectedAgentId) {
		this.selectedAgentId = selectedAgentId;
	}

	public String getSelectedShopId() {
		return selectedShopId;
	}

	public void setSelectedShopId(String selectedShopId) {
		this.selectedShopId = selectedShopId;
	}

	public String getSelectedPlayerId() {
		return selectedPlayerId;
	}

	public void setSelectedPlayerId(String selectedPlayerId) {
		this.selectedPlayerId = selectedPlayerId;
	}
	public void setToIdAndFromId() {
		if(transactionType.equals("MemberIn")){
			this.fromId = this.loggedInAgent;
			if(accountType.equals(Constants.AccountType.MASTER)){
				this.toId = this.selectedAgentId;
			}else if(accountType.equals(Constants.AccountType.AGENT)){
				this.toId = this.selectedShopId;
			}
		}else if(transactionType.equals("MemberOut")){
			if(this.selectedAgentId != null && !this.selectedAgentId.equals("")){
				this.fromId = this.selectedAgentId;
			}else{
				this.fromId = this.loggedInAgent;
			}
			this.toId 	= this.selectedShopId;
		}else if(transactionType.equals("FromAgentToPlayer")){
			if(selectedShopId != null && !this.selectedShopId.equals("")){
				this.fromId = this.selectedShopId;
			}else if(this.selectedAgentId != null && !this.selectedAgentId.equals("")){
				this.fromId = this.selectedAgentId;
			}else{
				this.fromId = this.loggedInAgent;
			}
			
			this.toId = this.selectedPlayerId;
		}
	}
	
	public void getTransactionTypeListByAccountType(){
		transactionTypeList = new LinkedHashMap<String, String>();
		
		switch(accountType){
			case Constants.AccountType.MASTER:
				transactionTypeList.put("MemberIn", "Master to Agent");
				transactionTypeList.put("MemberOut", "Agent to Shop");
				transactionTypeList.put("FromAgentToPlayer", "Shop to Player");
				break;
			case Constants.AccountType.AGENT:
				transactionTypeList.put("MemberIn", "Agent to Shop");
				transactionTypeList.put("FromAgentToPlayer", "Shop to Player");
				break;
			case Constants.AccountType.SHOP:
				transactionTypeList.put("FromAgentToPlayer", "Shop to Player");
				break;
		}
	}
	
	public void getSummaryLevelListByAccountType() {
		summaryLevelList = new LinkedHashMap<String, String>();
		summaryLevelList.put("Daily", "Daily");
		summaryLevelList.put("Detailed", "Detailed");
	}

	@Override
	public String toString() {
		return super.toString()+" CreditTransactionReportFilter [transactionType="
				+ transactionType + ", summaryLevel=" + summaryLevel
				+ ", loggedInAgent=" + loggedInAgent + ", accountType="
				+ accountType + ", transactionTypeList=" + transactionTypeList
				+ ", summaryLevelList=" + summaryLevelList + ", isSearch="
				+ isSearch + ", selectedMasterId=" + selectedMasterId
				+ ", selectedAgentId=" + selectedAgentId + ", selectedShopId="
				+ selectedShopId + ", selectedPlayerId=" + selectedPlayerId
				+ ", fromId=" + fromId + ", toId=" + toId + "]";
	}


}
