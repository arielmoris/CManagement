package com.cms.controller;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cms.dto.CreditTransferReportFilter;
import com.cms.dto.DataTableDto;
import com.cms.service.FinancialReportsService;
import com.google.gson.GsonBuilder;

@Controller
public class TestController{
	
	@Autowired
	public FinancialReportsService financialReportsService;
	
	@RequestMapping(value="/reports/index")
	public @ResponseBody String getCreditTransferReport(){
		CreditTransferReportFilter filter = new CreditTransferReportFilter();
		filter.setFromDate(new Date());
		filter.setToDate(new Date());
		
		DataTableDto dataTableDto = new DataTableDto();
		dataTableDto.setSize(12);
		dataTableDto.setStart(0);
		
		dataTableDto = financialReportsService.getPlayerCreditTransferReportTable(filter, dataTableDto);
		
		return new GsonBuilder().serializeNulls().create().toJson(dataTableDto);
	}
}
