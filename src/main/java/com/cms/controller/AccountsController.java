package com.cms.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.cms.bean.ResetAgentPasswordResponseData;
import com.cms.bean.ResponseWrapper;
import com.cms.dto.ChangePasswordDto;
import com.cms.dto.RequestStatusDto;
import com.cms.dto.ResetPasswordDto;
import com.cms.dto.UserDto;
import com.cms.service.AccountService;
import com.cms.service.AgentService;
import com.cms.util.Constants;
import com.cms.util.UserUtil;

@Controller
@RequestMapping(value="/{path:top|master|agent|shop|}")
public class AccountsController {

	private AgentService agentService;
	private AccountService accountService;
	
	@Autowired
	public AccountsController(AgentService agentService, AccountService accountService) {
		this.agentService = agentService;
		this.accountService = accountService;
	}
	
	@RequestMapping(value="/changePassword", method=RequestMethod.GET)
	public ModelAndView viewChangePassword(@PathVariable String path, @RequestParam(value="search", required=false) String search, HttpServletRequest request, HttpServletResponse response){
		Map<String, Object> model = new HashMap<>();
		
		UserDto userDtoInstance = (UserDto) request.getSession().getAttribute("userDto_" + path);
		
		ChangePasswordDto changePasswordDto = (ChangePasswordDto) request.getSession().getAttribute("changePasswordDto");
		if (changePasswordDto != null){
			model.put("changePasswordDto", changePasswordDto);
			request.getSession().removeAttribute("changePasswordDto");
		}else{
			changePasswordDto = new ChangePasswordDto();
			changePasswordDto.setAccountType(String.valueOf(userDtoInstance.getAccountType()));
			changePasswordDto.setAccountId(userDtoInstance.getUsername());
			model.put("changePasswordDto", changePasswordDto);
		}
		
		RequestStatusDto requestStatusDto = (RequestStatusDto) request.getSession().getAttribute("requestStatusDto");
		if (requestStatusDto != null){
			model.put("requestStatusDto", requestStatusDto);
			request.getSession().removeAttribute("requestStatusDto");
		}
		
		
		request.getSession().removeAttribute("userDto");
		
		model.put("userDto", userDtoInstance);
		
		///UserUtil.setResponseSessionCookie(userDtoInstance.getSessionId(), response);

		return new ModelAndView(Constants.View.CHANGE_PASSWORD, model);
	}
		
	@RequestMapping(value="/processChangeAccountPassword", method=RequestMethod.POST)
	public String processChangeAccountPassword(@PathVariable String path, @ModelAttribute ChangePasswordDto changePasswordDto, HttpServletRequest request){

		UserDto userDtoInstance = (UserDto) request.getSession().getAttribute("userDto_" + path);
		UserDto loggedUserDto = (UserDto)request.getSession().getAttribute("loggedUserDto");
		changePasswordDto.setAccountType(userDtoInstance.getAccountType());
		UserDto subUserDto = UserUtil.getSubUserDto(loggedUserDto, userDtoInstance);
		
		RequestStatusDto requestStatusDto = null;
		
		ResponseWrapper responseWrapper = accountService.processChangePassword(loggedUserDto, subUserDto, changePasswordDto);
		
		if (responseWrapper.getRespCode() == 0){
			//TODO: set successful message
			
		}else{
			//TODO: set error message 
		}
		
		
		requestStatusDto = new RequestStatusDto(responseWrapper.getRespCode(), responseWrapper.getMessage());
		request.getSession().setAttribute("requestStatusDto", requestStatusDto);		
		request.getSession().setAttribute("userDto", userDtoInstance);		
		request.getSession().getAttribute("changePasswordDto");
		return "redirect:/" +path+ "/changePassword";
	}
	
	@RequestMapping(value="/resetPassword", method=RequestMethod.GET)
	public ModelAndView viewResetPassword(@PathVariable String path, HttpServletRequest request){
		Map<String, Object> model = new HashMap<>();
		
		UserDto userDtoInstance = (UserDto) request.getSession().getAttribute("userDto_" + path);

		String targetUserId = (String) request.getSession().getAttribute("selectedAgentId_"+path);
		
		ResetPasswordDto resetPasswordDto = (ResetPasswordDto) request.getSession().getAttribute("resetPasswordDto");
		if (resetPasswordDto != null){
			model.put("resetPasswordDto", resetPasswordDto);
			request.getSession().removeAttribute("resetPasswordDto");
		}else{
			resetPasswordDto = new ResetPasswordDto();
			resetPasswordDto.setAccountId(targetUserId);
			model.put("resetPasswordDto", resetPasswordDto);
		}
		
		RequestStatusDto requestStatusDto = (RequestStatusDto) request.getSession().getAttribute("requestStatusDto");
		if (requestStatusDto != null){
			model.put("requestStatusDto", requestStatusDto);
			request.getSession().removeAttribute("requestStatusDto");
		}
		
		//model put
		model.put("userDto", userDtoInstance);

		return new ModelAndView(Constants.View.RESET_PASSWORD, model);
	}
	
	@RequestMapping(value="/processResetAccountPassword", method=RequestMethod.POST)
	public String processResetAccountPassword(@PathVariable String path, @ModelAttribute ResetPasswordDto resetPasswordDto, HttpServletRequest request){

		UserDto userDtoInstance = (UserDto) request.getSession().getAttribute("userDto_" + path);
		UserDto loggedUserDto = (UserDto)request.getSession().getAttribute("loggedUserDto");
		
		UserDto subUserDto = UserUtil.getSubUserDto(loggedUserDto, userDtoInstance);
		RequestStatusDto requestStatusDto = null;
		
		
		resetPasswordDto.setAccountId((String)request.getSession().getAttribute("selectedLoginId_"+path));
		resetPasswordDto.setAccountType(Constants.AccountType.AGENT);
		
		ResponseWrapper responseWrapper = accountService.processResetPassword(loggedUserDto, subUserDto, resetPasswordDto);

		if (responseWrapper.getRespCode() == 0){
			//TODO: set successful message
			ResetAgentPasswordResponseData responseData = responseWrapper.getDataAsSpecifiedType(ResetAgentPasswordResponseData.class);
			request.getSession().setAttribute("responseData", responseData);
		}else{
			//TODO: set error message 
		}
		
		requestStatusDto = new RequestStatusDto(responseWrapper.getRespCode(), responseWrapper.getMessage());
		request.getSession().setAttribute("requestStatusDto", requestStatusDto);		
		request.getSession().setAttribute("userDto", userDtoInstance);		
		request.getSession().setAttribute("resetPasswordDto", resetPasswordDto);
		
		return "redirect:/" +path+ "/resetPassword";
	}
	
	

	
}
