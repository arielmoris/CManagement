<%@page import="com.cms.util.UserUtil"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.cms.dto.UserDto" %>
<%
	UserDto userDto = (UserDto)request.getAttribute("userDto");
	UserDto loggedUserDto = (UserDto)request.getSession().getAttribute("loggedUserDto");
	
	request.setAttribute("js_folder", "/ClientManagementSystem/scripts");
	request.setAttribute("css_folder", "/ClientManagementSystem/styles");
	request.setAttribute("images_folder", "/ClientManagementSystem/images");
	request.setAttribute("context", "/ClientManagementSystem");
	String accountType = userDto.getAccountType();
	request.setAttribute("request_path", "/ClientManagementSystem/"+UserUtil.getPathByAccountType(accountType));
	
	if (!loggedUserDto.getAccountType().equals(userDto.getAccountType())){
		request.setAttribute("isSoftLogin", true);
	}else{
		request.setAttribute("isSoftLogin", false);
	}
%>
<link rel="stylesheet" href="${css_folder}/bootstrap-datetimepicker.min.css" />
<link rel="stylesheet" href="${css_folder}/bootstrap.css" />
<link rel="stylesheet" href="${css_folder}/new_style.css" />
<link rel="stylesheet" href="${css_folder}/main.css" />

<script src="${js_folder}/jquery.js" type="text/javascript"></script>