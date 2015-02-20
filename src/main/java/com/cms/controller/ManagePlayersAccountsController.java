package com.cms.controller;

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

import com.cms.bean.AddPlayerResponseData;
import com.cms.bean.AgentStatusResponseData;
import com.cms.bean.PlayerCreditTranResponseData;
import com.cms.bean.PlayerInfoResponseData;
import com.cms.bean.PlayerListResponseData;
import com.cms.bean.ResponseWrapper;
import com.cms.dto.AddPlayerDto;
import com.cms.dto.ChangeAgentStatusDto;
import com.cms.dto.PlayerChangeStatusDto;
import com.cms.dto.PlayerCreditTranDto;
import com.cms.dto.PlayersListDto;
import com.cms.dto.RequestStatusDto;
import com.cms.dto.UserDto;
import com.cms.service.PlayerService;
import com.cms.util.Configurator;
import com.cms.util.Constants;
import com.cms.util.UserUtil;
import com.cms.util.WebUtil;

@Controller
@RequestMapping(value="/{path:top|master|agent|shop|}")
public class ManagePlayersAccountsController {
	
	private PlayerService playerService;
	
	@Autowired
	public ManagePlayersAccountsController(PlayerService playerService) {
		this.playerService = playerService;
	}

	@RequestMapping(value="/playersList", method=RequestMethod.GET)
	public ModelAndView viewAgentsList(@PathVariable String path, HttpServletRequest request){
		Map<String, Object> model = new HashMap<>();
		
		UserDto userDtoInstance = (UserDto) request.getSession().getAttribute("userDto_"+path);
		request.getSession().removeAttribute("userDto");
		request.getSession().removeAttribute("selectedPlayerId_"+path);
		request.getSession().removeAttribute("editPlayerAction_"+path);
		model.put("userDto", userDtoInstance);
		model.put("playersList", new PlayersListDto());
		
		return new ModelAndView(Constants.View.PLAYERS_LIST, model);
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value="/table/playersList", method=RequestMethod.POST)
	public ModelAndView viewAgentList(@PathVariable String path, HttpServletRequest request){
		UserDto userDtoInstance = (UserDto) request.getSession().getAttribute("userDto_"+path);
		UserDto loggedUserDto = (UserDto)request.getSession().getAttribute("loggedUserDto");
		
		PlayersListDto playersListDto = WebUtil.mapPlayersListRequest(request.getParameterMap());
		Map<String, Object> model = new HashMap<>();
		RequestStatusDto requestStatus = null;
		
		UserDto subUserDto = UserUtil.getSubUserDto(loggedUserDto, userDtoInstance);
		System.out.println("userDto_"+path);
		System.out.println(loggedUserDto.toString());
		System.out.println(userDtoInstance.toString());
		System.out.println(subUserDto.toString());
		try {
			ResponseWrapper responseWrapper = playerService.processPlayerList(loggedUserDto, subUserDto, playersListDto);
				
			if (responseWrapper.getRespCode() == 0) {
				List<PlayerListResponseData> responseData = responseWrapper.<List<PlayerListResponseData>>getDataAsCollection();
				playersListDto.setPlayerListResponseData(responseData);
				playersListDto.setRecord(responseWrapper.getRecord());
			}
			requestStatus = new RequestStatusDto(responseWrapper.getRespCode(), responseWrapper.getMessage());
		} catch (Exception e) {
			e.printStackTrace();
			requestStatus = new RequestStatusDto(0, Configurator.getConfig("generic.server.error"));
		}
		
		model.put("requestStatus", requestStatus);
		model.put("playersListDto", playersListDto);
		model.put("userDto", userDtoInstance);

		return new ModelAndView(Constants.View.TABLE_PLAYERS_LIST, model);
	}
	
	
	@RequestMapping(value="/addPlayer", method=RequestMethod.GET)
	public ModelAndView viewAddPlayer(@PathVariable String path, HttpServletRequest request){
		Map<String, Object> model = new HashMap<>();
		UserDto userDtoInstance = (UserDto) request.getSession().getAttribute("userDto_" + path);
		RequestStatusDto requestStatusDto = (RequestStatusDto) request.getSession().getAttribute("requestStatusDto");
		AddPlayerDto addPlayerDto = new AddPlayerDto();
		
		if (request.getSession().getAttribute("addPlayerDto") != null){
			addPlayerDto = (AddPlayerDto) request.getSession().getAttribute("addPlayerDto");
		}
		
		///remove from session
		request.getSession().removeAttribute("userDto");
		request.getSession().removeAttribute("addPlayerDto");
		request.getSession().removeAttribute("requestStatusDto");
		
		//put to model
		model.put("requestStatusDto", requestStatusDto);
		model.put("userDto", userDtoInstance);
		model.put("addPlayerDto", addPlayerDto);

		return new ModelAndView(Constants.View.ADD_PLAYER, model);
	}
	
	@RequestMapping(value="/processAddPlayer", method=RequestMethod.POST)//add manager
	public String processAddPlayer(@PathVariable String path, @ModelAttribute AddPlayerDto addPlayerDto, HttpServletRequest request){
		Map<String, Object> model = new HashMap<>();
		UserDto userDtoInstance = (UserDto) request.getSession().getAttribute("userDto_"+path);
		UserDto loggedUserDto = (UserDto)request.getSession().getAttribute("loggedUserDto");
		UserDto subUserDto = UserUtil.getSubUserDto(loggedUserDto, userDtoInstance);
		RequestStatusDto requestStatusDto = null;
		try {
			ResponseWrapper response = playerService.processAddPlayer(loggedUserDto, subUserDto, addPlayerDto);
			String message = response.getMessage();
			if (response.getRespCode() == 0) {
				AddPlayerResponseData responseData = response.getDataAsSpecifiedType(AddPlayerResponseData.class);
				message = "Successfully added : "+responseData.getpUsername();
			}
			requestStatusDto = new RequestStatusDto(response.getRespCode(), message);
		} catch (Exception e) {
			requestStatusDto = new RequestStatusDto(Constants.ResponseCode.FAILED, Configurator.getConfig("generic.server.error"));
			e.printStackTrace();
		}
		
		request.getSession().setAttribute("requestStatusDto", requestStatusDto);
		request.getSession().setAttribute("addPlayerDto",addPlayerDto);
		request.getSession().setAttribute("userDto", userDtoInstance);
		return "redirect:/" + path + "/addPlayer";
	}
	
	
	
	@RequestMapping(value="/addBulkPlayer", method=RequestMethod.GET)
	public ModelAndView viewAddBulkPlayer(@PathVariable String path, HttpServletRequest request){
		Map<String, Object> model = new HashMap<>();
		UserDto userDtoInstance = (UserDto) request.getSession().getAttribute("userDto_" + path);
		RequestStatusDto requestStatusDto = (RequestStatusDto) request.getSession().getAttribute("requestStatusDto");
		AddPlayerDto addPlayerDto = new AddPlayerDto();
		
		if (request.getSession().getAttribute("addPlayerDto") != null){
			addPlayerDto = (AddPlayerDto) request.getSession().getAttribute("addPlayerDto");
		}
		
		///remove from session
		request.getSession().removeAttribute("userDto");
		request.getSession().removeAttribute("addPlayerDto");
		request.getSession().removeAttribute("requestStatusDto");
		
		//put to model
		model.put("requestStatusDto", requestStatusDto);
		model.put("userDto", userDtoInstance);
		model.put("addPlayerDto", addPlayerDto);

		return new ModelAndView(Constants.View.ADD_BULK_PLAYER, model);
	}
	
	@RequestMapping(value="/processAddBulkPlayer", method=RequestMethod.POST)//add manager
	public String processAddBulkPlayer(@PathVariable String path, @ModelAttribute AddPlayerDto addPlayerDto, HttpServletRequest request){
		Map<String, Object> model = new HashMap<>();
		UserDto userDtoInstance = (UserDto) request.getSession().getAttribute("userDto_"+path);
		UserDto loggedUserDto = (UserDto)request.getSession().getAttribute("loggedUserDto");
		UserDto subUserDto = UserUtil.getSubUserDto(loggedUserDto, userDtoInstance);
		RequestStatusDto requestStatusDto = null;
		try {
			ResponseWrapper response = playerService.processAddBulkPlayer(loggedUserDto, subUserDto, addPlayerDto);
			String message = response.getMessage();
			if (response.getRespCode() == 0) {
				List<AddPlayerResponseData> responseData = response.<List<AddPlayerResponseData>>getDataAsCollection();
				message = "Successfully added "+responseData.size()+" players";
			}
			requestStatusDto = new RequestStatusDto(response.getRespCode(), message);
		} catch (Exception e) {
			requestStatusDto = new RequestStatusDto(Constants.ResponseCode.FAILED, Configurator.getConfig("generic.server.error"));
			e.printStackTrace();
		}
		
		request.getSession().setAttribute("requestStatusDto", requestStatusDto);
		request.getSession().setAttribute("addPlayerDto",addPlayerDto);
		request.getSession().setAttribute("userDto", userDtoInstance);
		
		return "redirect:/" + path + "/addBulkPlayer";
	}
	
	@RequestMapping(value="/changePlayerBalance", method=RequestMethod.GET)
	public ModelAndView viewChangePlayerBalance(@PathVariable String path, HttpServletRequest request){
		Map<String, Object> model = new HashMap<>();
		UserDto userDtoInstance = (UserDto) request.getSession().getAttribute("userDto_"+path);
		UserDto loggedUserDto = (UserDto)request.getSession().getAttribute("loggedUserDto");
		UserDto subUserDto = UserUtil.getSubUserDto(loggedUserDto, userDtoInstance);
		String targetUserId = (String) request.getSession().getAttribute("selectedPlayerId_"+path);
		String action 		= (String) request.getSession().getAttribute("editPlayerAction_"+path);
		
		RequestStatusDto requestStatusDto = (RequestStatusDto) request.getSession().getAttribute("requestStatusDto");
		PlayerCreditTranDto playerCreditTranDto = new PlayerCreditTranDto();
		if (requestStatusDto != null){
			playerCreditTranDto = (PlayerCreditTranDto) request.getSession().getAttribute("playerCreditTranDto");
			
			request.getSession().removeAttribute("requestStatusDto");
			request.getSession().removeAttribute("playerCreditTranDto");
		}
		
		try {
			ResponseWrapper response = playerService.processPlayerInfo(loggedUserDto, subUserDto, targetUserId);
			if (response.getRespCode() == Constants.ResponseCode.SUCCESS){
				PlayerInfoResponseData responseData = response.getDataAsSpecifiedType(PlayerInfoResponseData.class);
				
				playerCreditTranDto.setUsername(responseData.getpUsername());
				playerCreditTranDto.setBalance(responseData.getBalance());
				playerCreditTranDto.setCurrencyCode(responseData.getCurrencyCode());
				playerCreditTranDto.setTranType(action);
				
				model.put("playerCreditTranDto", playerCreditTranDto);
			}
			requestStatusDto = new RequestStatusDto(response.getRespCode(), response.getMessage());
		} catch (Exception e) {
			e.printStackTrace();
			requestStatusDto = new RequestStatusDto(Constants.ResponseCode.FAILED, Configurator.getConfig("generic.server.error"));
		}
		
		
		///model put
		model.put("userDto", userDtoInstance);
		model.put("requestStatusDto",requestStatusDto);
		model.put("playerCreditTranDto", playerCreditTranDto);
		
		return new ModelAndView(Constants.View.PLAYER_CHANGE_BALANCE, model);
	}
	
	@RequestMapping(value="/processChangePlayerBalance", method=RequestMethod.POST)
	public String processChangePlayerBalance(@PathVariable String path, @ModelAttribute PlayerCreditTranDto playerCreditTranDto, HttpServletRequest request){
		Map<String, Object> model = new HashMap<>();
		UserDto userDtoInstance = (UserDto) request.getSession().getAttribute("userDto_"+path);
		UserDto loggedUserDto = UserUtil.getUserDtoInstance(request);
		String targetUserId = (String) request.getSession().getAttribute("selectedPlayerId_"+path);
		UserDto subUserDto = UserUtil.getSubUserDto(loggedUserDto, userDtoInstance);
		RequestStatusDto requestStatusDto = null;
		
		
		playerCreditTranDto.setUsername(targetUserId);
		try {
			ResponseWrapper response = playerService.processPlayerCreditTran(loggedUserDto, subUserDto, playerCreditTranDto);
			if (response.getRespCode() == Constants.ResponseCode.SUCCESS){
				PlayerCreditTranResponseData responseData = response.getDataAsSpecifiedType(PlayerCreditTranResponseData.class);
				requestStatusDto = new RequestStatusDto(response.getRespCode(), "Transaction completed. Reference ID: "+ responseData.getRefId());
			}else{
				requestStatusDto = new RequestStatusDto(response.getRespCode(), response.getMessage());
			}
		} catch (Exception e) {
			e.printStackTrace();
			requestStatusDto = new RequestStatusDto(Constants.ResponseCode.FAILED, Configurator.getConfig("generic.server.error"));
		}
		
		request.getSession().setAttribute("userDto", userDtoInstance);
		request.getSession().setAttribute("requestStatusDto", requestStatusDto);
		request.getSession().setAttribute("playerCreditTranDto", playerCreditTranDto);
		
		return "redirect:/" +path+ "/changePlayerBalance";
	}
	

	@RequestMapping(value="/playerStatus", method=RequestMethod.GET)
	public ModelAndView viewChangeAgentStatus(@PathVariable String path, HttpServletRequest request){
		Map<String, Object> model = new HashMap<>();
		
		UserDto userDtoInstance = (UserDto) request.getSession().getAttribute("userDto_"+path);
		UserDto loggedUserDto = (UserDto)request.getSession().getAttribute("loggedUserDto");
		//TODO: temporary code 
		userDtoInstance = new UserDto();
		userDtoInstance.setAccountType("M");
		//TODO:
		String targetUserId = (String) request.getSession().getAttribute("selectedPlayerId_"+path);
	
		PlayerChangeStatusDto playerChangeStatusDto = (PlayerChangeStatusDto) request.getSession().getAttribute("playerChangeStatusDto");
		if (playerChangeStatusDto != null){
			model.put("playerChangeStatusDto", playerChangeStatusDto);
			request.getSession().removeAttribute("playerChangeStatusDto");
		}else{
			playerChangeStatusDto = new PlayerChangeStatusDto();
			
			model.put("playerChangeStatusDto", playerChangeStatusDto);
		}
		
		RequestStatusDto requestStatusDto = (RequestStatusDto) request.getSession().getAttribute("requestStatusDto") ;
		if (requestStatusDto != null){
			model.put("requestStatusDto", requestStatusDto);
			
			request.getSession().removeAttribute("requestStatusDto");
		}
		
		UserDto subUserDto = UserUtil.getSubUserDto(loggedUserDto, userDtoInstance);
		
		LinkedHashMap<String, String> statusList = new LinkedHashMap<String,String>();
		statusList.put("0", "Active");
		statusList.put("1", "Master user is locked.");
		statusList.put("2", "Master user and all agent related accounts are locked.");
		statusList.put("3", "Station and player are suspended");		

				
		playerChangeStatusDto.setStatusList(statusList);
		
		
		///remove session vars
		request.getSession().removeAttribute("userDto");
		
		//model put
		model.put("userDto", userDtoInstance);
		model.put("playerChangeStatusDto", playerChangeStatusDto);
		return new ModelAndView(Constants.View.PLAYER_STATUS, model);
	}
	
	@RequestMapping(value="/processChangePlayerStatus", method=RequestMethod.POST)
	public String processChangeAgentStatus(@PathVariable String path, @ModelAttribute PlayerChangeStatusDto playerChangeStatusDto,  HttpServletRequest request){
		UserDto userDtoInstance = (UserDto) request.getSession().getAttribute("userDto_"+path);
		UserDto loggedUserDto = (UserDto)request.getSession().getAttribute("loggedUserDto");
				
		UserDto subUserDto = UserUtil.getSubUserDto(loggedUserDto, userDtoInstance);
		
		RequestStatusDto requestStatusDto = null;
		ResponseWrapper response = playerService.processChangePlayerStatus(loggedUserDto, subUserDto, playerChangeStatusDto);
		
		
		requestStatusDto = new RequestStatusDto(response.getRespCode(), response.getMessage());
		
		
		request.getSession().setAttribute("userDto", userDtoInstance);
		request.getSession().setAttribute("playerChangeStatusDto", playerChangeStatusDto);
		request.getSession().setAttribute("requestStatusDto", requestStatusDto);
		
		return "redirect:/" + path + "/changeAgentStatus";
	}
	
	@RequestMapping(value="/playerResetPassword", method=RequestMethod.GET)
	public ModelAndView viewPlayerResetPassword(HttpServletRequest request){
		Map<String, Object> model = new HashMap<>();

		return new ModelAndView(Constants.View.PLAYER_RESET_PASSWORD, model);
	}
	
	@RequestMapping(value="/playerResetAttempts", method=RequestMethod.GET)
	public ModelAndView viewPlayerResetAttempts(HttpServletRequest request){
		Map<String, Object> model = new HashMap<>();

		return new ModelAndView(Constants.View.PLAYER_RESET_ATTEMPTS, model);
	}
	
	@RequestMapping(value="/sendGame", method=RequestMethod.GET)
	public ModelAndView viewSendGame(HttpServletRequest request){
		Map<String, Object> model = new HashMap<>();

		return new ModelAndView(Constants.View.SEND_GAME, model);
	}
	
	@RequestMapping(value="/agentEarningReport", method=RequestMethod.GET)
	public ModelAndView viewAgentEarningReport(HttpServletRequest request){
		Map<String, Object> model = new HashMap<>();

		return new ModelAndView(Constants.View.AGENT_EARNING_REPORT, model);
	}
	
	@RequestMapping(value="/gameProfitabilityReportByAccount", method=RequestMethod.GET)
	public ModelAndView viewGameProfitabilityReportByAccount(HttpServletRequest request){
		Map<String, Object> model = new HashMap<>();

		return new ModelAndView(Constants.View.GAME_PROFITABILITY_REPORT_BY_ACCOUNT, model);
	}
	
	@RequestMapping(value="/deposit", method=RequestMethod.GET)
	public ModelAndView viewDeposit(HttpServletRequest request){
		Map<String, Object> model = new HashMap<>();

		return new ModelAndView(Constants.View.DEPOSIT, model);
	}
	
	@RequestMapping(value="/deletePlayers", method=RequestMethod.GET)
	public ModelAndView viewDeletePlayers(HttpServletRequest request){
		Map<String, Object> model = new HashMap<>();

		return new ModelAndView(Constants.View.DELETE_PLAYERS, model);
	}
	
	@RequestMapping(value="/editPlayer", method=RequestMethod.POST)
	public String editAgent(@PathVariable String path, HttpServletRequest request){
		HttpSession session = request.getSession();
		
		session.setAttribute("selectedPlayerId_"+path, request.getParameter("playerId"));
		session.setAttribute("editPlayerAction_"+path, request.getParameter("action"));
		
		return "redirect:/" + path + "/changeBalance";
	}
}
