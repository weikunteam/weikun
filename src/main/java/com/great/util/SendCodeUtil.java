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
//网易云信分配的账号，请替换你在管理后台应用下申请的Appkey
private static final String
    APP_KEY="1b9aba576e75b28cc30d4a4d1dccc689";
//网易云信分配的密钥，请替换你在管理后台应用下申请的appSecret
private static final String APP_SECRET="34777f3bda4a";
//随机数
private static final String NONCE="123456";
//短信模板ID
private static final String TEMPLATEID="9584110";
//手机号
//private static final String MOBILE="13888888888";
//验证码长度，范围4～10，默认为4
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
 * 参考计算CheckSum的java代码，在上述文档的参数列表中，有CheckSum的计算文档示例
 */
String checkSum = getCheckSum(APP_SECRET, NONCE, curTime);

// 设置请求的header
httpPost.addHeader("AppKey", APP_KEY);
httpPost.addHeader("Nonce", NONCE);
httpPost.addHeader("CurTime", curTime);
httpPost.addHeader("CheckSum", checkSum);
httpPost.addHeader("Content-Type", "application/x-www-form-urlencoded;charset=utf-8");

// 设置请求的的参数，requestBody参数
List<NameValuePair> nvps = new ArrayList<NameValuePair>();
/*
 * 1.如果是模板短信，请注意参数mobile是有s的，详细参数配置请参考“发送模板短信文档”
 * 2.参数格式是jsonArray的格式，例如 "['13888888888','13666666666']"
 * 3.params是根据你模板里面有几个参数，那里面的参数也是jsonArray格式
 */
nvps.add(new BasicNameValuePair("templateid", TEMPLATEID));
nvps.add(new BasicNameValuePair("mobile", mobile));
nvps.add(new BasicNameValuePair("codeLen", CODELEN));

httpPost.setEntity(new UrlEncodedFormEntity(nvps, "utf-8"));

// 执行请求
HttpResponse response = httpClient.execute(httpPost);
/*
 * 1.打印执行结果，打印结果一般会200、315、403、404、413、414、500
 * 2.具体的code有问题的可以参考官网的Code状态表
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
	 * 参考计算CheckSum的java代码，在上述文档的参数列表中，有CheckSum的计算文档示例
	 */
	String checkSum = getCheckSum(APP_SECRET, NONCE, curTime);

	// 设置请求的header
	httpPost.addHeader("AppKey", APP_KEY);
	httpPost.addHeader("Nonce", NONCE);
	httpPost.addHeader("CurTime", curTime);
	httpPost.addHeader("CheckSum", checkSum);
	httpPost.addHeader("Content-Type", "application/x-www-form-urlencoded;charset=utf-8");

	// 设置请求的的参数，requestBody参数
	List<NameValuePair> nvps = new ArrayList<NameValuePair>();
	/*
	 * 1.如果是模板短信，请注意参数mobile是有s的，详细参数配置请参考“发送模板短信文档”
	 * 2.参数格式是jsonArray的格式，例如 "['13888888888','13666666666']"
	 * 3.params是根据你模板里面有几个参数，那里面的参数也是jsonArray格式
	 */
//	nvps.add(new BasicNameValuePair("templateid", TEMPLATEID));
	nvps.add(new BasicNameValuePair("mobile", mobile));
	nvps.add(new BasicNameValuePair("code", code));

	httpPost.setEntity(new UrlEncodedFormEntity(nvps, "utf-8"));

	// 执行请求
	HttpResponse response = httpClient.execute(httpPost);
	/*
	 * 1.打印执行结果，打印结果一般会200、315、403、404、413、414、500
	 * 2.具体的code有问题的可以参考官网的Code状态表
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
