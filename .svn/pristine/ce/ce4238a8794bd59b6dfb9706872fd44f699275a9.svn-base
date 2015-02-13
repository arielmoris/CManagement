package com.cms.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.cms.dto.PlayersListDto;
import com.cms.util.Constants;

@Controller
public class ManagePlayersAccountsController {

	@RequestMapping(value="/playersList", method=RequestMethod.GET)
	public ModelAndView viewPlayersList(@RequestParam(value="search", required=false) String search, HttpServletRequest request){
		Map<String, Object> model = new HashMap<>();
		
		if (search == null){
			request.getSession().removeAttribute("playersListDto");
			PlayersListDto playersListDto = new PlayersListDto(); 
			model.put("playersListDto", playersListDto);
			request.getSession().setAttribute("playersListDto", playersListDto);
		}else{		
			PlayersListDto playersListDto = (PlayersListDto) request.getSession().getAttribute("playersListDto");
			model.put("playersListDto", playersListDto);				
		}
		return new ModelAndView(Constants.View.PLAYERS_LIST, model);
	}
	
	@RequestMapping(value="/registerAccount", method=RequestMethod.GET)
	public ModelAndView viewRegisterAccount(HttpServletRequest request){
		Map<String, Object> model = new HashMap<>();

		return new ModelAndView(Constants.View.REGISTER_ACCOUNT, model);
	}
	
	@RequestMapping(value="/updatePlayer", method=RequestMethod.GET)
	public ModelAndView viewUpdatePlayer(HttpServletRequest request){
		Map<String, Object> model = new HashMap<>();

		return new ModelAndView(Constants.View.UPDATE_PLAYER, model);
	}
	
	@RequestMapping(value="/playerStatus", method=RequestMethod.GET)
	public ModelAndView viewPlayerStatus(HttpServletRequest request){
		Map<String, Object> model = new HashMap<>();

		return new ModelAndView(Constants.View.PLAYER_STATUS, model);
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
}
