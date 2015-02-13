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
public class ManageSettingsController {

	@RequestMapping(value="/manageSettings", method=RequestMethod.GET)
	public ModelAndView viewLoginsList(HttpServletRequest request){
		Map<String, Object> model = new HashMap<>();

		return new ModelAndView(Constants.View.MANAGE_SETTINGS, model);
	}
	
}
