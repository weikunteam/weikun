package com.great.util;

import com.alibaba.fastjson.JSON;
import com.aliyuncs.DefaultAcsClient;
import com.aliyuncs.IAcsClient;
import com.aliyuncs.dysmsapi.model.v20170525.SendSmsRequest;
import com.aliyuncs.dysmsapi.model.v20170525.SendSmsResponse;
import com.aliyuncs.http.MethodType;
import com.aliyuncs.profile.DefaultProfile;
import com.aliyuncs.profile.IClientProfile;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.ParseException;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.util.EntityUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Random;

public class SendCodeUtil {


    private final static Logger LOGGER = LoggerFactory.getLogger(SendCodeUtil.class);
    private static final String
            SERVER_URL = "https://api.netease.im/sms/sendcode.action";
    //网易云信分配的账号，请替换你在管理后台应用下申请的Appkey
    private static final String
            APP_KEY = "1b9aba576e75b28cc30d4a4d1dccc689";
    //网易云信分配的密钥，请替换你在管理后台应用下申请的appSecret
    private static final String APP_SECRET = "34777f3bda4a";
    //随机数
    private static final String NONCE = "123456";
    //短信模板ID
    private static final String TEMPLATEID = "9584110";
    //手机号
    //private static final String MOBILE="13888888888";
    //验证码长度，范围4～10，默认为4
    private static final String CODELEN = "6";
    private static final char[] HEXES = {
            '0', '1', '2', '3',
            '4', '5', '6', '7',
            '8', '9', 'a', 'b',
            'c', 'd', 'e', 'f'
    };

//    @Autowired(required = true)
//    public void setRedisTemplate(RedisTemplate<String, String> redisTemplate) {
//        SendCodeUtil.redisTemplate = redisTemplate;
//    }
//
//    public RedisTemplate<String, String> getRedisTemplate() {
//        return redisTemplate;
//    }

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
        String code = JSON.parseObject(jsonResult).getString("code");
        return code;

    }

    public static String getCheckSum(String APP_SECRET, String NONCE, String curTime) {
        String checkSum = APP_SECRET + NONCE + curTime;
        byte[] result = null;
        try {
            MessageDigest digest = MessageDigest.getInstance("SHA-1");
            result = digest.digest(checkSum.getBytes("UTF-8"));

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

    public static boolean checkCode(String mobile, String code) throws ParseException, Exception {
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
        String resultCode = JSON.parseObject(jsonResult).getString("code");
        System.out.println(jsonResult);
        LOGGER.info("send code request:{}",jsonResult);
        if (resultCode.equals("200")) {
            return true;
        }
        return false;
    }

    public static String sendByAli(String mobile) throws Exception {
        //设置有效时间
        System.setProperty("sun.net.client.defaultConnectTimeout", "10000");
        System.setProperty("sun.net.client.defaultReadTimeout", "10000");
        //随机生成六位随机数
        StringBuffer stringBuffer = new StringBuffer();
        Random random = new Random();
        for (int x = 0; x <= 5; x++) {
            int r = random.nextInt(10);
            stringBuffer.append(r);
        }
        String string = stringBuffer.toString();
//        System.out.println(i);

        //初始化ascClient需要的几个参数
        final String product = "Dysmsapi";//短信API产品名称（短信产品名固定，无需修改）
        final String domain = "dysmsapi.aliyuncs.com";//短信API产品域名（接口地址固定，无需修改）
        //替换成你的AK
        final String accessKeyId = "LTAIW7w5jeSycyBl";//你的accessKeyId,参考本文档步骤2
        final String accessKeySecret = "d6nqtSFwTmwMNQPG4UYDohcnQo5gBx";//你的accessKeySecret，参考本文档步骤2
        //初始化ascClient,暂时不支持多region（请勿修改）
        IClientProfile profile = DefaultProfile.getProfile("cn-hangzhou", accessKeyId,
                accessKeySecret);
        DefaultProfile.addEndpoint("cn-hangzhou", "cn-hangzhou", product, domain);
        IAcsClient acsClient = new DefaultAcsClient(profile);
        //组装请求对象
        SendSmsRequest request = new SendSmsRequest();
        //使用post提交
        request.setMethod(MethodType.POST);
        //必填:待发送手机号。支持以逗号分隔的形式进行批量调用，批量上限为1000个手机号码,批量调用相对于单条调用及时性稍有延迟,验证码类型的短信推荐使用单条调用的方式；发送国际/港澳台消息时，接收号码格式为00+国际区号+号码，如“0085200000000”
        request.setPhoneNumbers(mobile);
        //必填:短信签名-可在短信控制台中找到
        request.setSignName("中天商务");
        //必填:短信模板-可在短信控制台中找到，发送国际/港澳台消息时，请使用国际/港澳台短信模版
        request.setTemplateCode("SMS_159625534");
        //可选:模板中的变量替换JSON串,如模板内容为"亲爱的${name},您的验证码为${code}"时,此处的值为
        //友情提示:如果JSON中需要带换行符,请参照标准的JSON协议对换行符的要求,比如短信内容中包含\r\n的情况在JSON中需要表示成\\r\\n,否则会导致JSON在服务端解析失败
        request.setTemplateParam("{\"code\":\"" + string + "\"}");
        //可选-上行短信扩展码(扩展码字段控制在7位或以下，无特殊需求用户请忽略此字段)
        //request.setSmsUpExtendCode("90997");
        //可选:outId为提供给业务方扩展字段,最终在短信回执消息中将此值带回给调用者
//		request.setOutId("yourOutId");
        //请求失败这里会抛ClientException异常
        SendSmsResponse sendSmsResponse = acsClient.getAcsResponse(request);
//        if (sendSmsResponse.getCode() != null && sendSmsResponse.getCode().equals("OK")) {
//            return true;
//        }

        System.out.println(sendSmsResponse.getMessage());
        System.out.println(sendSmsResponse.getCode());
        LOGGER.info("send code response:{}",sendSmsResponse.getCode()+sendSmsResponse.getMessage());
        return string;

    }

    public static boolean checkCodeByAli(String code,String redisCode) {
        if (redisCode == null){
            return false;
        }else  if (redisCode.equals(code)) {
            return true;
        }
        return false;
    }


}
