package com.cms.bean;

import java.io.Serializable;
import java.lang.reflect.Type;
import java.util.Collection;

import com.cms.util.TypeTokenSub;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

public class ResponseWrapper implements Serializable{
	
	private int respCode;
	private String message;
	private Object data;
	private Record record;
	
	public int getRespCode() {
		return respCode;
	}
	public void setRespCode(int respCode) {
		this.respCode = respCode;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public Object getData() {
		return data;
	}
	public void setData(Object data) {
		this.data = data;
	}
	public Record getRecord() {
		return record;
	}
	public void setRecord(Record record) {
		this.record = record;
	}
	public <T extends Collection<? extends ResponseData>> T getDataAsCollection(){
		Gson gson = new GsonBuilder().create();
		Type type = new TypeTokenSub<T>().getType();
		T result = gson.fromJson(gson.toJson(getData()), type);
		return result;
		
	}
	public <T extends ResponseData> T getDataAsSpecifiedType(Class<T> t){
		Gson gson = new GsonBuilder().create();
		T result = gson.fromJson(gson.toJson(getData()), t);
		return result;
	}
	@Override
	public String toString() {
		return "ResponseWrapper [respCode=" + respCode + ", message=" + message
				+ ", data=" + data + ", record=" + record + "]";
	}
	
	
}
