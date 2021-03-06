package com.cms.dto;

import java.util.Collection;

import com.cms.bean.PlayerListResponseData;
import com.cms.bean.Record;


public class PlayersListDto {

	private String username;
	private Record record;
	private Collection<PlayerListResponseData> playerListResponseData;
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public Record getRecord() {
		return record;
	}
	public void setRecord(Record record) {
		this.record = record;
	}
	public Collection<PlayerListResponseData> getPlayerListResponseData() {
		return playerListResponseData;
	}
	public void setPlayerListResponseData(
			Collection<PlayerListResponseData> playerListResponseData) {
		this.playerListResponseData = playerListResponseData;
	}
	
}
