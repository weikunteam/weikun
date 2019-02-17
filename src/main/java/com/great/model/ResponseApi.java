package com.great.model;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Component;
@Component
public class ResponseApi {
	
	private String code;
	
	private String msg;
	
	private List<Map<String,Object>> result;
	
	public ResponseApi(String code, String msg, List<Map<String,Object>> result) {
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
	
	public void setResponseApi(String code, String msg, List<Map<String,Object>> result) {
		this.code = code;
		this.msg = msg;
		this.result=result;
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

	public List<Map<String,Object>> getResult() {
		return result;
	}

	public void setResult(List<Map<String,Object>> result) {
		this.result = result;
	}
	
	

}
