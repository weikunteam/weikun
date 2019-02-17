package com.great.util;

import javax.validation.constraints.Null;

public class Ognl {

	public Ognl() {
		// TODO Auto-generated constructor stub
	}
	
	public static boolean isNotEmpty(Object o) {
		if(o == null) {
			return false;
		}
		if(o  instanceof String) {
			if(((String)o).trim().length()==0) {
				return false;
			}
		}else if(o  instanceof Integer) {
			if((Integer)o==0) {
				return false;
			}
		}
		
		
		
		return true;
	}
	
	public static  Object  transferDateType(Object o) {
		if(isNotEmpty(o)) {
			return o;
		}else {
			return null;
		}
	}
	
}
