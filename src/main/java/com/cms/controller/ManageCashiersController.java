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
public class ManageCashiersController {
	
	@RequestMapping(value="/loginsList", method=RequestMethod.GET)
	public ModelAndView viewLoginsList(HttpServletRequest request){
		Map<String, Object> model = new HashMap<>();

		return new ModelAndView(Constants.View.LOGINS_LIST, model);
	}
	
	@RequestMapping(value="/addLogin", method=RequestMethod.GET)
	public ModelAndView viewAddLogin(HttpServletRequest request){
		Map<String, Object> model = new HashMap<>();

		return new ModelAndView(Constants.View.ADD_LOGIN, model);
	}
	
	@RequestMapping(value="/updateLogin", method=RequestMethod.GET)
	public ModelAndView viewUpdateLogin(HttpServletRequest request){
		Map<String, Object> model = new HashMap<>();

		return new ModelAndView(Constants.View.UPDATE_LOGIN, model);
	}
	
//	@RequestMapping(value="/loginStatus", method=RequestMethod.GET)
//	public ModelAndView viewLoginStatus(HttpServletRequest request){
//		Map<String, Object> model = new HashMap<>();
//
//		//return new ModelAndView(Constants.View.LOGIN_STATUS, model);
//	}
}
