package com.cms.service;

import com.cms.bean.ResponseWrapper;
import com.cms.dto.UserDto;

public interface LoginService {
	public ResponseWrapper processLogin(UserDto userDto);
	
	public ResponseWrapper processLogout(UserDto userDto);
	
	public ResponseWrapper processSoftLogin(UserDto loggedUserDto, String subUserId);
	
	
}
