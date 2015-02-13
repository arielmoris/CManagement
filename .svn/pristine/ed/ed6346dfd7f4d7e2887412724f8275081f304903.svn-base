package com.cms.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.cms.util.Constants;


@Controller
public class GamePlayReportsController {

	@RequestMapping(value="/agentGameProfitabilityReport", method=RequestMethod.GET)
	public ModelAndView viewAgentGameProfitabilityReport(HttpServletRequest request){
		Map<String, Object> model = new HashMap<>();

		return new ModelAndView(Constants.View.AGENT_GAME_PROFITABILITY_REPORT, model);
	}
	
	@RequestMapping(value="/agentGameAnalysisReport", method=RequestMethod.GET)
	public ModelAndView viewAgentGameAnalysisReport(HttpServletRequest request){
		Map<String, Object> model = new HashMap<>();

		return new ModelAndView(Constants.View.AGENT_GAME_ANALYSIS_REPORT, model);
	}
	//////
	@RequestMapping(value="/playcheckReport", method=RequestMethod.GET)
	public ModelAndView viewPlaycheckReport(HttpServletRequest request){
		Map<String, Object> model = new HashMap<>();

		return new ModelAndView(Constants.View.PLAYCHECK_REPORT, model);
	}
	
	@RequestMapping(value="/progGameplayReport", method=RequestMethod.GET)
	public ModelAndView viewProgGamePlayReport(HttpServletRequest request){
		Map<String, Object> model = new HashMap<>();

		return new ModelAndView(Constants.View.PROG_GAMEPLAY_REPORT, model);
	}
	
	@RequestMapping(value="/progWinsReport", method=RequestMethod.GET)
	public ModelAndView viewProgWinsReport(HttpServletRequest request){
		Map<String, Object> model = new HashMap<>();

		return new ModelAndView(Constants.View.PROG_WINS_REPORT, model);
	}
}
