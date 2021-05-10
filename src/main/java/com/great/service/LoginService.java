package com.great.service;

import com.great.dao.UserLoginDao;
import com.great.enumerate.RedisKeyEnum;
import com.great.model.ResponseApi;
import com.great.util.DateUtil;
import com.great.util.PasswordUtil;
import com.great.util.SendCodeUtil;
import com.great.util.ShareUtil;
import org.apache.commons.codec.digest.DigestUtils;
import org.apache.http.ParseException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.amqp.core.AmqpTemplate;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;

@Service
public class LoginService {
    @Resource
    private UserLoginDao userLoginDao;
    @Resource
    private RedisTemplate<String, String> redisTemplate;
    @Resource
    private AmqpTemplate amqpTemplate;

    private static Logger log = LoggerFactory.getLogger(LoginService.class);
    public ResponseApi login(String tel, String pwd, HttpServletRequest request, HttpServletResponse response) {
        ResponseApi responseApi = new ResponseApi();
        Map<String, Object> map = userLoginDao.getUser(tel);
        if (map != null) {
            pwd = DigestUtils.sha1Hex(pwd + map.get("salt"));
            if (map.get("uPsw").equals(pwd)) {
                request.getSession().setAttribute("user", map);
                responseApi.setResponseApi("1", "登录成功");
                Cookie telCookie = new Cookie("tel",tel);
                telCookie.setMaxAge(3600*24*7);
                log.info("用户{}存入cookie", tel);
                response.addCookie(telCookie);
            } else {
                responseApi.setResponseApi("2", "密码错误");
            }
        } else {
            log.info("用户:{}手机号未注册",tel);
            responseApi.setResponseApi("3", "手机号未注册");
        }


        return responseApi;
    }

    public ResponseApi codeLogin(String tel,String code, HttpServletRequest request, HttpServletResponse response) {
        ResponseApi responseApi = new ResponseApi();
        Map<String, Object> map = userLoginDao.getUser(tel);
        if (map != null) {
            String redisCode = redisTemplate.opsForValue().get(RedisKeyEnum.USER_CODE.key() + tel);
            if (StringUtils.hasText(code) && code.equals(redisCode)) {
                request.getSession().setAttribute("user", map);
                responseApi.setResponseApi("1", "登录成功");
                Cookie telCookie = new Cookie("tel",tel);
                telCookie.setMaxAge(3600*24*7);
                log.info("用户{}存入cookie", tel);
                response.addCookie(telCookie);
            } else {
                responseApi.setResponseApi("2", "验证码错误");
            }
        } else {
            log.info("用户:{}手机号未注册",tel);
            responseApi.setResponseApi("3", "手机号未注册");
        }


        return responseApi;
    }

    public ResponseApi register(String tel, String pwd, String code, String recommendCode, String openId) {

        ResponseApi responseApi = new ResponseApi();
        try {
            String redisCode = redisTemplate.opsForValue().get(RedisKeyEnum.USER_CODE.key() + tel);
            if (SendCodeUtil.checkCodeByAli(code, redisCode)) {
                String date = DateUtil.getDateTime();
                String selfCode = Long.toHexString(Long.parseLong(tel));
                String salt = PasswordUtil.getNextSalt();
                pwd = DigestUtils.sha1Hex(pwd + salt);
                String recommendPeople = userLoginDao.getRecommendpeople(recommendCode);
                log.info("注册保存数据,tel:{},pwd:{},date:{},selfCode:{},salt:{},recommendPeople:{},openId:{}",
                        tel,pwd,date,selfCode,salt,recommendPeople,openId);
                userLoginDao.addUser(tel, pwd, date, selfCode, salt, recommendPeople, openId);
                responseApi.setResponseApi("2", "注册成功");
                //获取推荐人openId，如果有的话
                if (StringUtils.hasText(recommendPeople)){
                    String recommendOpenId = userLoginDao.getUserById(recommendPeople).get("openId").toString();
                    Map<String,String> params = new HashMap<String, String>();
                    params.put("token", ShareUtil.getaccessToken());
                    params.put("tel",tel);
                    params.put("registerTime",date);
                    params.put("openId",recommendOpenId);
                    log.info("发送mq消息:{}",params.toString());
                    amqpTemplate.convertAndSend("top.sendMessage.register",params);
                }
            } else {
                responseApi.setResponseApi("3", "验证码不正确");
            }
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return responseApi;
    }

    public ResponseApi resetPassword(String tel,String pwd,String code){
        ResponseApi responseApi = new ResponseApi();
        try {
            String redisCode = redisTemplate.opsForValue().get(RedisKeyEnum.USER_CODE.key() + tel);
            if (SendCodeUtil.checkCodeByAli(code, redisCode)){
                String salt = PasswordUtil.getNextSalt();
                pwd = DigestUtils.sha1Hex(pwd + salt);
                log.info("用户:{}密码重置，重置密码为:{}",tel,pwd);
                userLoginDao.updatePwd(tel,pwd,salt);
                responseApi.setResponseApi("2", "重置成功");
            }else {
                responseApi.setResponseApi("3", "验证码不正确");
            }
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        return responseApi;
    }

    public void sendCode(String mobile) {
        try {
//			SendCodeUtil.getCode(mobile);
            String code = SendCodeUtil.sendByAli(mobile);
            redisTemplate.opsForValue().set(RedisKeyEnum.USER_CODE.key() + mobile, code);
            redisTemplate.expire(RedisKeyEnum.USER_CODE.key() + mobile, 10, TimeUnit.MINUTES);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

    public boolean checkCode(String mobile, String code) throws ParseException, Exception {
        return SendCodeUtil.checkCode(mobile, code);
    }

    public boolean checkRepeat(String tel) {
        Map<String, Object> map = userLoginDao.getUser(tel);
        if (map != null) {//号码已被注册
            return true;
        }
        return false;
    }

}
