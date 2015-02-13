package com.cms.exception;


public class DaoException extends ApplicationException {

	public DaoException(String message) {
		super(message);
	}
	
	public DaoException(String message, Throwable e) {
		super(message, e);
	}
}
