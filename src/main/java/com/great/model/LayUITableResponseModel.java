package com.great.model;

import java.util.ArrayList;

public class LayUITableResponseModel {
	private int code;
	private String msg;
	private int count;
	private ArrayList<?> data;

	public LayUITableResponseModel() {
		// TODO Auto-generated constructor stub
	}
	
	public LayUITableResponseModel(int code, String msg, int count, ArrayList<?> data) {
		super();
		this.code = code;
		this.msg = msg;
		this.count = count;
		this.data = data;
	}

	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public ArrayList<?> getData() {
		return data;
	}

	public void setData(ArrayList<?> data) {
		this.data = data;
	}
	
}
