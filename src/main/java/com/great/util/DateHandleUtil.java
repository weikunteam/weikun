package com.great.util;

public class DateHandleUtil {

	public static String deleteZero(String test) {
		//System.out.println("---"+ +"---");
		if(test!=null && !test.trim().equals("")) {
			if(firtCharIsOwnZero(test)) {
				return test.substring(1, 2);
			}else {
				return test;
			}
		}else {
			return "";
		}
	}
	
	public static String addZero(String test) {
		//System.out.println("---"+ +"---");
		if(test!=null && !test.trim().equals("")) {
			if(test.length()==1) {//个位数
				return "0"+test;
			}
			return test;
		}else {
			return "";
		}
	}
	
	public static boolean firtCharIsOwnZero(String test) {
		if(test!=null && !test.trim().equals("")) {
			if(test.substring(0, 1).equals("0")) {
				return true;
			}else {
				return false;
			}
			
		}else {
			return false;
		}
	}

}
