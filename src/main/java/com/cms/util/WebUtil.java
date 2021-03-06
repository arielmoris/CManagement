package com.cms.util;

import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.cms.bean.Order;
import com.cms.bean.Record;
import com.cms.dto.AgentManagerListDto;
import com.cms.dto.AgentsListDto;
import com.cms.dto.DataTableDto;
import com.cms.dto.PlayersListDto;

public abstract class WebUtil {
	
	public static String getClientIpAddr(HttpServletRequest request) {
        String ip = request.getHeader("X-Forwarded-For");  
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {  
            ip = request.getHeader("Proxy-Client-IP");  
        }  
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {  
            ip = request.getHeader("WL-Proxy-Client-IP");  
        }  
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {  
            ip = request.getHeader("HTTP_CLIENT_IP");  
        }  
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {  
            ip = request.getHeader("HTTP_X_FORWARDED_FOR");  
        }  
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {  
            ip = request.getRemoteAddr();  
        }
        return ip;  
    }
	
	public static void printHeaders(HttpServletRequest request){
		Enumeration<String> headerMap = request.getHeaderNames();
		System.out.println("<<<<<<<<<<<< Headers ->>>>>>>>>>");
		while(headerMap.hasMoreElements()){
			String key = (String) headerMap.nextElement();
			System.out.println(key+" ----> "+request.getHeader(key));
		}
	}
	
	
	/**
	 * @author ariel
	 * @param map
	 * @return
	 */
	public static DataTableDto mapDataTableRequest(Map<String, String[]> map){
		DataTableDto dataTableDto = new DataTableDto();
		
		String[] sStart  	= map.get("start");
		int start 			= 0;
		if(sStart != null && !isNull(sStart[0])){
			start = Integer.parseInt(sStart[0]);
		}
		
		String[] sLength	=  map.get("length");
		int size			= 0;
		if(sLength != null && !isNull(sLength[0])){
			size = Integer.parseInt(sLength[0]);
		}
		
		String[] sSearchValue = map.get("search[value]");
		String searchValue	  = sSearchValue[0];
		
		List<Order> orderList = new ArrayList<Order>();
		Order order = null;
		String columnKey, dirKey;
		String[] columnValue, dirValue;
		
		for(int i = 0; true ; i++){
			columnKey = "order["+i+"][column]";
			dirKey 	  = "order["+i+"][dir]";
			if(map.containsKey(columnKey) && map.containsKey(dirKey)){
				order = new Order();
				
				columnValue = map.get(columnKey);
				if(columnValue != null && !isNull(columnValue[0])){
					order.setColumnNo(Integer.parseInt(columnValue[0]));
				}
				dirValue = map.get(dirKey);
				order.setOrderType(dirValue[0]);
				
				orderList.add(order);
			}else{
				break;
			}
		}
		
		dataTableDto.setStart(start);
		dataTableDto.setSize(size);
		dataTableDto.setSearchValue(searchValue);
		dataTableDto.setOrdering(orderList);
		
		return dataTableDto;
	}
	
	public static AgentsListDto mapAgentsListRequest(Map<String, String[]> map){
		AgentsListDto agentsListDto = new AgentsListDto();
		
		String[] sName = map.get("name");
		if(sName != null && !isNull(sName[0])){
			agentsListDto.setFirstName(sName[0]);
		}
		
		String[] sLname = map.get("lname");
		if(sLname != null && !isNull(sLname[0])){
			agentsListDto.setLastName(sLname[0]);
		}
		
		String[] sMobileNumber = map.get("mobileNumber");
		if(sMobileNumber != null && !isNull(sMobileNumber[0])){
			agentsListDto.setMobileNum(sMobileNumber[0]);
		}
		
		Record record = mapRecord(map);
		agentsListDto.setRecord(record);
		
		return agentsListDto;
	}
	
	public static AgentManagerListDto mapAgentManagerListRequest(Map<String, String[]> map){
		AgentManagerListDto agentManagerListDto = new AgentManagerListDto();
		
		Record record = mapRecord(map);
		agentManagerListDto.setRecord(record);
		
		return agentManagerListDto;
	}
	
	public static Record mapRecord(Map<String, String[]> map){
		Record record = new Record();
		
		String[] sOrderBy = map.get("orderBy");
		if(sOrderBy != null && !isNull(sOrderBy[0])){
			record.setOrderBy(sOrderBy[0]);
		}
		
		String[] sOrderType = map.get("orderType");
		if(sOrderType != null && !isNull(sOrderType[0])){
			record.setOrderType(sOrderType[0]);
		}
	
		return record;
	}
	
	private static boolean isNull(String str){
		return str == null || str.equals("");
	}
	
	public static PlayersListDto mapPlayersListRequest(Map<String, String[]> map){
		PlayersListDto playersListDto = new PlayersListDto();
		
		String[] sName = map.get("username");
		if(sName != null && !isNull(sName[0])){
			playersListDto.setUsername(sName[0]);
		}
		
		Record record = mapRecord(map);
		playersListDto.setRecord(record);
		
		return playersListDto;
	}
	
}
