package com.great.util;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Formatter;

public class Mytest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String s = "jsapi_ticket=LIKLckvwlJT9cWIhEQTwfMKJUcw2nnMvcPjM-iDmv040Vjod12VxYj9sYeUBOu_ZSaM-X_8N9JL_akEA1zy85Q&noncestr=dd0760ff590c079a&timestamp=1414587457&url=http://23t46112h9.iok.la/OfficialAccounts/home/gotoHome.action";
		MessageDigest crypt = null;
		try {
			crypt = MessageDigest.getInstance("SHA-1");
		} catch (NoSuchAlgorithmException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		crypt.reset();
		try {
			crypt.update(s.getBytes("UTF-8"));
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        System.out.println(byteToHex(crypt.digest())) ;
	}
	
	private static String byteToHex(final byte[] hash) {
		Formatter formatter = new Formatter();
		for (byte b : hash) {
			formatter.format("%02x", b);
		}
		String result = formatter.toString();
		formatter.close();
		return result;
	}

}
