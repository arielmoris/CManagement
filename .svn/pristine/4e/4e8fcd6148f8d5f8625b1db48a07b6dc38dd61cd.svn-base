package com.cms.util;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import com.cms.dto.UserDto;

public class UserUtil {
	
	private static final String[] userDtoNames = {"userDto_" + Constants.AccountType.TOP, 
											"userDto_" + Constants.AccountType.MASTER,
											"userDto_" + Constants.AccountType.AGENT,
											"userDto_" + Constants.AccountType.SHOP};
	
	public static String getUserDtoInstanceName(HttpServletRequest request) {
		Cookie[] cookies = request.getCookies();


		String userDtoInstance = null;
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				if ("sessionId".equals(cookie.getName())) {
					String sessionId = cookie.getValue();
					UserDto userDto = null;
					for (String userDtoName : userDtoNames) {
						userDto = (UserDto) request.getSession().getAttribute(
								userDtoName);
						if (userDto.getSessionId().equals(sessionId)) {
							userDtoInstance = userDtoName;
							break;
						}
					}
				}
			}

		}
		return userDtoInstance;
	}
	
	
//	public static String getLoggedUserDto(HttpServletRequest request) {
//		String loggedUserDto = null;
//		
//		for (String userDtoName : userDtoNames){
//			if (request.getSession().getAttribute(userDtoName)!= null){
//				
//			}
//		}
//		
//	}
}
