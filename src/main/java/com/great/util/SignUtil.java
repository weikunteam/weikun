package com.great.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.Security;
import java.util.Formatter;

public class SignUtil {

	 /**
     * 获得分享链接的签名。
     * @param ticket
     * @param nonceStr
     * @param timeStamp
     * @param url
     * @return
     * @throws Exception
     */
    public static String getSignature(String ticket, String nonceStr, String timeStamp, String url) throws Exception {
        String sKey = "jsapi_ticket=" + ticket
                + "&noncestr=" + nonceStr + "&timestamp=" + timeStamp
                + "&url=" + url;
        System.out.println(sKey);
        MessageDigest crypt = MessageDigest.getInstance("SHA-1");
		crypt.reset();
		crypt.update(sKey.getBytes("UTF-8"));
        return byteToHex(crypt.digest());
    }
 
 
 /**
     * 验证签名。
     * 
     * @param signature
     * @param timestamp
     * @param nonce
     * @return
     */
    public static String getSignature(String sKey) throws Exception {
        String ciphertext = null;
        MessageDigest md = MessageDigest.getInstance("SHA-1");
        byte[] digest = md.digest(sKey.toString().getBytes());
        ciphertext = byteToStr(digest);
        return ciphertext.toLowerCase();
    }
 
 /** 
     * 将字节数组转换为十六进制字符串 
     *  
     * @param byteArray 
     * @return 
     */ 
    private static String byteToStr(byte[] byteArray) {  
        String strDigest = "";  
        for (int i = 0; i < byteArray.length; i++) {  
            strDigest += byteToHexStr(byteArray[i]);  
        }  
        return strDigest;  
    }  
  /** 
     * 将字节转换为十六进制字符串 
     *  
     * @param mByte 
     * @return 
     */ 
    private static String byteToHexStr(byte mByte) {  
        char[] Digit = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F' };  
        char[] tempArr = new char[2];  
        tempArr[0] = Digit[(mByte >>> 4) & 0X0F];  
        tempArr[1] = Digit[mByte & 0X0F];  
 
        String s = new String(tempArr);  
        return s;  
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
    
    public static String SHA1(String decript) {  
        try {  
            MessageDigest digest = java.security.MessageDigest.getInstance("SHA-1");  
            digest.update(decript.getBytes());  
            byte messageDigest[] = digest.digest();  
            // Create Hex String  
            StringBuffer hexString = new StringBuffer();  
            // 字节数组转换为 十六进制 数  
                for (int i = 0; i < messageDigest.length; i++) {  
                    String shaHex = Integer.toHexString(messageDigest[i] & 0xFF);  
                    if (shaHex.length() < 2) {  
                        hexString.append(0);  
                    }  
                    hexString.append(shaHex);  
                }  
                return hexString.toString();  
       
            } catch (NoSuchAlgorithmException e) {  
                e.printStackTrace();  
            }  
            return "";  
    } 

}
