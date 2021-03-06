package com.cms.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.cms.bean.ResponseWrapper;
import com.cms.dto.AddNewAgentDto;
import com.cms.dto.AgentsListDto;
import com.cms.dto.ChangeAgentBalanceDto;
import com.cms.dto.ChangeAgentStatusDto;
import com.cms.dto.CreditDebitAgentDto;
import com.cms.dto.UserDto;
import com.cms.service.AgentService;
import com.cms.util.Configurator;
import com.cms.util.HttpUtil;

@Service(value = "agentService")
public class AgentServiceImpl implements AgentService {

	public static final Logger logger = LoggerFactory.getLogger(AgentServiceImpl.class);
	/**
	 * Get Agent List
	 * @param agentId
	 * @param userId
	 * @param sessionId
	 * @param firstName
	 * @param lastName
	 * @param orderBy
	 * @param orderType
	 * @return
	 */
	public ResponseWrapper processAgentList(UserDto loggedUserDto, UserDto subUserDto, AgentsListDto agentsListDto)
	{
		logger.debug("Inside processAgentList");

		ResponseWrapper result = null;
		List<NameValuePair> params = new ArrayList<NameValuePair>();
		
		params.add(new BasicNameValuePair("requestType", "AgentList"));
		params.add(new BasicNameValuePair("userID", loggedUserDto.getUsername()));
		params.add(new BasicNameValuePair("sessionID", loggedUserDto.getSessionId()));
		params.add(new BasicNameValuePair("subUserID", subUserDto.getUsername()));
		params.add(new BasicNameValuePair("firstName", agentsListDto.getFirstName()));
		params.add(new BasicNameValuePair("lastName", agentsListDto.getLastName()));
		params.add(new BasicNameValuePair("mobileNo", agentsListDto.getMobileNum()));
		params.add(new BasicNameValuePair("orderBy", agentsListDto.getRecord().getOrderBy()));
		params.add(new BasicNameValuePair("orderType", agentsListDto.getRecord().getOrderType()));
		
		final String url = Configurator.getConfig("webportal.url");

		result = HttpUtil.sendPost(url, params);

		logger.debug("Exiting processAgentList(result=)");
		return result;
	}
	
	/**
	 * Add Agent
	 * @param username
	 * @param sessionId
	 * @param subUserId
	 * @param firstName
	 * @param lastName
	 * @param password -> if blank server will auto generate
	 * @param mobileNo
	 * @param email
	 * @param balance
	 * @param commRate
	 * @param sendToChannel -> [sms, email]
	 * @param sendToValue	-> [email address, mobileNo]
	 * @return
	 */
	public ResponseWrapper processAddAgent(UserDto loggedUserDto, UserDto subUserDto, AddNewAgentDto addNewAgentDto) {
		
		logger.debug("Inside processAddAgent");

		ResponseWrapper result = null;
		List<NameValuePair> params = new ArrayList<NameValuePair>();

		params.add(new BasicNameValuePair("requestType", "AddAgent"));
		params.add(new BasicNameValuePair("userID", loggedUserDto.getUsername()));
		params.add(new BasicNameValuePair("sessionID", loggedUserDto.getSessionId()));
		params.add(new BasicNameValuePair("subUserID", subUserDto.getUsername()));
		params.add(new BasicNameValuePair("firstName", addNewAgentDto.getFirstName()));
		params.add(new BasicNameValuePair("lastName", addNewAgentDto.getLastName()));
		params.add(new BasicNameValuePair("password", addNewAgentDto.getPassword()));
		params.add(new BasicNameValuePair("mobileNo", addNewAgentDto.getMobileNo()));
		params.add(new BasicNameValuePair("email", addNewAgentDto.getEmail()));
		params.add(new BasicNameValuePair("balance",addNewAgentDto.getBalance()==null?"0.00":String.valueOf(addNewAgentDto.getBalance())));
		params.add(new BasicNameValuePair("commRate", addNewAgentDto.getCommRate() == null? "0.00":String.valueOf(addNewAgentDto.getCommRate())));
		params.add(new BasicNameValuePair("sendToChannel", addNewAgentDto.getSendToChannel()));
		params.add(new BasicNameValuePair("sendToValue", addNewAgentDto.getSendToValue()));

		final String url = Configurator.getConfig("webportal.url");

		result = HttpUtil.sendPost(url, params);

		logger.debug("Exiting processAddAgent(result=)");
		
		return result;
	}
	
	/**
	 * Get Agent Balance
	 * @param agentId
	 * @param userId
	 * @param sessionId
	 * @param subAgentId
	 * @return
	 */
	public ResponseWrapper processAgentBalance(UserDto loggedUserDto, UserDto subUserDto, String targetUserId){
		logger.debug("Inside processAgentBalance");

		ResponseWrapper result = null;
		List<NameValuePair> params = new ArrayList<NameValuePair>();

		params.add(new BasicNameValuePair("requestType", "AgentBalance"));
		params.add(new BasicNameValuePair("userID", loggedUserDto.getUsername()));
		params.add(new BasicNameValuePair("sessionID", loggedUserDto.getSessionId()));
		params.add(new BasicNameValuePair("subUserID", subUserDto.getUsername()));
		params.add(new BasicNameValuePair("targetUserID", targetUserId));
		
		final String url = Configurator.getConfig("webportal.url");

		result = HttpUtil.sendPost(url, params);

		logger.debug("Exiting processAgentBalance(result=)");
		return result;
	}
	/**
	 * Load/Withdraw Credit
	 * @param agentId
	 * @param userId
	 * @param sessionId
	 * @param subAgentId
	 * @param tranType
	 * @param amount
	 * @return
	 */
	public ResponseWrapper processAgentCreditTran(UserDto loggedUserDto, UserDto subUserDto, ChangeAgentBalanceDto  changeAgentBalanceDto ){
		logger.debug("Inside processAgentCreditTran");

		ResponseWrapper result = null;
		List<NameValuePair> params = new ArrayList<NameValuePair>();

		params.add(new BasicNameValuePair("requestType", "AgentCreditTran"));
		params.add(new BasicNameValuePair("userID", loggedUserDto.getUsername()));
		params.add(new BasicNameValuePair("sessionID", loggedUserDto.getSessionId()));
		params.add(new BasicNameValuePair("subUserID", subUserDto.getUsername()));
		params.add(new BasicNameValuePair("targetUserID", changeAgentBalanceDto.getTargetUserID()));
		params.add(new BasicNameValuePair("tranType", changeAgentBalanceDto.getTranType()));
		params.add(new BasicNameValuePair("amount", String.valueOf(changeAgentBalanceDto.getTranAmount())));
		
		final String url = Configurator.getConfig("webportal.url");

		result = HttpUtil.sendPost(url, params);

		logger.debug("Exiting processAgentCreditTran(result=)");
		return result;
	}
	/**
	 * Get Agent Status
	 * @param agentId
	 * @param userId
	 * @param sessionId
	 * @param subAgentId
	 * @param managerId
	 * @return
	 */
	public ResponseWrapper processAgentStatus(UserDto loggedUserDto, UserDto subUserDto, String targetUserId){
		logger.debug("Inside processAgentStatus");

		ResponseWrapper result = null;
		List<NameValuePair> params = new ArrayList<NameValuePair>();

		params.add(new BasicNameValuePair("requestType", "AgentStatus"));
		params.add(new BasicNameValuePair("userID", loggedUserDto.getUsername()));
		params.add(new BasicNameValuePair("sessionID", loggedUserDto.getSessionId()));
		params.add(new BasicNameValuePair("subUserID", subUserDto.getUsername()));
		params.add(new BasicNameValuePair("targetUserID", targetUserId));

		final String url = Configurator.getConfig("webportal.url");

		result = HttpUtil.sendPost(url, params);

		logger.debug("Exiting processAgentStatus(result=)");
		return result;
	}
	
	/**
	 * Change Agent Status
	 * @param agentId
	 * @param userId
	 * @param sessionId
	 * @param subAgentId
	 * @param mgrUsername
	 * @param targetStatus -> [0, 1, 2, 3]; 
	 * 		0=Active, 1=master user is locked, 
	 * 		2=master user and all agent related accounts are locked
	 * 		3=station and player are suspended
	 * @return
	 */
	public ResponseWrapper processChangeAgentStatus(UserDto loggedUserDto, UserDto subUserDto, ChangeAgentStatusDto changeAgentStatusDto){
		logger.debug("Inside processChangeAgentStatus");

		ResponseWrapper result = null;
		List<NameValuePair> params = new ArrayList<NameValuePair>();

		params.add(new BasicNameValuePair("requestType", "ChangeAgentStatus"));
		params.add(new BasicNameValuePair("userID", loggedUserDto.getUsername()));
		params.add(new BasicNameValuePair("sessionID", loggedUserDto.getSessionId()));
		params.add(new BasicNameValuePair("subUserID", subUserDto.getUsername()));
		params.add(new BasicNameValuePair("targetUserID", changeAgentStatusDto.getTargetUserID()));
		params.add(new BasicNameValuePair("status", changeAgentStatusDto.getStatus()));

		
		final String url = Configurator.getConfig("webportal.url");

		result = HttpUtil.sendPost(url, params);

		logger.debug("Exiting processChangeAgentStatus(result=)");
		return result;
	}

}
