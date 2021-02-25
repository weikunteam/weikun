package com.great.util;

import org.apache.commons.lang3.StringUtils;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.util.EntityUtils;

import com.alibaba.fastjson.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class ShareUtil {

	private final static String appid = "wxbd637f57bc04981d";
	private final static String appsecret = "7bc40feb9c299c132943fb02d14fbc3f";
	private final static Logger LOGGER = LoggerFactory.getLogger(ShareUtil.class);
	
	public static String getaccessToken(){
		String url = "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid="+appid+"&secret="+appsecret;
		String resultStr="";
		try {
			DefaultHttpClient httpClient = new DefaultHttpClient();
			HttpPost httpPost = new HttpPost(url);
			HttpResponse response = httpClient.execute(httpPost);
			resultStr = EntityUtils.toString(response.getEntity(), "utf-8");
//			resultStr=HttpUploadFile.getUrlCon(tokenurl);
			JSONObject objec=JSONObject.parseObject(resultStr);
			LOGGER.info("返回结果>>>>>>>>>:{}",resultStr);
			if(!StringUtils.isEmpty(objec.getString("access_token"))){
				resultStr=objec.getString("access_token");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			LOGGER.error("获取token异常:{}",e);
		}
		LOGGER.info("获取token值为>>>>>>>>:{}",resultStr);
		return resultStr;
	}
	
	public static String getJsapi() {

		String url = "https://api.weixin.qq.com/cgi-bin/ticket/getticket?access_token="
				+ getaccessToken() + "&type=jsapi";
		String resultStr = "";
try {
			DefaultHttpClient httpClient = new DefaultHttpClient();
			HttpPost httpPost = new HttpPost(url);
			HttpResponse response = httpClient.execute(httpPost);
			resultStr = EntityUtils.toString(response.getEntity(), "utf-8");
			JSONObject objec=JSONObject.parseObject(resultStr);
			LOGGER.info("返回结果>>>>>>>>>:{}",resultStr);
			if(objec!=null){
				resultStr=objec.getString("ticket");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			LOGGER.error("获取ticket异常:{}",e);
		}
			return resultStr;
	}

    public static void main(String[] args) {
        getJsapi() ;

    }


}
