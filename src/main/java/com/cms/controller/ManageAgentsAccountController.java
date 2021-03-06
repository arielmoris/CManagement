package com.cms.controller;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.cms.bean.AddAgentResponseData;
import com.cms.bean.AgentBalanceResponseData;
import com.cms.bean.AgentListResponseData;
import com.cms.bean.AgentStatusResponseData;
import com.cms.bean.ManagerInfoResponseData;
import com.cms.bean.ResetAgentPasswordResponseData;
import com.cms.bean.ResponseWrapper;
import com.cms.dto.AddNewAgentDto;
import com.cms.dto.AgentsListDto;
import com.cms.dto.ChangeAgentBalanceDto;
import com.cms.dto.ChangeAgentStatusDto;
import com.cms.dto.ChangePasswordDto;
import com.cms.dto.ManagerDto;
import com.cms.dto.ManagerInfoDto;
import com.cms.dto.RequestStatusDto;
import com.cms.dto.ResetPasswordDto;
import com.cms.dto.UserDto;
import com.cms.service.AccountService;
import com.cms.service.AgentService;
import com.cms.service.ManagerService;
import com.cms.util.Configurator;
import com.cms.util.Constants;
import com.cms.util.UserUtil;
import com.cms.util.WebUtil;


@Controller
@RequestMapping(value="/{path:top|master|agent|shop|}")
public class ManageAgentsAccountController {

	private AgentService agentService;
	private ManagerService managerService;
	private AccountService accountService;
	
	@Autowired
	public ManageAgentsAccountController(AgentService agentService, ManagerService managerService, AccountService accountService) {
		super();
		this.agentService = agentService;
		this.managerService = managerService;
		this.accountService = accountService;
	}

	@RequestMapping(value="/agentsList", method=RequestMethod.GET)
	public ModelAndView viewAgentsList(@PathVariable String path, HttpServletRequest request){
		Map<String, Object> model = new HashMap<>();
		UserDto userDtoInstance = (UserDto) request.getSession().getAttribute("userDto_" + path);
		
		request.getSession().removeAttribute("selectedLoginId_"+path);
		model.put("agentsListDto", new AgentsListDto());
		model.put("userDto", userDtoInstance);
		
		return new ModelAndView(Constants.View.AGENTS_LIST, model);	
	}
	
	@RequestMapping(value="/table/agentsList", method=RequestMethod.POST)
	public ModelAndView tableAgentList(@PathVariable String path, HttpServletRequest request){
		UserDto userDtoInstance = (UserDto) request.getSession().getAttribute("userDto_" + path);
		UserDto loggedUserDto 	= (UserDto)request.getSession().getAttribute("loggedUserDto");
		
		AgentsListDto agentsListDto = WebUtil.mapAgentsListRequest(request.getParameterMap());
		Map<String, Object> model = new HashMap<>();
		RequestStatusDto requestStatus = null;
		
		UserDto subUserDto = UserUtil.getSubUserDto(loggedUserDto, userDtoInstance);
		
		try {
			ResponseWrapper responseWrapper = agentService.processAgentList(loggedUserDto, subUserDto, agentsListDto);
				
			if (responseWrapper.getRespCode() == Constants.ResponseCode.SUCCESS) {
				List<AgentListResponseData> responseData = responseWrapper.<List<AgentListResponseData>>getDataAsCollection();
				agentsListDto.setAgentListResponseDataTable(responseData);
				agentsListDto.setRecord(responseWrapper.getRecord());
			}
			requestStatus = new RequestStatusDto(responseWrapper.getRespCode(), responseWrapper.getMessage());
		} catch (Exception e) {
			e.printStackTrace();
			requestStatus = new RequestStatusDto(Constants.ResponseCode.SUCCESS, Configurator.getConfig("generic.server.error"));
		}
		
		model.put("requestStatus", requestStatus);
		model.put("agentsListDto", agentsListDto);
		model.put("userDto", userDtoInstance);

		return new ModelAndView(Constants.View.TABLE_AGENTS_LIST, model);
	}
	
	@RequestMapping(value="/addAgent", method=RequestMethod.GET)
	public ModelAndView viewAddAgent(@PathVariable String path, HttpServletRequest request){
		Map<String, Object> model = new HashMap<>();
		UserDto userDtoInstance = (UserDto) request.getSession().getAttribute("userDto_" + path);
		
		AddNewAgentDto addNewAgentDto = null;	
		
		if (request.getSession().getAttribute("addNewAgentDto") == null){
			addNewAgentDto = new AddNewAgentDto();
		}else{
			addNewAgentDto = (AddNewAgentDto) request.getSession().getAttribute("addNewAgentDto");
			request.getSession().removeAttribute("addNewAgentDto");
		}
		
		RequestStatusDto requestStatusDto = (RequestStatusDto) request.getSession().getAttribute("requestStatusDto");
		if (requestStatusDto != null){
			model.put("requestStatusDto", requestStatusDto);
			request.getSession().removeAttribute("requestStatusDto");
		}
		
		//put to model
		model.put("userDto", userDtoInstance);
		model.put("addNewAgentDto", addNewAgentDto);		
		return new ModelAndView(Constants.View.ADD_AGENT, model);
	}
	
	@RequestMapping(value = "/processAddNewAgent", method = RequestMethod.POST)
	public String processAddNewAgent(@PathVariable String path, @ModelAttribute AddNewAgentDto addNewAgentDto, HttpServletRequest request) {

		UserDto userDtoInstance = (UserDto) request.getSession().getAttribute("userDto_" + path);
		UserDto loggedUserDto = (UserDto)request.getSession().getAttribute("loggedUserDto");
		UserDto subUserDto = UserUtil.getSubUserDto(loggedUserDto, userDtoInstance);
		
		if(addNewAgentDto.getSendToChannel() != null && !"".equals(addNewAgentDto.getSendToChannel())){
			if(addNewAgentDto.getSendToChannel().equalsIgnoreCase("sms")){
				addNewAgentDto.setSendToValue(addNewAgentDto.getMobileNo());
			}else{
				addNewAgentDto.setSendToValue(addNewAgentDto.getEmail());
			}
		}
		
		RequestStatusDto requestStatusDto = null;
		try {
			ResponseWrapper response = agentService.processAddAgent(loggedUserDto, subUserDto, addNewAgentDto);
			String message = response.getMessage();
			if (response.getRespCode() == Constants.ResponseCode.SUCCESS) {
				AddAgentResponseData responseData = response.getDataAsSpecifiedType(AddAgentResponseData.class);
				message = "Successfully Added: "+ responseData.getMgrUname();
				addNewAgentDto = new AddNewAgentDto();
			}
			requestStatusDto = new RequestStatusDto(response.getRespCode(), message);
		} catch (Exception e) {
			requestStatusDto = new RequestStatusDto(Constants.ResponseCode.FAILED, Configurator.getConfig("generic.server.error"));
			e.printStackTrace();
		}
		
		request.getSession().setAttribute("requestStatusDto",requestStatusDto);
		request.getSession().setAttribute("userDto",userDtoInstance);
		request.getSession().setAttribute("addNewAgentDto",addNewAgentDto);
		
		return "redirect:/" + path + "/addAgent";
	}
	
	@RequestMapping(value="/changeAgentBalance", method=RequestMethod.GET)
	public ModelAndView viewChangeBalance(@PathVariable String path, HttpServletRequest request){
		Map<String, Object> model = new HashMap<>();
		UserDto userDtoInstance = (UserDto) request.getSession().getAttribute("userDto_"+path);

		UserDto loggedUserDto = (UserDto)request.getSession().getAttribute("loggedUserDto");
		UserDto subUserDto = UserUtil.getSubUserDto(loggedUserDto, userDtoInstance);
		String targetUserId = (String) request.getSession().getAttribute("selectedLoginId_"+path);
		
		RequestStatusDto requestStatusDto = (RequestStatusDto) request.getSession().getAttribute("requestStatusDto");
		ChangeAgentBalanceDto changeAgentBalanceDto = new ChangeAgentBalanceDto();
		if (requestStatusDto != null){
			changeAgentBalanceDto = (ChangeAgentBalanceDto) request.getSession().getAttribute("changeAgentBalanceDto");
			request.getSession().removeAttribute("requestStatusDto");
			request.getSession().removeAttribute("changeAgentBalanceDto");
		}
		
		try {
			ResponseWrapper response = agentService.processAgentBalance(loggedUserDto, subUserDto, targetUserId);
			if (response.getRespCode() == Constants.ResponseCode.SUCCESS){
				AgentBalanceResponseData responseData = response.getDataAsSpecifiedType(AgentBalanceResponseData.class);
				changeAgentBalanceDto.setMgrFullName(responseData.getMgrFullName());
				changeAgentBalanceDto.setTargetUserID(responseData.getTargetUserID());
				changeAgentBalanceDto.setBalance(responseData.getBalance());
			}else{
				requestStatusDto = new RequestStatusDto(response.getRespCode(), response.getMessage());
			}
		} catch (Exception e) {
			e.printStackTrace();
			requestStatusDto = new RequestStatusDto(Constants.ResponseCode.FAILED, Configurator.getConfig("generic.server.error"));
		}
		
		///model put
		model.put("requestStatusDto",requestStatusDto);
		model.put("changeAgentBalanceDto", changeAgentBalanceDto);
		model.put("userDto", userDtoInstance);
		
		return new ModelAndView(Constants.View.CHANGE_BALANCE, model);
	}
	
	@RequestMapping(value="/processChangeAgentBalance", method=RequestMethod.POST)
	public String processAgentChangeBalance(@PathVariable String path, @ModelAttribute ChangeAgentBalanceDto changeAgentBalanceDto, HttpServletRequest request){
		UserDto userDtoInstance = (UserDto) request.getSession().getAttribute("userDto_"+path);
		UserDto loggedUserDto = (UserDto)request.getSession().getAttribute("loggedUserDto");
		String targetUserId = (String) request.getSession().getAttribute("selectedLoginId_"+path);
		RequestStatusDto requestStatusDto = null;
		
		UserDto subUserDto = UserUtil.getSubUserDto(loggedUserDto, userDtoInstance);
		try {
			changeAgentBalanceDto.setTargetUserID(targetUserId);
			ResponseWrapper response = agentService.processAgentCreditTran(loggedUserDto, subUserDto, changeAgentBalanceDto);
			if (response.getRespCode() == Constants.ResponseCode.SUCCESS){
				AgentBalanceResponseData responseData = response.getDataAsSpecifiedType(AgentBalanceResponseData.class);
				requestStatusDto = new RequestStatusDto(response.getRespCode(), "Transaction completed. ");
			}else{
				requestStatusDto = new RequestStatusDto(response.getRespCode(), response.getMessage());			
			}
		} catch (Exception e) {
			e.printStackTrace();
			requestStatusDto = new RequestStatusDto(Constants.ResponseCode.FAILED, Configurator.getConfig("generic.server.error"));
		}
		
		request.getSession().setAttribute("userDto", userDtoInstance);
		request.getSession().setAttribute("requestStatusDto", requestStatusDto);
		request.getSession().setAttribute("changeAgentBalanceDto", changeAgentBalanceDto);
		
		return "redirect:/" +path+ "/changeAgentBalance";
	}
	
	@RequestMapping(value="/updateAgent", method=RequestMethod.GET) //agent manager info
	public ModelAndView viewUpdateAgent(@PathVariable String path, HttpServletRequest request){
		Map<String, Object> model = new HashMap<>();
		UserDto userDtoInstance = (UserDto) request.getSession().getAttribute("userDto_" + path);
		UserDto loggedUserDto = (UserDto)request.getSession().getAttribute("loggedUserDto");
		UserDto subUserDto = UserUtil.getSubUserDto(loggedUserDto, userDtoInstance);
		String targetUserId = (String) request.getSession().getAttribute("selectedLoginId_"+path);
		
		ManagerDto managerDto = new ManagerDto();
		
		RequestStatusDto requestStatusDto = (RequestStatusDto) request.getSession().getAttribute("requestStatusDto");
		if (requestStatusDto != null){
			managerDto = (ManagerDto) request.getSession().getAttribute("managerDto");
			managerDto.setTargetUserId(targetUserId);
			managerDto.setUsername(targetUserId);
			request.getSession().removeAttribute("requestStatusDto");
			request.getSession().removeAttribute("managerDto");
		}else{
			ManagerInfoDto managerInfo = new ManagerInfoDto();
			managerInfo.setTargetUserID(targetUserId);
			managerInfo.setViewType('F');
			
			try {
				ResponseWrapper response = managerService.processManagerInfo(loggedUserDto, subUserDto, managerInfo);
				
				if (response.getRespCode() == Constants.ResponseCode.SUCCESS){
					ManagerInfoResponseData responseData = response.getDataAsSpecifiedType(ManagerInfoResponseData.class);
					managerDto.setUsername(targetUserId);
					managerDto.setFirstName(responseData.getFirstName());
					managerDto.setLastName(responseData.getLastName());
					managerDto.setMobileNum(responseData.getMobileNo());
					managerDto.setEmail(responseData.getEmailAdd());
					try {
						managerDto.setCommRate(new BigDecimal(responseData.getCommRate()));
					} catch (Exception e) {}
					
					managerDto.setCountry(responseData.getCountry());
					managerDto.setCurrencyCode(responseData.getCurrencyCode());
				}else{
					requestStatusDto = new RequestStatusDto(response.getRespCode(), response.getMessage());
				}
			} catch (Exception e) {
				requestStatusDto = new RequestStatusDto(Constants.ResponseCode.FAILED, Configurator.getConfig("data.fetch.error"));
				e.printStackTrace();
			}
		}
		
		//model put variable
		model.put("requestStatusDto",requestStatusDto);
		model.put("userDto", userDtoInstance);
		model.put("managerDto", managerDto);
		
		return new ModelAndView(Constants.View.UPDATE_AGENT, model);
	}
	
	@RequestMapping(value="/processUpdateAgent", method=RequestMethod.POST) //agent manager info
	public String processUpdateAgent(@PathVariable String path, @ModelAttribute ManagerDto managerDto, HttpServletRequest request){
		
		UserDto userDtoInstance = (UserDto) request.getSession().getAttribute("userDto_"+path);
		UserDto loggedUserDto = (UserDto)request.getSession().getAttribute("loggedUserDto");
		UserDto subUserDto = UserUtil.getSubUserDto(loggedUserDto, userDtoInstance);
		String targetUserId = (String) request.getSession().getAttribute("selectedLoginId_"+path);
		
		managerDto.setTargetUserId(targetUserId);
		RequestStatusDto requestStatusDto = null;
		try {
			ResponseWrapper responseWrapper = managerService.processUpdateManager(loggedUserDto, subUserDto, managerDto);
			int code = responseWrapper.getRespCode();
			String message = responseWrapper.getMessage();
			if (responseWrapper.getRespCode() == Constants.ResponseCode.SUCCESS){
				message = "Agent is successfully updated.";
				if(managerDto.getPassword() != null && !managerDto.getPassword().equals("")){
					ChangePasswordDto changePasswordDto = new ChangePasswordDto();
					changePasswordDto.setAccountId(targetUserId);
					changePasswordDto.setAccountType("A");
					changePasswordDto.setNewPassword(managerDto.getPassword());
					responseWrapper = accountService.processChangePassword(loggedUserDto, subUserDto, changePasswordDto);
					code = responseWrapper.getRespCode();
					message = responseWrapper.getMessage();
				}
			}
			requestStatusDto = new RequestStatusDto(code, message);
		} catch (Exception e) {
			requestStatusDto = new RequestStatusDto(Constants.ResponseCode.FAILED, Configurator.getConfig("generic.server.error"));
			e.printStackTrace();
		}
		
		request.getSession().setAttribute("requestStatusDto", requestStatusDto);
		request.getSession().setAttribute("userDto", userDtoInstance);	
		request.getSession().setAttribute("managerDto", managerDto);
		return "redirect:/"+path+"/updateAgent";
	}
	
	@RequestMapping(value="/changeCommissionFee", method=RequestMethod.GET)
	public ModelAndView viewChangeCommissionFee(HttpServletRequest request){
		Map<String, Object> model = new HashMap<>();

		return new ModelAndView(Constants.View.CHANGE_COMMISSION_FEE, model);
	}
	
	@RequestMapping(value="/agentStatus", method=RequestMethod.GET)
	public ModelAndView getAgentStatus(@PathVariable String path, HttpServletRequest request){
		Map<String, Object> model = new HashMap<>();
		
		UserDto userDtoInstance = (UserDto) request.getSession().getAttribute("userDto_"+path);
		UserDto loggedUserDto = (UserDto)request.getSession().getAttribute("loggedUserDto");
		
		////TODO: temporary. Check where to get targer and manager id
		String targetUserId = request.getParameter("targetUserId");
		////////////////////////
		
		UserDto subUserDto = UserUtil.getSubUserDto(loggedUserDto, userDtoInstance);
		
		RequestStatusDto requestStatusDto = null;
		ResponseWrapper response = agentService.processAgentStatus(loggedUserDto, subUserDto, targetUserId);
			
		if (response.getRespCode() == Constants.ResponseCode.SUCCESS){
			AgentStatusResponseData responseData = response.getDataAsSpecifiedType(AgentStatusResponseData.class);
		}else{
			requestStatusDto = new RequestStatusDto(response.getRespCode(), response.getMessage());
			
		}
		
		///remove session vars
		request.getSession().removeAttribute("userDto");
		
		//model put
		model.put("userDto", userDtoInstance);
		model.put("requestStatusDto", requestStatusDto);
		
		return new ModelAndView(Constants.View.STATUS, model);
	}
	
	@RequestMapping(value="/changeAgentStatus", method=RequestMethod.GET)
	public ModelAndView viewChangeAgentStatus(@PathVariable String path, HttpServletRequest request){
		Map<String, Object> model = new HashMap<>();
		
		UserDto userDtoInstance = (UserDto) request.getSession().getAttribute("userDto_"+path);
		UserDto loggedUserDto = (UserDto)request.getSession().getAttribute("loggedUserDto");

		RequestStatusDto requestStatusDto = (RequestStatusDto) request.getSession().getAttribute("requestStatusDto") ;
		if (requestStatusDto != null){
			model.put("requestStatusDto", requestStatusDto);
			
			request.getSession().removeAttribute("requestStatusDto");
		}
		
		ChangeAgentStatusDto changeAgentStatusDto = (ChangeAgentStatusDto) request.getSession().getAttribute("changeAgentStatusDto");
		
		if (changeAgentStatusDto != null){
			request.getSession().removeAttribute("changeAgentStatusDto");
		}else
		{
			changeAgentStatusDto = new ChangeAgentStatusDto();
		}	
		
		String targetUserId = (String) request.getSession().getAttribute("selectedLoginId_"+path);
		changeAgentStatusDto.setTargetUserID(targetUserId);
			
		UserDto subUserDto = UserUtil.getSubUserDto(loggedUserDto, userDtoInstance);
			
			try {
				ResponseWrapper response = agentService.processAgentStatus(
					loggedUserDto, subUserDto, targetUserId);

				LinkedHashMap<String, String> statusList = new LinkedHashMap<String,String>();
				statusList.put("0", "Active");
				statusList.put("1", "Master user is locked.");
				statusList.put("2", "Master user and all agent related accounts are locked.");
				statusList.put("3", "Station and player are suspended");		

				if (response.getRespCode() == Constants.ResponseCode.SUCCESS) {
					
				
					AgentStatusResponseData responseData = response
							.getDataAsSpecifiedType(AgentStatusResponseData.class);
				
					LinkedHashMap availableStatus = new LinkedHashMap();
					
					Set set = statusList.entrySet();
					Iterator i = set.iterator();
					// Display elements
					while (i.hasNext()) {
						Map.Entry me = (Map.Entry) i.next();
						System.out.print(me.getKey() + ": ");
						System.out.println(me.getValue());

						if (!me.getKey().equals(String.valueOf(responseData.getAccountStatus()))) {
							availableStatus.put(me.getKey(), me.getValue());
						}
					}
					changeAgentStatusDto.setTargetUserID(responseData.getTargetUserID());
					changeAgentStatusDto.setMgrFullName(responseData.getMgrFullname());
					changeAgentStatusDto.setStatusList(availableStatus);
			}
				
		} catch (Exception e) {
			requestStatusDto = new RequestStatusDto(
					Constants.ResponseCode.SUCCESS,
					Configurator.getConfig("generic.server.error"));
			e.printStackTrace();
		}
	
		///remove session vars
		request.getSession().removeAttribute("userDto");
		
		//model put
		model.put("userDto", userDtoInstance);
		model.put("changeAgentStatusDto", changeAgentStatusDto);
		return new ModelAndView(Constants.View.STATUS, model);

	}
	
	@RequestMapping(value="/processChangeAgentStatus", method=RequestMethod.POST)
	public String processChangeAgentStatus(@PathVariable String path, @ModelAttribute ChangeAgentStatusDto changeAgentStatusDto,  HttpServletRequest request){
		UserDto userDtoInstance = (UserDto) request.getSession().getAttribute("userDto_"+path);
		UserDto loggedUserDto = (UserDto)request.getSession().getAttribute("loggedUserDto");
				
		UserDto subUserDto = UserUtil.getSubUserDto(loggedUserDto, userDtoInstance);
		
		String targetUserId = (String) request.getSession().getAttribute("selectedLoginId_"+path);
		changeAgentStatusDto.setTargetUserID(targetUserId);

		
		RequestStatusDto requestStatusDto = null;
		ResponseWrapper response = agentService.processChangeAgentStatus(loggedUserDto, subUserDto, changeAgentStatusDto);
		
		
		requestStatusDto = new RequestStatusDto(response.getRespCode(), response.getMessage());
		
		
		request.getSession().setAttribute("userDto", userDtoInstance);
		request.getSession().setAttribute("changeAgentStatusDto", changeAgentStatusDto);
		request.getSession().setAttribute("requestStatusDto", requestStatusDto);
		
		return "redirect:/" + path + "/changeAgentStatus";
	}	
	
	@RequestMapping(value="/editAgent", method=RequestMethod.POST)
	public String editAgent(@PathVariable String path, HttpServletRequest request){
		HttpSession session = request.getSession();
		
		session.setAttribute("selectedLoginId_"+path, request.getParameter("loginId"));
		
		return "redirect:/" + path + "/changeAgentBalance";
	}
}
