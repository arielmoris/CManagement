package com.cms.service;

import com.cms.bean.ResponseWrapper;
import com.cms.dto.AgentManagerListDto;
import com.cms.dto.ManagerDto;
import com.cms.dto.ManagerInfoDto;
import com.cms.dto.UserDto;

public interface ManagerService {
	
	public ResponseWrapper processAddManager(UserDto loggedUser, UserDto softUser, ManagerDto dto);
	
	public ResponseWrapper processManagerInfo(UserDto loggedUser, UserDto softUser, ManagerInfoDto dto);

	public ResponseWrapper processUpdateManager(UserDto loggedUser, UserDto softUser, ManagerDto dto);
	
	public ResponseWrapper processManagerList(UserDto loggedUserDto, UserDto subUserDto, AgentManagerListDto agentManagerListDto);
}
