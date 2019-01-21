package com.great.util;

import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Random;

import org.apache.commons.lang3.StringUtils;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.ParseException;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.util.EntityUtils;

import com.alibaba.fastjson.JSON;

public class SendCodeUtil {
	private static final String
    SERVER_URL="https://api.netease.im/sms/sendcode.action";
//�������ŷ�����˺ţ����滻���ڹ����̨Ӧ���������Appkey
private static final String
    APP_KEY="1b9aba576e75b28cc30d4a4d1dccc689";
//�������ŷ������Կ�����滻���ڹ����̨Ӧ���������appSecret
private static final String APP_SECRET="34777f3bda4a";
//�����
private static final String NONCE="123456";
//����ģ��ID
private static final String TEMPLATEID="9584110";
//�ֻ���
//private static final String MOBILE="13888888888";
//��֤�볤�ȣ���Χ4��10��Ĭ��Ϊ4
private static final String CODELEN="6";
private static final char[] HEXES = {
        '0', '1', '2', '3',
        '4', '5', '6', '7',
        '8', '9', 'a', 'b',
        'c', 'd', 'e', 'f'
};

public static String getCode(String mobile) throws Exception {

DefaultHttpClient httpClient = new DefaultHttpClient();
HttpPost httpPost = new HttpPost(SERVER_URL);
String curTime = String.valueOf((new Date()).getTime() / 1000L);
//Random random = new Random();
//String NONCE = StringUtils.leftPad(random.nextInt(1000000)+"", 6);

/*
 * �ο�����CheckSum��java���룬�������ĵ��Ĳ����б��У���CheckSum�ļ����ĵ�ʾ��
 */
String checkSum = getCheckSum(APP_SECRET, NONCE, curTime);

// ���������header
httpPost.addHeader("AppKey", APP_KEY);
httpPost.addHeader("Nonce", NONCE);
httpPost.addHeader("CurTime", curTime);
httpPost.addHeader("CheckSum", checkSum);
httpPost.addHeader("Content-Type", "application/x-www-form-urlencoded;charset=utf-8");

// ��������ĵĲ�����requestBody����
List<NameValuePair> nvps = new ArrayList<NameValuePair>();
/*
 * 1.�����ģ����ţ���ע�����mobile����s�ģ���ϸ����������ο�������ģ������ĵ���
 * 2.������ʽ��jsonArray�ĸ�ʽ������ "['13888888888','13666666666']"
 * 3.params�Ǹ�����ģ�������м���������������Ĳ���Ҳ��jsonArray��ʽ
 */
nvps.add(new BasicNameValuePair("templateid", TEMPLATEID));
nvps.add(new BasicNameValuePair("mobile", mobile));
nvps.add(new BasicNameValuePair("codeLen", CODELEN));

httpPost.setEntity(new UrlEncodedFormEntity(nvps, "utf-8"));

// ִ������
HttpResponse response = httpClient.execute(httpPost);
/*
 * 1.��ӡִ�н������ӡ���һ���200��315��403��404��413��414��500
 * 2.�����code������Ŀ��Բο�������Code״̬��
 */
String jsonResult = EntityUtils.toString(response.getEntity(), "utf-8");
System.out.println(jsonResult);
String code= JSON.parseObject(jsonResult).getString("code");
return code;

}
public static String getCheckSum(String APP_SECRET,String NONCE,String curTime){
	String checkSum = APP_SECRET+NONCE+curTime;
	byte[] result = null;
	try {
		MessageDigest digest = MessageDigest.getInstance("SHA-1");
		 result= digest.digest(checkSum.getBytes("UTF-8"));
		
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	return bytes2Hex(result);
	
}
private static String bytes2Hex(byte[] bytes) {
    if (bytes == null || bytes.length == 0) {
        return null;
    }

    StringBuilder sb = new StringBuilder();

    for (byte b : bytes) {
        sb.append(HEXES[(b >> 4) & 0x0F]);
        sb.append(HEXES[b & 0x0F]);
    }

    return sb.toString();
}
public static boolean checkCode(String mobile,String code) throws ParseException, Exception {
	DefaultHttpClient httpClient = new DefaultHttpClient();
	HttpPost httpPost = new HttpPost("https://api.netease.im/sms/verifycode.action");
	String curTime = String.valueOf((new Date()).getTime() / 1000L);
//	Random random = new Random();
//	String NONCE = StringUtils.leftPad(random.nextInt(1000000)+"", 6);

	/*
	 * �ο�����CheckSum��java���룬�������ĵ��Ĳ����б��У���CheckSum�ļ����ĵ�ʾ��
	 */
	String checkSum = getCheckSum(APP_SECRET, NONCE, curTime);

	// ���������header
	httpPost.addHeader("AppKey", APP_KEY);
	httpPost.addHeader("Nonce", NONCE);
	httpPost.addHeader("CurTime", curTime);
	httpPost.addHeader("CheckSum", checkSum);
	httpPost.addHeader("Content-Type", "application/x-www-form-urlencoded;charset=utf-8");

	// ��������ĵĲ�����requestBody����
	List<NameValuePair> nvps = new ArrayList<NameValuePair>();
	/*
	 * 1.�����ģ����ţ���ע�����mobile����s�ģ���ϸ����������ο�������ģ������ĵ���
	 * 2.������ʽ��jsonArray�ĸ�ʽ������ "['13888888888','13666666666']"
	 * 3.params�Ǹ�����ģ�������м���������������Ĳ���Ҳ��jsonArray��ʽ
	 */
//	nvps.add(new BasicNameValuePair("templateid", TEMPLATEID));
	nvps.add(new BasicNameValuePair("mobile", mobile));
	nvps.add(new BasicNameValuePair("code", code));

	httpPost.setEntity(new UrlEncodedFormEntity(nvps, "utf-8"));

	// ִ������
	HttpResponse response = httpClient.execute(httpPost);
	/*
	 * 1.��ӡִ�н������ӡ���һ���200��315��403��404��413��414��500
	 * 2.�����code������Ŀ��Բο�������Code״̬��
	 */
	String jsonResult = EntityUtils.toString(response.getEntity(), "utf-8");
	String resultCode= JSON.parseObject(jsonResult).getString("code");
	System.out.println(jsonResult);
	if (resultCode.equals("200")) {
		return true;
	}
	return false;
}

}
