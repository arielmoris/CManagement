package com.cms.service;

import com.cms.bean.ResponseWrapper;
import com.cms.dto.ChangePasswordDto;
import com.cms.dto.ResetPasswordDto;
import com.cms.dto.UserDto;

public interface AccountService {

	public ResponseWrapper processResetPassword(UserDto loggedUser, UserDto softUser, ResetPasswordDto dto);

	public ResponseWrapper processChangePassword(UserDto loggedUser, UserDto softUser, ChangePasswordDto dto);

}
