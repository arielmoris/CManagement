package com.cms.util;

public abstract class Constants {
	public class View{
		public static final String CREDIT_REPORT = "credit_report";
		public static final String LOGIN 		 = "Login";
		public static final String ADD_LOGIN = "add_login";
		public static final String AGENT_EARNING_REPORT_BY_ACCOUNT = "agent_earning_report_by_account";
		public static final String AGENT_EARNING_REPORT_BY_STATION = "agent_earning_report_by_station";
		public static final String AGENT_EARNING_REPORT_BY_DAY = "agent_earning_report_by_day";
		public static final String AGENT_EARNING_REPORT = "agent_earning_report";
		public static final String AGENT_GAME_PROFITABILITY_REPORT = "agent_game_profitability_report";
		public static final String CASHIER_REPORT = "cashier_report";
		public static final String CHANGE_PASSWORD = "change_password";
		public static final String COMMISSION_REPORT = "commission_report";
		public static final String CONTACT_US = "contact_us";
		public static final String DELETE_PLAYERS = "delete_players";
		public static final String DELETE_STATIONS = "delete_stations";
		public static final String DEPOSIT_STATION = "deposit_station";
		public static final String DEPOSIT = "deposit";
		public static final String GAME_PROFITABILITY_REPORT_BY_ACCOUNT = "game_profitability_report_by_account";
		public static final String LOGINS_LIST = "logins_list";
		public static final String MANAGE_SETTINGS = "manage_settings";
		public static final String ADD_PLAYER = "add_player";
		public static final String ADD_BULK_PLAYER = "add_bulk_player";
		public static final String PLAYER_RESET_ATTEMPTS = "player_reset_attempts";
		public static final String PLAYER_RESET_PASSWORD = "player_reset_password";
		public static final String PLAYER_STATUS = "player_status";
		public static final String PLAYERS_LIST = "players_list";
		public static final String PLAYER_CHANGE_BALANCE = "player_change_balance";
		public static final String REGISTER_ACCOUNT = "register_account";
		public static final String REGISTER_BULK_STATION = "register_bulk_station";
		public static final String REGISTER_STATION = "register_station";
		public static final String SEND_GAME = "send_game";
		public static final String STATION_RESET_ATTEMPTS = "station_reset_attempts";
		public static final String STATION_RESET_PASSWORD = "station_reset_password";
		public static final String STATION_STATUS = "station_status";
		public static final String STATIONS_LIST = "stations_list";
		public static final String UPDATE_LOGIN = "update_login";
		public static final String UPDATE_PLAYER = "update_player";
		public static final String UPDATE_STATION = "update_station";
		public static final String AGENTS_LIST = "agents_list";
		public static final String ADD_AGENT = "add_agent";
		public static final String AGENT_GAME_ANALYSIS_REPORT = "agent_game_analysis_report";
		public static final String CHANGE_BALANCE = "change_balance";
		public static final String STATUS = "status";
		public static final String RESET_PASSWORD = "reset_password";
		public static final String UPDATE_AGENT = "update_agent";
		public static final String CHANGE_COMMISSION_FEE = "change_commission_fee";
		public static final String PLAYCHECK_REPORT = "playcheck_report";
		public static final String PROG_GAMEPLAY_REPORT = "prog_game_play_report";
		public static final String PROG_WINS_REPORT = "prog_wins_report";
		public static final String TABLE_AGENTS_LIST = "table_agents_list";
		public static final String TABLE_PLAYERS_LIST = "table_players_list";
		public static final String TABLE_LOGINS_LIST = "table_logins_list";
		public static final String TABLE_CREDIT_REPORT = "table_credit_report";
		public static final String ADD_MANAGER= "add_manager";
		public static final String AGENT_MANAGER_INFO = "agent_manager_info";
		public static final String UPDATE_MANAGER_INFO = "update_manager_info";
		public static final String PLAYER_CHANGE_PASSWORD = "player_change_password";
		public static final String PLAYER_CHANGE_STATUS = "player_status";
		
	}
	
	public class Messages{
		
	}
	public class Error{
	
	}
	public class ActivityStatus{
	
	}
	public class UserStatus{
		public static final char ONLINE = 'O';
		public static final char OFFLINE = 'D';
		public static final char ACTIVE = 'A';
		public static final char BLOCKED = 'B';
	}
	public static class DataTableColumn{
		
	}
	
	public static class Actions{
	
	}
	
	public static class Loggers{
		public static final String CMS = "CMS";
	}
	
	public static class AccountType{
		public static final String TOP = "S";
		public static final String MASTER = "M";
		public static final String AGENT = "A";
		public static final String SHOP = "H";
		public static final String PLAYER = "P";
		public static final String CASHIER = "C";
	}
	
	
	public static class RequestType{
		public static final String AGENT_LOGIN = "AgentLogin";
		public static final String SOFT_LOGIN = "SoftLogin";
		public static final String AGENT_LOGOUT = "AgentLogout";
	}
	
	public static class ResponseCode{
		public static final int SUCCESS = 0;
		public static final int FAILED  = 1;
	}
}
