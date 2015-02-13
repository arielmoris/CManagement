package com.cms.service;

import com.cms.bean.ResponseWrapper;
import com.cms.dto.UserDto;

public interface AgentService {

	public ResponseWrapper processAddAgent(String firstName, String lastName,
			String password, String mobileNo, String email, String balance,
			String commRate, String sendToChannel, String sendToValue);
	
	public ResponseWrapper processAgentBalance(String agentId, String userId, String sessionId, String subAgentId);
	
	public ResponseWrapper processAgentCreditTran(String agentId, String userId, String sessionId, String subAgentId, String tranType, String amount);
	
	public ResponseWrapper processAgentStatus(String agentId, String userId, String sessionId, String subAgentId, String managerId);
	
	public ResponseWrapper processChangeAgentStatus(String agentId, String userId, String sessionId, String subAgentId, String mgrUsername, String targetStatus);
	
	public ResponseWrapper processResetAgentPassword(String agentId, String userId, String sessionId, String mgrUsername, String channel, String value);
	
	public ResponseWrapper processAddManager(String agentId, String userId, String sessionId, String firstName, String lastName, String email, String mobileNo, String password);
	
	public ResponseWrapper processManagerInfo(String agentId, String userId, String sessionId, String managerId, String viewType);
	
	public ResponseWrapper processUpdateManager(String agentId, String userId, String sessionId, String mgrUname, String firstName, String lastName, String mobileNo, String emailAdd);
	
	public ResponseWrapper processUpdateManagerPass(String agentId, String userId, String sessionId, String mgrUname, String newPassword);
	
	public ResponseWrapper processAgentList(String userId,String sessionId,	String subUserId,	String subSessionId,
			String firstName,String lastName,String mobileNo,String orderBy,String orderType,int size,int page);
}
