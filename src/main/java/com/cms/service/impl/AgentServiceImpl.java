package com.cms.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.cms.bean.ResponseWrapper;
import com.cms.service.AgentService;
import com.cms.util.Configurator;
import com.cms.util.HttpUtil;

@Service(value = "agentService")
public class AgentServiceImpl implements AgentService {

	static final Logger logger = LoggerFactory
			.getLogger(AgentServiceImpl.class);
	/**
	 * Get Agent List
	 * @param agentId
	 * @param userId
	 * @param sessionId
	 * @param firstName
	 * @param lastName
	 * @param orderBy
	 * @param orderType
	 * @param size
	 * @param page
	 * @return
	 */
	public ResponseWrapper processAgentList(String userId,String sessionId,	String subUserId,	String subSessionId,
		String firstName,String lastName,String mobileNo,String orderBy,String orderType,int size,int page)
	{
		logger.debug("Inside processAgentList");

		ResponseWrapper result = null;
		List<NameValuePair> params = new ArrayList<NameValuePair>();
		
		params.add(new BasicNameValuePair("requestType", "AgentList"));
		params.add(new BasicNameValuePair("userID", userId));
		params.add(new BasicNameValuePair("sessionID", sessionId));
		params.add(new BasicNameValuePair("subUserID", subUserId));
		params.add(new BasicNameValuePair("subSessionID", subSessionId));
		params.add(new BasicNameValuePair("firstName", firstName));
		params.add(new BasicNameValuePair("lastName", lastName));
		params.add(new BasicNameValuePair("mobileNo", mobileNo));
		params.add(new BasicNameValuePair("orderBy", orderBy));
		params.add(new BasicNameValuePair("orderType", orderType));
		params.add(new BasicNameValuePair("size", String.valueOf(size)));
		params.add(new BasicNameValuePair("page", String.valueOf(page)));
		
		final String url = Configurator.getConfig("webportal.url");

		result = HttpUtil.sendPost(url, params);

		logger.debug("Exiting processAgentList(result=)");
		return result;
	}
	
	/**
	 * Add Agent
	 * @param firstName
	 * @param lastName
	 * @param password -> if blang server will auto generate
	 * @param mobileNo
	 * @param email
	 * @param balance
	 * @param commRate
	 * @param sendToChannel -> [sms, email]
	 * @param sendToValue	-> [email address, mobileNo]
	 * @return
	 */
	public ResponseWrapper processAddAgent(String firstName, String lastName,
			String password, String mobileNo, String email, String balance,
			String commRate, String sendToChannel, String sendToValue) {
		
		logger.debug("Inside processAddAgent");

		ResponseWrapper result = null;
		List<NameValuePair> params = new ArrayList<NameValuePair>();

		params.add(new BasicNameValuePair("requestType", "AddAgent"));
		params.add(new BasicNameValuePair("firstName", firstName));
		params.add(new BasicNameValuePair("lastName", lastName));
		params.add(new BasicNameValuePair("password", password));
		params.add(new BasicNameValuePair("mobileNo", mobileNo));
		params.add(new BasicNameValuePair("email", email));
		params.add(new BasicNameValuePair("balance",balance));
		params.add(new BasicNameValuePair("commRate", commRate));
		params.add(new BasicNameValuePair("sendToChannel", sendToChannel));
		params.add(new BasicNameValuePair("sendToValue", sendToValue));

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
	public ResponseWrapper processAgentBalance(String agentId, String userId, String sessionId, String subAgentId){
		logger.debug("Inside processAgentBalance");

		ResponseWrapper result = null;
		List<NameValuePair> params = new ArrayList<NameValuePair>();

		params.add(new BasicNameValuePair("requestType", "AgentBalance"));
		params.add(new BasicNameValuePair("agentId", agentId));
		params.add(new BasicNameValuePair("userId", userId));
		params.add(new BasicNameValuePair("sessionId", sessionId));
		params.add(new BasicNameValuePair("subAgentId", subAgentId));

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
	public ResponseWrapper processAgentCreditTran(String agentId, String userId, String sessionId, String subAgentId, String tranType, String amount){
		logger.debug("Inside processAgentCreditTran");

		ResponseWrapper result = null;
		List<NameValuePair> params = new ArrayList<NameValuePair>();

		params.add(new BasicNameValuePair("requestType", "AgentCreditTran"));
		params.add(new BasicNameValuePair("agentId", agentId));
		params.add(new BasicNameValuePair("userId", userId));
		params.add(new BasicNameValuePair("sessionId", sessionId));
		params.add(new BasicNameValuePair("subAgentId", subAgentId));
		params.add(new BasicNameValuePair("tranType", tranType));
		params.add(new BasicNameValuePair("amount", amount));

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
	public ResponseWrapper processAgentStatus(String agentId, String userId, String sessionId, String subAgentId, String managerId){
		logger.debug("Inside processAgentStatus");

		ResponseWrapper result = null;
		List<NameValuePair> params = new ArrayList<NameValuePair>();

		params.add(new BasicNameValuePair("requestType", "AgentStatus"));
		params.add(new BasicNameValuePair("agentId", agentId));
		params.add(new BasicNameValuePair("userId", userId));
		params.add(new BasicNameValuePair("sessionId", sessionId));
		params.add(new BasicNameValuePair("subAgentId", subAgentId));
		params.add(new BasicNameValuePair("managerId", managerId));

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
	public ResponseWrapper processChangeAgentStatus(String agentId, String userId, String sessionId, String subAgentId, String mgrUsername, String targetStatus){
		logger.debug("Inside processChangeAgentStatus");

		ResponseWrapper result = null;
		List<NameValuePair> params = new ArrayList<NameValuePair>();

		params.add(new BasicNameValuePair("requestType", "ChangeAgentStatus"));
		params.add(new BasicNameValuePair("agentId", agentId));
		params.add(new BasicNameValuePair("userId", userId));
		params.add(new BasicNameValuePair("sessionId", sessionId));
		params.add(new BasicNameValuePair("subAgentId", subAgentId));
		params.add(new BasicNameValuePair("mgrUsername", mgrUsername));
		params.add(new BasicNameValuePair("targetStatus", targetStatus));

		final String url = Configurator.getConfig("webportal.url");

		result = HttpUtil.sendPost(url, params);

		logger.debug("Exiting processChangeAgentStatus(result=)");
		return result;
	}
	/**
	 * Reset Agent Password
	 * @param agentId
	 * @param userId
	 * @param sessionId
	 * @param mgrUsername
	 * @param channel ->[email, sms]
	 * @param value ->[email address, mobileNo]
	 * @return
	 */
	public ResponseWrapper processResetAgentPassword(String agentId, String userId, String sessionId, String mgrUsername, String channel, String value){
		logger.debug("Inside processAgentStatus");

		ResponseWrapper result = null;
		List<NameValuePair> params = new ArrayList<NameValuePair>();

		params.add(new BasicNameValuePair("requestType", "AgentStatus"));
		params.add(new BasicNameValuePair("agentId", agentId));
		params.add(new BasicNameValuePair("userId", userId));
		params.add(new BasicNameValuePair("sessionId", sessionId));
		params.add(new BasicNameValuePair("mgrUsername", mgrUsername));
		params.add(new BasicNameValuePair("channel", channel));
		params.add(new BasicNameValuePair("value",value));

		final String url = Configurator.getConfig("webportal.url");

		result = HttpUtil.sendPost(url, params);

		logger.debug("Exiting processAgentStatus(result=)");
		return result;
	}
	
	/**
	 * Add New Manager
	 * @param agentId
	 * @param userId
	 * @param sessionId
	 * @param firstName -> mandatory
	 * @param lastName	-> mandatory
	 * @param email
	 * @param mobileNo
	 * @param password
	 * @return
	 */
	public ResponseWrapper processAddManager(String agentId, String userId, String sessionId, String firstName, String lastName, String email, String mobileNo, String password){
		logger.debug("Inside processAddManager");

		ResponseWrapper result = null;
		List<NameValuePair> params = new ArrayList<NameValuePair>();

		params.add(new BasicNameValuePair("requestType", "AddManager"));
		params.add(new BasicNameValuePair("agentId", agentId));
		params.add(new BasicNameValuePair("userId", userId));
		params.add(new BasicNameValuePair("sessionId", sessionId));
		params.add(new BasicNameValuePair("firstName", firstName));
		params.add(new BasicNameValuePair("lastName", lastName));
		params.add(new BasicNameValuePair("email",email));
		params.add(new BasicNameValuePair("mobileNo",mobileNo));
		params.add(new BasicNameValuePair("password",password));

		final String url = Configurator.getConfig("webportal.url");

		result = HttpUtil.sendPost(url, params);

		logger.debug("Exiting processAddManager(result=)");
		return result;
	}
	
	/**
	 * View Manager Info
	 * @param agentId
	 * @param userId
	 * @param sessionId
	 * @param managerId
	 * @param viewType -> [S, F]; S - simple view, F - full details
	 * @return
	 */
	public ResponseWrapper processManagerInfo(String agentId, String userId, String sessionId, String managerId, String viewType){
		logger.debug("Inside processManagerInfo");

		ResponseWrapper result = null;
		List<NameValuePair> params = new ArrayList<NameValuePair>();

		params.add(new BasicNameValuePair("requestType", "ManagerInfo"));
		params.add(new BasicNameValuePair("agentId", agentId));
		params.add(new BasicNameValuePair("userId", userId));
		params.add(new BasicNameValuePair("sessionId", sessionId));
		params.add(new BasicNameValuePair("managerId", managerId));
		params.add(new BasicNameValuePair("viewType", viewType));

		final String url = Configurator.getConfig("webportal.url");

		result = HttpUtil.sendPost(url, params);

		logger.debug("Exiting processManagerInfo(result=)");
		return result;
	}
	/**
	 * Update Manager Info
	 * @param agentId
	 * @param userId
	 * @param sessionId
	 * @param mgrUname
	 * @param firstName
	 * @param lastName
	 * @param mobileNo
	 * @param emailAdd
	 * @return
	 */
	public ResponseWrapper processUpdateManager(String agentId, String userId, String sessionId, String mgrUname, String firstName, String lastName, String mobileNo, String emailAdd){
		logger.debug("Inside processUpdateManager");

		ResponseWrapper result = null;
		List<NameValuePair> params = new ArrayList<NameValuePair>();

		params.add(new BasicNameValuePair("requestType", "UpdateManager"));
		params.add(new BasicNameValuePair("agentId", agentId));
		params.add(new BasicNameValuePair("userId", userId));
		params.add(new BasicNameValuePair("sessionId", sessionId));
		params.add(new BasicNameValuePair("mgrUname", mgrUname));
		params.add(new BasicNameValuePair("firstName", firstName));
		params.add(new BasicNameValuePair("lastName", lastName));
		params.add(new BasicNameValuePair("mobileNo", mobileNo));
		params.add(new BasicNameValuePair("emailAdd", emailAdd));

		final String url = Configurator.getConfig("webportal.url");

		result = HttpUtil.sendPost(url, params);

		logger.debug("Exiting processManagerInfo(result=)");
		return result;
	}
	/**
	 * Update Manager Password
	 * @param agentId
	 * @param userId
	 * @param sessionId
	 * @param mgrUname
	 * @param newPassword
	 * @return
	 */
	public ResponseWrapper processUpdateManagerPass(String agentId, String userId, String sessionId, String mgrUname, String newPassword){
		logger.debug("Inside processUpdateManagerPass");

		ResponseWrapper result = null;
		List<NameValuePair> params = new ArrayList<NameValuePair>();

		params.add(new BasicNameValuePair("requestType", "UpdateManagerPass"));
		params.add(new BasicNameValuePair("agentId", agentId));
		params.add(new BasicNameValuePair("userId", userId));
		params.add(new BasicNameValuePair("sessionId", sessionId));
		params.add(new BasicNameValuePair("mgrUname", mgrUname));
		params.add(new BasicNameValuePair("newPassword", newPassword));

		final String url = Configurator.getConfig("webportal.url");

		result = HttpUtil.sendPost(url, params);

		logger.debug("Exiting processUpdateManagerPass(result=)");
		return result;
	}
}