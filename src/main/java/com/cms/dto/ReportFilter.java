package com.cms.dto;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class ReportFilter {
	
	
	@DateTimeFormat(pattern = "YYYY-MM-DD")
	private Date fromDate;

	@DateTimeFormat(pattern = "YYYY-MM-DD")
	private Date toDate;
	
	public Date getFromDate() {
		return fromDate;
	}
	public void setFromDate(Date fromDate) {
		this.fromDate = fromDate;
	}
	public Date getToDate() {
		return toDate;
	}
	public void setToDate(Date toDate) {
		this.toDate = toDate;
	}
	
	
}
