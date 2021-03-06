package com.cms.dto;

import java.util.List;

import com.cms.bean.Order;

public final class DataTableDto {
	
	private int start;
	private int size;
	private long recordsTotal;
	private long recordsFiltered;
	private List data;
	private String searchValue;
	private String orderBy;
	private String orderType;
	private List<Order> ordering;
	

	public int getStart() {
		return start;
	}

	public void setStart(int start) {
		this.start = start;
	}

	public int getSize() {
		return size;
	}

	public void setSize(int size) {
		this.size = size;
	}

	public long getRecordsTotal() {
		return recordsTotal;
	}

	public void setRecordsTotal(long recordsTotal) {
		this.recordsTotal = recordsTotal;
	}

	public long getRecordsFiltered() {
		return recordsFiltered;
	}

	public void setRecordsFiltered(long recordsFiltered) {
		this.recordsFiltered = recordsFiltered;
	}

	public List getData() {
		return data;
	}

	public void setData(List data) {
		this.data = data;
	}

	public String getSearchValue() {
		return searchValue;
	}

	public void setSearchValue(String searchValue) {
		this.searchValue = searchValue;
	}

	public List<Order> getOrdering() {
		return ordering;
	}

	public void setOrdering(List<Order> ordering) {
		this.ordering = ordering;
	}

	public String getOrderBy() {
		return orderBy;
	}

	public void setOrderBy(String orderBy) {
		this.orderBy = orderBy;
	}

	public String getOrderType() {
		return orderType;
	}

	public void setOrderType(String orderType) {
		this.orderType = orderType;
	}

	@Override
	public String toString() {
		return "DataTableDto [start=" + start + ", size=" + size
				+ ", recordsTotal=" + recordsTotal + ", recordsFiltered="
				+ recordsFiltered + ", data=" + data + ", searchValue="
				+ searchValue + ", orderBy=" + orderBy + ", orderType="
				+ orderType + ", ordering=" + ordering + "]";
	}
	
	
}
