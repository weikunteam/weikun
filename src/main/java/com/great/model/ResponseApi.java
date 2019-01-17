package com.great.model;

import java.util.List;

import org.springframework.stereotype.Component;
@Component
public class ResponseApi {
	
	private String code;
	
	private String msg;
	
	private List<Object> result;
	
	public ResponseApi(String code, String msg, List<Object> result) {
		super();
		this.code = code;
		this.msg = msg;
		this.result = result;
	}

	public ResponseApi(String code, String msg) {
		super();
		this.code = code;
		this.msg = msg;
	}
	

	public ResponseApi() {
		super();
	}
	
	public void setResponseApi(String code, String msg) {
		this.code = code;
		this.msg = msg;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public List<Object> getResult() {
		return result;
	}

	public void setResult(List<Object> result) {
		this.result = result;
	}
	
	

}
