package com.cms.util;

import java.util.HashMap;
import java.util.Map;

public abstract class FormValidator {
	public static Map<String, String> validateAddAgent(Map<String, String[]> params){
		Map<String, String> errorMap = new HashMap<String, String>();
		
		String[] afirst_name = params.get("first_name");
		if(afirst_name == null || isNull(afirst_name[0])){
			errorMap.put("first_name", "This field is required");
		}
		
		String[] alast_name = params.get("last_name");
		if(alast_name == null || isNull(alast_name[0])){
			errorMap.put("last_name", "This field is required");
		}else{
			
		}
		
		return errorMap;
	}
	
	private static boolean isNull(String str){
		return str == null || str.equals("");
	}
}
