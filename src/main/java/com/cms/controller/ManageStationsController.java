package com.cms.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.cms.dto.CreditTransactionReportFilter;
import com.cms.dto.RegisterStationDto;
import com.cms.dto.StationsListDto;
import com.cms.util.Constants;


@Controller
public class ManageStationsController {

	@RequestMapping(value="/stationsList", method=RequestMethod.GET)
	public ModelAndView viewStationsList(@RequestParam(value="search", required=false) String search, HttpServletRequest request){
		Map<String, Object> model = new HashMap<>();
		
		if (search == null){
			request.getSession().removeAttribute("stationsListDto");
			StationsListDto stationsListDto = new StationsListDto(); 
			model.put("stationsListDto", stationsListDto);
			request.getSession().setAttribute("stationsListDto", stationsListDto);
		}else{		
			StationsListDto stationsListDto = (StationsListDto) request.getSession().getAttribute("stationsListDto");
			model.put("stationsListDto", stationsListDto);				
		}
		return new ModelAndView(Constants.View.STATIONS_LIST, model);
	}
	
	
	
	@RequestMapping(value="/registerStation", method=RequestMethod.GET)
	public ModelAndView viewRegisterStation(HttpServletRequest request){
		Map<String, Object> model = new HashMap<>();
		
		request.getSession().removeAttribute("registerStationDto");
		RegisterStationDto registerStationDto = new RegisterStationDto(); 
		model.put("registerStationDto", registerStationDto);
		request.getSession().setAttribute("registerStationDto", registerStationDto);

		return new ModelAndView(Constants.View.REGISTER_STATION, model);
	}
	
	@RequestMapping(value="/registerBulkStation", method=RequestMethod.GET)
	public ModelAndView viewRegisterBulkStation(HttpServletRequest request){
		Map<String, Object> model = new HashMap<>();
		
		request.getSession().removeAttribute("registerStationDto");
		RegisterStationDto registerStationDto = new RegisterStationDto(); 
		model.put("registerStationDto", registerStationDto);
		request.getSession().setAttribute("registerStationDto", registerStationDto);

		return new ModelAndView(Constants.View.REGISTER_BULK_STATION, model);
	}
	
	@RequestMapping(value="/updateStation", method=RequestMethod.GET)
	public ModelAndView viewUpdateStation(HttpServletRequest request){
		Map<String, Object> model = new HashMap<>();

		return new ModelAndView(Constants.View.UPDATE_STATION, model);
	}
	
	@RequestMapping(value="/stationStatus", method=RequestMethod.GET)
	public ModelAndView viewStationStatus(HttpServletRequest request){
		Map<String, Object> model = new HashMap<>();

		return new ModelAndView(Constants.View.STATION_STATUS, model);
	}
	
	@RequestMapping(value="/stationResetPassword", method=RequestMethod.GET)
	public ModelAndView viewStationResetPassword(HttpServletRequest request){
		Map<String, Object> model = new HashMap<>();

		return new ModelAndView(Constants.View.STATION_RESET_PASSWORD, model);
	}
	
	@RequestMapping(value="/stationResetAttempts", method=RequestMethod.GET)
	public ModelAndView viewStationResetAttempts(HttpServletRequest request){
		Map<String, Object> model = new HashMap<>();

		return new ModelAndView(Constants.View.STATION_RESET_ATTEMPTS, model);
	}
	
	@RequestMapping(value="/depositStation", method=RequestMethod.GET)
	public ModelAndView viewDepositStation(HttpServletRequest request){
		Map<String, Object> model = new HashMap<>();

		return new ModelAndView(Constants.View.DEPOSIT_STATION, model);
	}
	
	@RequestMapping(value="/deleteStations", method=RequestMethod.GET)
	public ModelAndView viewDeleteStations(HttpServletRequest request){
		Map<String, Object> model = new HashMap<>();

		return new ModelAndView(Constants.View.DELETE_STATIONS, model);
	}
	
//	@RequestMapping(value="/deposit", method=RequestMethod.GET)
//	public ModelAndView viewDeposit(HttpServletRequest request){
//		Map<String, Object> model = new HashMap<>();
//
//		return new ModelAndView(Constants.View.DEPOSIT, model);
//	}
	
}
