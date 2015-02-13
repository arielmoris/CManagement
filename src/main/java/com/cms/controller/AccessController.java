package com.cms.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.cms.bean.LoginResponseData;
import com.cms.bean.ResponseWrapper;

import com.cms.dto.UserDto;

import com.cms.service.LoginService;
import com.cms.util.Constants;
import com.cms.util.WebLogger;
import com.cms.util.WebUtil;

@Controller
public class AccessController {

	private LoginService loginService;

	@Autowired
	public AccessController(LoginService loginService) {
		this.loginService = loginService;

	}

	Logger logger = LoggerFactory.getLogger(AccessController.class);

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView loginView(
			@RequestParam(value = "language", required = false) String languageSelected,
			HttpServletRequest request) {
		// if(session.getAttribute("userDto") != null){
		// return new ModelAndView(Constants.View.LOGIN);
		// }
		//
		Map<String, Object> model = new HashMap<>();

		UserDto userDtoSet = new UserDto();
		userDtoSet.setLanguageSelected(languageSelected);
		model.put("userDto", userDtoSet);
		
		String error = (String) request.getSession().getAttribute("error");
		String logout = (String) request.getSession().getAttribute("logout");
		 if(error != null){
			 model.put("error", error);
			 request.getSession().removeAttribute("error");
		 } else if(logout != null){
			model.put("msg",  "success.logout");
			request.getSession().removeAttribute("logout");		
		}
		return new ModelAndView(Constants.View.LOGIN, model);
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String loginPost(@ModelAttribute UserDto userDto,
			HttpServletRequest request) {
		logger.info("-------- LOGIN :: " + userDto.getUsername());
		String view = "";
		HttpSession session = request.getSession();

		// TODO: invoke login service
		ResponseWrapper response = loginService.processLogin(
				Constants.RequestType.AGENT_LOGIN, userDto.getUsername(),
				userDto.getPassword());
		if (response.getRespCode() == 0) {

			LoginResponseData responseData = response
					.getDataAsSpecifiedType(LoginResponseData.class);

			userDto = new UserDto();
			userDto.setUsername(responseData.getUsername());
			userDto.setSessionId(responseData.getSessionId());
			userDto.setFullName(responseData.getFullName());
			userDto.setBalance(responseData.getBalance());
			userDto.setCurrencyCode(responseData.getCurrencyCode());
			userDto.setAccountType(String.valueOf(responseData.getAccountType()
					.charAt(0)));
			userDto.setIsSuperUserFlag(responseData.getAccountType().charAt(0) == '0' ? false
					: true);
			userDto.setAgentId(responseData.getAgentId());

			session.setAttribute("userDto", userDto);

			String accountType = userDto.getAccountType();
			if (accountType.equals(Constants.AccountType.AGENT)) {
				view = "redirect:/" + Constants.View.STATIONS_LIST;
			} else if (accountType.equals(Constants.AccountType.TOP)) {
				view = "redirect:/" + Constants.View.AGENTS_LIST;
			}

			logger.info("Message : Successful login");
			new WebLogger().logData(WebUtil.getClientIpAddr(request),
					userDto.getUsername(), "User Logs in.");

		} else {
			logger.info("Error response code for loginPost");
			
			String errorMsg = response.getMessage();
			request.getSession().setAttribute("error", errorMsg);
			
			view = "redirect:/" + Constants.View.LOGIN;
		}
		return view;
	}

	@RequestMapping(value = "/logout")
	public String logout(HttpSession session) {
		UserDto userDto = (UserDto) session.getAttribute("userDto");
		logger.info("-------- LOGOUT ::" + userDto.getUsername());
		session.invalidate();
		
		ResponseWrapper response = loginService.processLogout(userDto.getUsername(), userDto.getSessionId());
		session.setAttribute("logout",  "success.logout");
		
		return "redirect:/" + Constants.View.LOGIN + "?logout";
	}

	@RequestMapping(value = "/changePassword", method = RequestMethod.GET)
	public ModelAndView viewChangePassword(HttpServletRequest request) {
		Map<String, Object> model = new HashMap<>();
		
	
		return new ModelAndView(Constants.View.CHANGE_PASSWORD, model);
	}
	
	
	@RequestMapping(value = "/softLogin", method = RequestMethod.POST)
	public String softLoginPost(@RequestParam(value="subUserID", required=false)String subUserID, HttpServletRequest request) {
		
		String view = "";
		HttpSession session = request.getSession();
		UserDto userDto = (UserDto) session.getAttribute("userDto");
		
		
		if (subUserID != null && !subUserID.isEmpty()){
			ResponseWrapper response = loginService.processSoftLogin(
					Constants.RequestType.SOFT_LOGIN, userDto.getUsername(),
					userDto.getSessionId(), subUserID);
			if (response.getRespCode() == 0) {
				
				LoginResponseData responseData = response
						.getDataAsSpecifiedType(LoginResponseData.class);

				userDto = new UserDto();
				userDto.setUsername(responseData.getUsername());
				userDto.setSessionId(responseData.getSessionId());
				userDto.setFullName(responseData.getFullName());
				userDto.setBalance(responseData.getBalance());
				userDto.setCurrencyCode(responseData.getCurrencyCode());
				userDto.setAccountType(String.valueOf(responseData.getAccountType()
						.charAt(0)));
				userDto.setIsSuperUserFlag(responseData.getAccountType().charAt(0) == '0' ? false
						: true);
				userDto.setAgentId(responseData.getAgentId());

				session.setAttribute("userDto_" + userDto.getAccountType() , userDto);

				String accountType = userDto.getAccountType();
				if (accountType.equals(Constants.AccountType.AGENT)) {
					view = "redirect:/" + Constants.View.STATIONS_LIST;
				} else if (accountType.equals(Constants.AccountType.TOP)) {
					view = "redirect:/" + Constants.View.AGENTS_LIST;
				}

				logger.info("Message : Successful login");
				new WebLogger().logData(WebUtil.getClientIpAddr(request),
						userDto.getUsername(), "User Logs in.");

			} else {
				logger.info("Message : Error is empty");
				String errorMsg = response.getMessage();
				request.getSession().setAttribute("error", errorMsg);
				
				view = "redirect:/" + Constants.View.LOGIN;
			}
		}
		return view;
	}
}
