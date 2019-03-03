package com.great.model;

import java.util.ArrayList;

public class TreeNodeModel {
	
	private  String title;
	private  String value;
	private boolean checked;
	private boolean disabled;
	private boolean notDistribute;
	private ArrayList<TreeNodeModel> data;
	
	public TreeNodeModel() {
		// TODO Auto-generated constructor stub
	}

	public TreeNodeModel(String title, String value, boolean checked, boolean disabled, ArrayList<TreeNodeModel> data) {
		super();
		this.title = title;
		this.value = value;
		this.checked = checked;
		this.disabled = disabled;
		this.data = data;
	}


	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getValue() {
		return value;
	}
	public void setValue(String value) {
		this.value = value;
	}
	public boolean isChecked() {
		return checked;
	}
	public void setChecked(boolean checked) {
		this.checked = checked;
	}
	public boolean isDisabled() {
		return disabled;
	}
	public void setDisabled(boolean disabled) {
		this.disabled = disabled;
	}
	public ArrayList<TreeNodeModel> getData() {
		return data;
	}
	public void setData(ArrayList<TreeNodeModel> data) {
		this.data = data;
	}

	public boolean isNotDistribute() {
		return notDistribute;
	}

	public void setNotDistribute(boolean notDistribute) {
		this.notDistribute = notDistribute;
	}
	
	
}
