package com.cms.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.cms.bean.AgentBalanceResponseData;
import com.cms.bean.ResponseWrapper;
import com.cms.dto.AddNewAgentDto;
import com.cms.dto.AgentsListDto;
import com.cms.dto.RequestStatusDto;
import com.cms.dto.UserDto;
import com.cms.service.AgentService;
import com.cms.util.Configurator;
import com.cms.util.Constants;
import com.cms.util.UserUtil;
import com.cms.util.WebUtil;


@Controller
@RequestMapping(value="/{path:top|master|agent|shop|}")
public class ManageAgentsAccountController {

	private AgentService agentService;

	@Autowired
	public ManageAgentsAccountController(AgentService agentService) {
		this.agentService = agentService;

	}
	
	@RequestMapping(value="/agentsList", method=RequestMethod.GET)
	public ModelAndView tableAgentsList(HttpServletRequest request){
		Map<String, Object> model = new HashMap<>();
		return new ModelAndView(Constants.View.AGENTS_LIST, model);
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value="/table/agentsList", method=RequestMethod.POST)
	public ModelAndView viewAgentList(@PathVariable String path, HttpServletRequest request){
		UserDto userDtoInstance = (UserDto) request.getSession().getAttribute("userDto_" + path);
		UserDto loggedUserDto = UserUtil.getLoggedUserDto(request);
		
		AgentsListDto agentsListDto = WebUtil.mapAgentsListRequest(request.getParameterMap());
		Map<String, Object> model = new HashMap<>();
		RequestStatusDto requestStatus = null;
		try {
			ResponseWrapper responseWrapper = agentService.processAgentList(loggedUserDto.getUsername(), loggedUserDto.getSessionId(), 
				userDtoInstance.getUsername(), userDtoInstance.getSessionId(), 
							loggedUserDto.getFullName(), loggedUserDto.getFullName(),
							loggedUserDto.getMobileNo(), agentsListDto.getRecord().getOrderBy(), agentsListDto.getRecord().getOrderType(),
							agentsListDto.getRecord().getSize(),agentsListDto.getRecord().getPage());
				
			if (responseWrapper.getRespCode() == 0) {
				List responseData = responseWrapper.getDataAsCollection();
				agentsListDto.setAgentListResponseDataTable(responseData);
			}
			requestStatus = new RequestStatusDto(responseWrapper.getRespCode(), responseWrapper.getMessage());
		} catch (Exception e) {
			e.printStackTrace();
			requestStatus = new RequestStatusDto(0, Configurator.getConfig("generic.server.error"));
		}
		
		model.put("requestStatus", requestStatus);
		model.put("agentsListDto", agentsListDto);
		model.put("userDto", userDtoInstance);

		return new ModelAndView(Constants.View.TABLE_AGENTS_LIST, model);
	}
	
	@RequestMapping(value="/addAgent", method=RequestMethod.GET)
	public ModelAndView viewAddAgent(@PathVariable String path, HttpServletRequest request){
		Map<String, Object> model = new HashMap<>();
		System.out.println("path "+path);
		UserDto userDtoInstance = (UserDto) request.getSession().getAttribute("userDto_" + path);
		
		AddNewAgentDto addNewAgentDto = null;	
		
		if (request.getSession().getAttribute("addNewAgentDto") == null){
			addNewAgentDto = new AddNewAgentDto();
		}else{
			addNewAgentDto = (AddNewAgentDto) request.getSession().getAttribute("addNewAgentDto");
		}
		
		///remove from session
		request.getSession().removeAttribute("userDto");
		request.getSession().removeAttribute("addNewAgentDto");
		
		//put to model
		model.put("userDto", userDtoInstance);
		model.put("addNewAgentDto", addNewAgentDto);		
		return new ModelAndView(Constants.View.ADD_AGENT, model);
	}
	
	@RequestMapping(value="/changeBalance", method=RequestMethod.GET)
	public ModelAndView viewChangeBalance(HttpServletRequest request){
		Map<String, Object> model = new HashMap<>();
		
		///get fields
		String increase_amount = (String) request.getSession().getAttribute("increase_amount");
		String decrease_amount = (String) request.getSession().getAttribute("decrease_amount");
		String direction = (String)request.getSession().getAttribute("direction");
		
		if (direction != null){
			if (increase_amount != null && !increase_amount.isEmpty()){
				model.put("increase_amount", increase_amount);
			}else if (decrease_amount != null && !decrease_amount.isEmpty()){
				model.put("decrease_amount", increase_amount);
			}
		}
		
		///remove session
		
		UserDto userDto = UserUtil.getUserDtoInstance(request);
		
		return new ModelAndView(Constants.View.CHANGE_BALANCE, model);
	}
	
	@RequestMapping(value="/status", method=RequestMethod.GET)
	public ModelAndView viewStatus(HttpServletRequest request){
		Map<String, Object> model = new HashMap<>();
		
		
		return new ModelAndView(Constants.View.STATUS, model);
	}
	
	@RequestMapping(value="/resetPassword", method=RequestMethod.GET)
	public ModelAndView viewResetPassword(HttpServletRequest request){
		Map<String, Object> model = new HashMap<>();

		return new ModelAndView(Constants.View.RESET_PASSWORD, model);
	}
	
	@RequestMapping(value="/updateAgent", method=RequestMethod.GET)
	public ModelAndView viewUpdateAgent(HttpServletRequest request){
		Map<String, Object> model = new HashMap<>();

		return new ModelAndView(Constants.View.UPDATE_AGENT, model);
	}
	
	@RequestMapping(value="/changeCommissionFee", method=RequestMethod.GET)
	public ModelAndView viewChangeCommissionFee(HttpServletRequest request){
		Map<String, Object> model = new HashMap<>();

		return new ModelAndView(Constants.View.CHANGE_COMMISSION_FEE, model);
	}
	
	@RequestMapping(value="/searchAgentsList", method=RequestMethod.GET)
	public ModelAndView viewSearchAgentsList(@ModelAttribute AgentsListDto agentsListDto, HttpServletRequest request){
		Map<String, Object> model = new HashMap<>();

		
		return new ModelAndView(Constants.View.AGENTS_LIST, model);
	}
	
	
	@RequestMapping(value = "/addNewAgent", method = RequestMethod.POST)
	public String processAddNewAgent(@ModelAttribute AddNewAgentDto addNewAgentDto,
			HttpServletRequest request) {
		String userDtoInstanceName = UserUtil.getUserDtoInstanceName(request);	
		String loggedUserDtoName = UserUtil.getLoggedUserDtoName(request);	
		
		UserDto userDtoInstance = (UserDto) request.getSession().getAttribute(userDtoInstanceName);
		UserDto loggedUserDto = (UserDto) request.getSession().getAttribute(loggedUserDtoName);
		
		Map<String, Object> model = new HashMap<>();
		model.put("userDto", userDtoInstance);
		
		ResponseWrapper response = agentService.processAddAgent(loggedUserDto.getUsername(), loggedUserDto.getSessionId(),
				userDtoInstance.getUsername(), userDtoInstance.getSessionId(),
						addNewAgentDto.getFirstName(), addNewAgentDto.getLastName(),addNewAgentDto.getPassword(), 
						addNewAgentDto.getMobileNo(), addNewAgentDto.getEmail(), String.valueOf(addNewAgentDto.getBalance()),
						String.valueOf(addNewAgentDto.getCommRate()), addNewAgentDto.getSendToChannel(), addNewAgentDto.getSendToValue());
		
		if (response.getRespCode() == 0) {
			
		}
		else{
			///TODO: add response code for error
		}
		
		request.getSession().getAttribute("addNewAgentDto");
		
		return "redirect:/" + Constants.View.ADD_AGENT;
	}
	
	@RequestMapping(value="/changeAgentBalance", method=RequestMethod.POST)
	public ModelAndView processAgentChangeBalance(HttpServletRequest request){
		Map<String, Object> model = new HashMap<>();
		UserDto userDtoInstance = UserUtil.getUserDtoInstance(request);
		UserDto userDtoLogged = UserUtil.getUserDtoInstance(request);
		
		String transType, amount = null;
		if (request.getParameter("direction").equals("+")){
			amount = request.getParameter("increase_amount");
			transType = "CR";
		}else{
			amount = request.getParameter("decrease_amount");
			transType = "DR";
		}
		
		ResponseWrapper response = agentService.processAgentCreditTran(userDtoLogged.getUsername(), userDtoLogged.getSessionId(),
				userDtoInstance.getUsername(), request.getParameter("accountNumber"), transType,
				amount);
		
		if (response.getRespCode() == 0){
			AgentBalanceResponseData responseData = response.getDataAsSpecifiedType(AgentBalanceResponseData.class);
			request.getSession().setAttribute("msg", "Transaction completed. Reference ID: "+ responseData.getRefID());
			
		}else{
			request.getSession().setAttribute("error", response.getMessage());
		}
		
		model.put("userDto", userDtoInstance);
		return new ModelAndView(Constants.View.CHANGE_BALANCE, model);
	}
	
	@RequestMapping(value="/processChangeAgentStatus", method=RequestMethod.GET)
	public ModelAndView processChangeAgentStatus(HttpServletRequest request){
		Map<String, Object> model = new HashMap<>();

		return new ModelAndView(Constants.View.STATUS, model);
	}
	
}
