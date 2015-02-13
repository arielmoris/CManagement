package com.cms.service;

import com.cms.bean.ResponseWrapper;

public interface LoginService {
	public ResponseWrapper processLogin(String requestType, String username, String password);
	public ResponseWrapper processLogout(String userId, String sessionId);
	public ResponseWrapper processSoftLogin(String requestType, String username, String sessionId, String subUsername);
	public String getDownTypeCodeLevel (String typeCode);
}
