package com.cms.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.cms.bean.ResponseWrapper;
import com.cms.dto.AgentsListDto;
import com.cms.dto.CreditTransferReportFilter;
import com.cms.dto.UserDto;
import com.cms.service.AgentService;
import com.cms.service.LoginService;
import com.cms.util.Constants;
import com.cms.util.UserUtil;


@Controller
public class ManageAgentsAccountController {

	private AgentService agentService;

	@Autowired
	public ManageAgentsAccountController(AgentService agentService) {
		this.agentService = agentService;

	}
	
//	@RequestMapping(value="/agentsList", method=RequestMethod.GET)
//	public ModelAndView viewAgentList(@RequestParam(value="search", required=false) String search, HttpServletRequest request){
//		String userDtoInstance = UserUtil.getUserDtoInstanceName(request);		
//		String loggedUserDto = 
//		UserDto userDto = (UserDto) request.getSession().getAttribute(currentUserDto);
//		
//		Map<String, Object> model = new HashMap<>();
//
//		if (search == null){
//
//			request.getSession().removeAttribute("agentsListDto");
//			AgentsListDto agentsListDto = new AgentsListDto(); 
//			model.put("agentsListDto", agentsListDto);
//			request.getSession().setAttribute("agentsListDto", agentsListDto);
//		}else{
//			AgentsListDto agentsListDto = (AgentsListDto) request.getSession().getAttribute("agentsListDto");
//			model.put("agentsListDto", agentsListDto);				
//			
//			ResponseWrapper response = agentService.processAgentList(userId, sessionId, subUserId, subSessionId, firstName, lastName, mobileNo, orderBy, orderType, size, page)
//			if (response.getRespCode() == 0) {
//			
//			
//		}
//		return new ModelAndView(Constants.View.AGENTS_LIST, model);
//	}
	
	@RequestMapping(value="/addAgent", method=RequestMethod.GET)
	public ModelAndView viewAddAgent(HttpServletRequest request){
		Map<String, Object> model = new HashMap<>();

		return new ModelAndView(Constants.View.ADD_AGENT, model);
	}
	
	//////////
	@RequestMapping(value="/changeBalance", method=RequestMethod.GET)
	public ModelAndView viewChangeBalance(HttpServletRequest request){
		Map<String, Object> model = new HashMap<>();

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
	
	@RequestMapping(value="/table/agentsList", method=RequestMethod.GET)
	public ModelAndView tableAgentsList(HttpServletRequest request){
		Map<String, Object> model = new HashMap<>();

		
		return new ModelAndView(Constants.View.AGENTS_LIST, model);
	}
	
	@RequestMapping(value="/searchAgentsList", method=RequestMethod.GET)
	public ModelAndView viewSearchAgentsList(@ModelAttribute AgentsListDto agentsListDto, HttpServletRequest request){
		Map<String, Object> model = new HashMap<>();

		
		return new ModelAndView(Constants.View.AGENTS_LIST, model);
	}
	
}
