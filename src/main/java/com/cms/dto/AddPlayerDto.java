package com.cms.dto;

public class AddPlayerDto {
	
	private String username;
	private String password;
	private String prefix;
	private String playerCount;
	
	
	public String getPrefix() {
		return prefix;
	}
	public void setPrefix(String prefix) {
		this.prefix = prefix;
	}
	public String getPlayerCount() {
		return playerCount;
	}
	public void setPlayerCount(String playerCount) {
		this.playerCount = playerCount;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
}
