package com.cms.service;

import com.cms.bean.ResponseWrapper;
import com.cms.dto.AddNewAgentDto;
import com.cms.dto.AgentsListDto;
import com.cms.dto.ChangeAgentBalanceDto;
import com.cms.dto.ChangeAgentStatusDto;
import com.cms.dto.CreditDebitAgentDto;
import com.cms.dto.UserDto;

public interface AgentService {

	public ResponseWrapper processAgentList(UserDto loggedUserDto, UserDto subUserDto, AgentsListDto agentsListDto);
	
	public ResponseWrapper processAddAgent(UserDto loggedUserDto, UserDto subUserDto, AddNewAgentDto addNewAgentDto);
	
	public ResponseWrapper processAgentBalance(UserDto loggedUserDto, UserDto subUserDto, String targetUserId);
	
	public ResponseWrapper processAgentCreditTran(UserDto loggedUserDto, UserDto subUserDto, ChangeAgentBalanceDto changeAgentBalanceDto);
	
	public ResponseWrapper processAgentStatus(UserDto loggedUserDto, UserDto subUserDto, String targetUserId);
	
	public ResponseWrapper processChangeAgentStatus(UserDto loggedUserDto, UserDto subUserDto, ChangeAgentStatusDto changeAgentStatusDto);
}
