package com.cms.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.cms.bean.ResponseWrapper;
import com.cms.dto.AddPlayerDto;
import com.cms.dto.PlayerChangeStatusDto;
import com.cms.dto.PlayerCreditTranDto;
import com.cms.dto.PlayersListDto;
import com.cms.dto.UserDto;
import com.cms.service.PlayerService;
import com.cms.util.Configurator;
import com.cms.util.HttpUtil;

@Service("playerService")
public class PlayerServiceImpl implements PlayerService{
	
	private static final Logger logger = LoggerFactory.getLogger(PlayerServiceImpl.class);
	
	@Override
	public ResponseWrapper processPlayerList(UserDto loggedUser, UserDto softUser, PlayersListDto playersListDto)
	{
		logger.debug("Inside processPlayerList");

		ResponseWrapper result = null;
		List<NameValuePair> params = new ArrayList<NameValuePair>();
		
		params.add(new BasicNameValuePair("requestType", "PlayerList"));
		params.add(new BasicNameValuePair("userID", loggedUser.getUsername()));
		params.add(new BasicNameValuePair("sessionID", loggedUser.getSessionId()));
		params.add(new BasicNameValuePair("subUserID", softUser.getUsername()));
		params.add(new BasicNameValuePair("pUsername", playersListDto.getUsername()));
		params.add(new BasicNameValuePair("orderBy", playersListDto.getRecord().getOrderBy()));
		params.add(new BasicNameValuePair("orderType", playersListDto.getRecord().getOrderType() == null?"asc":playersListDto.getRecord().getOrderType()));
		
		final String url = Configurator.getConfig("webportal.url");

		result = HttpUtil.sendPost(url, params);

		logger.debug("Exiting processPlayerList(result=)");
		return result;
	}
	
	@Override
	public ResponseWrapper processAddPlayer(UserDto loggedUser, UserDto softUser, AddPlayerDto dto) {
		
		logger.debug("Inside processAddPlayer");

		ResponseWrapper result = null;
		List<NameValuePair> params = new ArrayList<NameValuePair>();

		params.add(new BasicNameValuePair("requestType", "AddPlayer"));
		params.add(new BasicNameValuePair("userID", loggedUser.getUsername()));
		params.add(new BasicNameValuePair("sessionID", loggedUser.getSessionId()));
		params.add(new BasicNameValuePair("subUserID", softUser.getUsername()));
		params.add(new BasicNameValuePair("pUsername", dto.getUsername()));
		params.add(new BasicNameValuePair("password", dto.getPassword()));

		final String url = Configurator.getConfig("webportal.url");

		result = HttpUtil.sendPost(url, params);

		logger.debug("Exiting processAddPlayer(result=)");
		return result;
	}
	
	@Override
	public ResponseWrapper processAddBulkPlayer(UserDto loggedUser, UserDto softUser, AddPlayerDto dto) {
		
		logger.debug("Inside processAddBulkPlayer");

		ResponseWrapper result = null;
		List<NameValuePair> params = new ArrayList<NameValuePair>();

		params.add(new BasicNameValuePair("requestType", "AddBulkPlayer"));
		params.add(new BasicNameValuePair("userID", loggedUser.getUsername()));
		params.add(new BasicNameValuePair("sessionID", loggedUser.getSessionId()));
		params.add(new BasicNameValuePair("subUserID", softUser.getUsername()));
		params.add(new BasicNameValuePair("prefix", dto.getPrefix()));
		params.add(new BasicNameValuePair("playerCount", dto.getPlayerCount()));
		params.add(new BasicNameValuePair("password", dto.getPassword()));

		final String url = Configurator.getConfig("webportal.url");

		result = HttpUtil.sendPost(url, params);

		logger.debug("Exiting processAddBulkPlayer(result=)");
		return result;
	}
	
	@Override
	public ResponseWrapper processPlayerInfo(UserDto loggedUser, UserDto softUser, String pUsername){
		logger.debug("Inside processManagerInfo");

		ResponseWrapper result = null;
		List<NameValuePair> params = new ArrayList<NameValuePair>();

		params.add(new BasicNameValuePair("requestType", "PlayerInfo"));
		params.add(new BasicNameValuePair("userID", loggedUser.getUsername()));
		params.add(new BasicNameValuePair("sessionID", loggedUser.getSessionId()));
		params.add(new BasicNameValuePair("subUserID", softUser.getUsername()));
		params.add(new BasicNameValuePair("pUsername", pUsername));

		final String url = Configurator.getConfig("webportal.url");

		result = HttpUtil.sendPost(url, params);

		logger.debug("Exiting processManagerInfo(result=)");
		return result;
	}
	
	@Override
	public ResponseWrapper processPlayerCreditTran(UserDto loggedUser, UserDto softUser, PlayerCreditTranDto dto){
		logger.debug("Inside processManagerInfo");

		ResponseWrapper result = null;
		List<NameValuePair> params = new ArrayList<NameValuePair>();

		params.add(new BasicNameValuePair("requestType", "PlayerCreditTran"));
		params.add(new BasicNameValuePair("userID", loggedUser.getUsername()));
		params.add(new BasicNameValuePair("sessionID", loggedUser.getSessionId()));
		params.add(new BasicNameValuePair("subUserID", softUser.getUsername()));
		params.add(new BasicNameValuePair("pUsername", dto.getUsername()));
		params.add(new BasicNameValuePair("tranType", dto.getTranType()));
		params.add(new BasicNameValuePair("amount", String.valueOf(dto.getAmount())));
		
		final String url = Configurator.getConfig("webportal.url");

		result = HttpUtil.sendPost(url, params);

		logger.debug("Exiting processManagerInfo(result=)");
		return result;
	}
	
	@Override
	public ResponseWrapper processChangePlayerStatus(UserDto loggedUser, UserDto softUser, PlayerChangeStatusDto dto){
		logger.debug("Inside processChangePlayerStatus");

		ResponseWrapper result = null;
		List<NameValuePair> params = new ArrayList<NameValuePair>();

		params.add(new BasicNameValuePair("requestType", "ChangePlayerStatus"));
		params.add(new BasicNameValuePair("userID", loggedUser.getUsername()));
		params.add(new BasicNameValuePair("sessionID", loggedUser.getSessionId()));
		params.add(new BasicNameValuePair("subUserID", softUser.getUsername()));
		params.add(new BasicNameValuePair("pUsername", dto.getTargetUserID()));
		params.add(new BasicNameValuePair("status", String.valueOf(dto.getStatus())));

		final String url = Configurator.getConfig("webportal.url");

		result = HttpUtil.sendPost(url, params);

		logger.debug("Exiting processChangePlayerStatus(result=)");
		return result;
	}

	
}
