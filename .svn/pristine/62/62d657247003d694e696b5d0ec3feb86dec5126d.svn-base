package com.cms.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.cms.dto.CreditTransferReportFilter;
import com.cms.dto.DataTableDto;
import com.cms.dto.ReportFilter;
import com.cms.service.FinancialReportsService;
import com.cms.util.Constants;
import com.cms.util.WebUtil;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;


@SessionAttributes(types=ReportFilter.class)
@Controller
public class ReportsController {
	
	private FinancialReportsService financialReportService;
	
	@Autowired
	public ReportsController(FinancialReportsService financialReportsService){
		this.financialReportService = financialReportsService;
	}
	
	@InitBinder
	public void initBinder(WebDataBinder binder)
	{
	    //binder.registerCustomEditor(ExpenseType.class, new ExpenseTypePropertyEditor());
	    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	    dateFormat.setLenient(false);
	    binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
	}
	
	@RequestMapping(value="/creditReport", method=RequestMethod.GET)
	public ModelAndView viewCreditReport(@RequestParam(value="search", required=false) String search, HttpServletRequest request){
		Map<String, Object> model = new HashMap<>();
		
		if (search == null){

			request.getSession().removeAttribute("creditTransferReportFilter");
			CreditTransferReportFilter creditTransferReportFilter = new CreditTransferReportFilter(Constants.AccountType.AGENT); 
			model.put("creditTransferReportFilter", creditTransferReportFilter);
			request.getSession().setAttribute("creditTransferReportFilter", creditTransferReportFilter);
		}else{		
			CreditTransferReportFilter creditTransferReportFilter = (CreditTransferReportFilter) request.getSession().getAttribute("creditTransferReportFilter");
			creditTransferReportFilter.getSummaryLevelListByAccountType();
			creditTransferReportFilter.getTransactionTypeListByAccountType();
			model.put("creditTransferReportFilter", creditTransferReportFilter);				
		}
		return new ModelAndView(Constants.View.CREDIT_REPORT, model);
	}
	
	
	@RequestMapping(value="/searchCreditReport", method=RequestMethod.POST)
	public String searchCreditReport  (@ModelAttribute CreditTransferReportFilter creditTransferReportFilter, HttpServletRequest request){
		request.getSession().setAttribute("creditTransferReportFilter",creditTransferReportFilter);
		return "redirect:/"+"creditReport"+"?search";
	}
	
	
	@RequestMapping(value="/table/creditReport")
	public @ResponseBody String tableCreditReport(HttpServletRequest request){
		
		HttpSession session = request.getSession();
		DataTableDto dataTableDto = WebUtil.mapDataTableRequest(request.getParameterMap());
		CreditTransferReportFilter filter = (CreditTransferReportFilter) session.getAttribute("creditTransferReportFilter");
		if (filter == null){
			filter = new CreditTransferReportFilter(Constants.AccountType.TOP);  
		}
		
		dataTableDto = financialReportService.getCreditTransferReportTable(filter, dataTableDto);
		
		Gson gson = new GsonBuilder().serializeNulls().create();
		
		return gson.toJson(dataTableDto);
	}
	
	@RequestMapping(value="/commissionReport", method=RequestMethod.GET)
	public ModelAndView viewCommisssionReport(HttpServletRequest request){
		Map<String, Object> model = new HashMap<>();

		return new ModelAndView(Constants.View.COMMISSION_REPORT, model);
	}
	
	@RequestMapping(value="/agentEarningReportByDay", method=RequestMethod.GET)
	public ModelAndView viewAgentEarningReportByDay(HttpServletRequest request){
		Map<String, Object> model = new HashMap<>();

		return new ModelAndView(Constants.View.AGENT_EARNING_REPORT_BY_DAY, model);
	}
	
	@RequestMapping(value="/cashierReport", method=RequestMethod.GET)
	public ModelAndView viewCashierReport(HttpServletRequest request){
		Map<String, Object> model = new HashMap<>();

		return new ModelAndView(Constants.View.CASHIER_REPORT, model);
	}
	
	@RequestMapping(value="/agentEarningReportByAccount", method=RequestMethod.GET)
	public ModelAndView viewAgentEarningReportByAccount(HttpServletRequest request){
		Map<String, Object> model = new HashMap<>();

		return new ModelAndView(Constants.View.AGENT_EARNING_REPORT_BY_ACCOUNT, model);
	}
	
	@RequestMapping(value="/agentEarningReportByStation", method=RequestMethod.GET)
	public ModelAndView viewAgentEarningReportByStation(HttpServletRequest request){
		Map<String, Object> model = new HashMap<>();

		return new ModelAndView(Constants.View.AGENT_EARNING_REPORT_BY_STATION, model);
	}
}


