package com.cms.dto;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

/**
 * @author JavaDev004
 *
 */
public class ReportFilter {
	
	
	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	private Date fromDate;

	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
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
	
	@Override
	public String toString() {
		return "ReportFilter [fromDate=" + fromDate + ", toDate=" + toDate
				+ "]";
	}
	
	
}
