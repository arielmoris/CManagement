package com.cms.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="CASINOS")
public class Casino {
	
	@Id
	private String casinoId;
	private String casinoName;
	
	public String getCasinoId() {
		return casinoId;
	}
	public void setCasinoId(String casinoId) {
		this.casinoId = casinoId;
	}
	public String getCasinoName() {
		return casinoName;
	}
	public void setCasinoName(String casinoName) {
		this.casinoName = casinoName;
	}
	
}
