package com.cms.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.cms.bean.ResponseWrapper;
import com.cms.service.LoginService;
import com.cms.util.Configurator;
import com.cms.util.Constants;
import com.cms.util.HttpUtil;

@Service(value="loginService")
public class LoginServiceImpl implements LoginService{

	final static Logger logger = LoggerFactory.getLogger(LoginServiceImpl.class);

	public ResponseWrapper processLogin(String requestType, String username, String password){
		logger.debug("Inside processLogin(username={}]", username);
		
		ResponseWrapper result = null;
		List<NameValuePair> params = new ArrayList<NameValuePair>();

		params.add(new BasicNameValuePair("requestType",requestType));
		params.add(new BasicNameValuePair("username",username));
		params.add(new BasicNameValuePair("password",password));

		final String url = Configurator.getConfig("webportal.url");
		
		result = HttpUtil.sendPost(url, params);
		
		logger.debug("Exiting processLogin(result={})",new StringBuilder().append(result).toString());
		return result;
	}
	
	public ResponseWrapper processLogout(String userId, String sessionId){
		logger.debug("Inside processLogin(userId={}]", userId);
		
		ResponseWrapper result = null;
		List<NameValuePair> params = new ArrayList<NameValuePair>();

		params.add(new BasicNameValuePair("requestType",Constants.RequestType.AGENT_LOGOUT));
		params.add(new BasicNameValuePair("userId",userId));
		params.add(new BasicNameValuePair("sessionId",sessionId));

		final String url = Configurator.getConfig("webportal.url");
		
		result = HttpUtil.sendPost(url, params);
		
		logger.debug("Exiting processLogin(result={})",new StringBuilder().append(result).toString());
		return result;
	}
	
	public ResponseWrapper processSoftLogin(String requestType, String username, String sessionId, String subUsername){
		logger.debug("Inside processSoftLogin(username={}]", subUsername);
		
		ResponseWrapper result = null;
		List<NameValuePair> params = new ArrayList<NameValuePair>();

		params.add(new BasicNameValuePair("requestType",requestType));
		params.add(new BasicNameValuePair("userId",username));
		params.add(new BasicNameValuePair("sessionId",sessionId));
		params.add(new BasicNameValuePair("subUserID",subUsername));
		
		
		final String url = Configurator.getConfig("webportal.url");
		
		result = HttpUtil.sendPost(url, params);
		
		logger.debug("Exiting processLogin(result={})",new StringBuilder().append(result).toString());
		return result;
	}
	
	public String getDownTypeCodeLevel (String typeCode){
		String nextTypeCode = null;
		
		switch(typeCode){
		case Constants.AccountType.TOP:
			nextTypeCode = Constants.AccountType.MASTER;break;
		case Constants.AccountType.MASTER:
			nextTypeCode = Constants.AccountType.AGENT;break;
		case Constants.AccountType.AGENT:
			nextTypeCode = Constants.AccountType.SHOP;break;
		
		}
		return nextTypeCode;
	}
	
}