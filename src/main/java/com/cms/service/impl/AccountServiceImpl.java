package com.cms.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.cms.bean.ResponseWrapper;
import com.cms.dto.ChangePasswordDto;
import com.cms.dto.ResetPasswordDto;
import com.cms.dto.UserDto;
import com.cms.service.AccountService;
import com.cms.util.Configurator;
import com.cms.util.HttpUtil;

@Service("accountService")
public class AccountServiceImpl implements AccountService{
	
	private static final Logger logger = LoggerFactory.getLogger(AccountServiceImpl.class);
	
	@Override
	public ResponseWrapper processResetPassword(UserDto loggedUser, UserDto softUser, ResetPasswordDto dto){
		logger.debug("Inside processResetPassword");

		ResponseWrapper result = null;
		List<NameValuePair> params = new ArrayList<NameValuePair>();

		params.add(new BasicNameValuePair("requestType", "ResetPassword"));
		params.add(new BasicNameValuePair("userID", loggedUser.getUsername()));
		params.add(new BasicNameValuePair("sessionID", loggedUser.getSessionId()));
		params.add(new BasicNameValuePair("subUserID", softUser.getUsername()));
		params.add(new BasicNameValuePair("targetUserID", dto.getAccountId()));
		params.add(new BasicNameValuePair("accountType", String.valueOf(dto.getAccountType())));
		params.add(new BasicNameValuePair("sendToChannel", dto.getSendToChannel()));
		params.add(new BasicNameValuePair("sendToValue",dto.getSendToValue()));

		final String url = Configurator.getConfig("webportal.url");

		result = HttpUtil.sendPost(url, params);

		logger.debug("Exiting processResetPassword(result=)");
		return result;
	}
	
	@Override
	public ResponseWrapper processChangePassword(UserDto loggedUser, UserDto softUser, ChangePasswordDto dto){
		logger.debug("Inside processChangePassword");

		ResponseWrapper result = null;
		List<NameValuePair> params = new ArrayList<NameValuePair>();

		params.add(new BasicNameValuePair("requestType", "ChangePassword"));
		params.add(new BasicNameValuePair("userID", loggedUser.getUsername()));
		params.add(new BasicNameValuePair("sessionID", loggedUser.getSessionId()));
		params.add(new BasicNameValuePair("subUserID", softUser.getUsername()));
		params.add(new BasicNameValuePair("targetUserID", dto.getAccountId()));
		params.add(new BasicNameValuePair("accountType", String.valueOf(dto.getAccountType())));
		params.add(new BasicNameValuePair("newPassword", dto.getNewPassword()));

		final String url = Configurator.getConfig("webportal.url");

		result = HttpUtil.sendPost(url, params);

		logger.debug("Exiting processChangePassword(result=)");
		return result;
	}
}