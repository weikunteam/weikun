package com.great.util;

import java.io.UnsupportedEncodingException;
import java.security.SecureRandom;
import java.util.Random;

public class PasswordUtil {

	    public static String getNextSalt() throws UnsupportedEncodingException {
	        Random ranGen = new SecureRandom();
	        byte[] aesKey = new byte[8];
	        ranGen.nextBytes(aesKey);
	        StringBuffer hexString = new StringBuffer();
	        for (int i = 0; i < aesKey.length; i++) {
	            String hex = Integer.toHexString(0xff & aesKey[i]);
	            if (hex.length() == 1)
	                hexString.append('0');
	            hexString.append(hex);
	        }
	        System.out.println(hexString);
			return hexString.toString();
	    }
	}
