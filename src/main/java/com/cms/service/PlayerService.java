package com.cms.service;

import com.cms.bean.ResponseWrapper;
import com.cms.dto.AddPlayerDto;
import com.cms.dto.ChangePasswordDto;
import com.cms.dto.PlayerChangeStatusDto;
import com.cms.dto.PlayerCreditTranDto;
import com.cms.dto.PlayersListDto;
import com.cms.dto.UserDto;

public interface PlayerService {

	public ResponseWrapper processPlayerList(UserDto loggedUser, UserDto softUser, PlayersListDto playersListDto);
	
	public ResponseWrapper processAddPlayer(UserDto loggedUser, UserDto softUser, AddPlayerDto dto);
	
	public ResponseWrapper processAddBulkPlayer(UserDto loggedUser, UserDto softUser, AddPlayerDto dto);
	
	public ResponseWrapper processPlayerInfo(UserDto loggedUser, UserDto softUser, String pUsername);
	
	public ResponseWrapper processPlayerCreditTran(UserDto loggedUser, UserDto softUser, PlayerCreditTranDto dto);
	
	public ResponseWrapper processChangePlayerStatus(UserDto loggedUser, UserDto softUser, PlayerChangeStatusDto dto);

}
