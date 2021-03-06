package com.cms.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.cms.bean.ResponseWrapper;
import com.cms.dto.AgentManagerListDto;
import com.cms.dto.ManagerDto;
import com.cms.dto.ManagerInfoDto;
import com.cms.dto.UserDto;
import com.cms.service.ManagerService;
import com.cms.util.Configurator;
import com.cms.util.HttpUtil;

@Service("managerService")
public class ManagerServiceImpl implements ManagerService{
	
	
	private static final Logger logger = LoggerFactory.getLogger(ManagerServiceImpl.class);
	
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
	@Override
	public ResponseWrapper processAddManager(UserDto loggedUser, UserDto softUser, ManagerDto dto){
		logger.debug("Inside processAddManager");

		ResponseWrapper result = null;
		List<NameValuePair> params = new ArrayList<NameValuePair>();

		params.add(new BasicNameValuePair("requestType", "AddManager"));
		params.add(new BasicNameValuePair("userID", loggedUser.getUsername()));
		params.add(new BasicNameValuePair("sessionID", loggedUser.getSessionId()));
		params.add(new BasicNameValuePair("subUserID", softUser.getUsername()));
		params.add(new BasicNameValuePair("firstName", dto.getFirstName()));
		params.add(new BasicNameValuePair("lastName", dto.getLastName()));
		params.add(new BasicNameValuePair("email", dto.getEmail()));
		params.add(new BasicNameValuePair("mobileNo", dto.getMobileNum()));
		params.add(new BasicNameValuePair("password", dto.getPassword()));

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
	@Override
	public ResponseWrapper processManagerInfo(UserDto loggedUser, UserDto softUser, ManagerInfoDto dto){
		logger.debug("Inside processManagerInfo");

		ResponseWrapper result = null;
		List<NameValuePair> params = new ArrayList<NameValuePair>();

		params.add(new BasicNameValuePair("requestType", "ManagerInfo"));
		params.add(new BasicNameValuePair("userID", loggedUser.getUsername()));
		params.add(new BasicNameValuePair("sessionID", loggedUser.getSessionId()));
		params.add(new BasicNameValuePair("subUserID", softUser.getUsername()));
		params.add(new BasicNameValuePair("targetUserID", dto.getTargetUserID()));
		params.add(new BasicNameValuePair("viewType", String.valueOf(dto.getViewType())));

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
	@Override
	public ResponseWrapper processUpdateManager(UserDto loggedUser, UserDto softUser, ManagerDto dto){
		logger.debug("Inside processUpdateManager");

		ResponseWrapper result = null;
		List<NameValuePair> params = new ArrayList<NameValuePair>();

		params.add(new BasicNameValuePair("requestType", "UpdateManager"));
		params.add(new BasicNameValuePair("userID", loggedUser.getUsername()));
		params.add(new BasicNameValuePair("sessionID", loggedUser.getSessionId()));
		params.add(new BasicNameValuePair("subUserID", softUser.getUsername()));
		params.add(new BasicNameValuePair("targetUserID", dto.getTargetUserId()));
		params.add(new BasicNameValuePair("firstName", dto.getFirstName()));
		params.add(new BasicNameValuePair("lastName", dto.getLastName()));
		params.add(new BasicNameValuePair("mobileNo", dto.getMobileNum()));
		params.add(new BasicNameValuePair("emailAdd", dto.getEmail()));

		final String url = Configurator.getConfig("webportal.url");

		result = HttpUtil.sendPost(url, params);

		logger.debug("Exiting processUpdateManager(result=)");
		return result;
	}
	
	public ResponseWrapper processManagerList(UserDto loggedUserDto, UserDto subUserDto, AgentManagerListDto agentManagerListDto){
		logger.debug("Inside processManagerList");

		ResponseWrapper result = null;
		List<NameValuePair> params = new ArrayList<NameValuePair>();

		params.add(new BasicNameValuePair("requestType", "ManagerList"));
		params.add(new BasicNameValuePair("userID", loggedUserDto.getUsername()));
		params.add(new BasicNameValuePair("sessionID", loggedUserDto.getSessionId()));
		params.add(new BasicNameValuePair("subUserID", subUserDto.getUsername()));
		params.add(new BasicNameValuePair("orderBy", agentManagerListDto.getRecord().getOrderBy()));
		params.add(new BasicNameValuePair("orderType", agentManagerListDto.getRecord().getOrderType()));

		final String url = Configurator.getConfig("webportal.url");

		result = HttpUtil.sendPost(url, params);

		logger.debug("Exiting processManagerList(result=)");
		return result;
	}
}
