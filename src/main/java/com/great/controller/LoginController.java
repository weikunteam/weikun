package com.great.controller;

import com.great.model.ResponseApi;
import com.great.service.GetOpenIdService;
import com.great.service.LoginService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("/login")
public class LoginController {
    @Resource
    private LoginService loginService;
    @Resource
    private ResponseApi responseApi;
    @Resource
    private GetOpenIdService getOpenIdService;

    final static Logger logger = LoggerFactory.getLogger(LoginController.class);

    @RequestMapping(value = "/login.action", method = RequestMethod.GET)
    public ModelAndView login() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("index");
        return mv;
    }

    @RequestMapping(value = "/register.action", method = RequestMethod.GET)
    public void register(HttpServletResponse response,String recommendCode) {
//        ModelAndView mv = new ModelAndView();
//        mv.setViewName("register");
//        return mv;
        logger.info("register recommendCode:{}",recommendCode);
        getOpenIdService.dealRespRedirect(response,getOpenIdService.wxAuthorizeUrl(recommendCode));
    }

    @RequestMapping(value = "/login.action", method = RequestMethod.POST)
    @ResponseBody
    public ResponseApi login(String tel, String pwd, HttpServletRequest request, HttpServletResponse response) {
        logger.info("用户登录 tel={}",tel);
        return loginService.login(tel, pwd, request, response);
    }

    @RequestMapping(value = "/codeLogin.action", method = RequestMethod.POST)
    @ResponseBody
    public ResponseApi codeLogin(String tel,String code, HttpServletRequest request, HttpServletResponse response) {
        logger.info("用户验证码登录 tel={}",tel);
        return loginService.codeLogin(tel, code, request, response);
    }

    @RequestMapping(value = "/register.action", method = RequestMethod.POST)
    @ResponseBody
    public ResponseApi register(String tel, String pwd, String code, String recommend, String weChatOpenId) {
        logger.info("用户注册,tel:{},pwd:{},code:{},recommend:{},openId:{}",tel,pwd,code,recommend,weChatOpenId);
        return loginService.register(tel, pwd, code, recommend, weChatOpenId);

    }

    @RequestMapping(value = "/sendCode.action", method = RequestMethod.POST)
    @ResponseBody
    public void sendCode(String tel) {
        loginService.sendCode(tel);
    }

    @RequestMapping(value = "/checkRepeat.action", method = RequestMethod.POST)
    @ResponseBody
    public ResponseApi checkRepeat(String tel) {
        if (loginService.checkRepeat(tel)) {
            responseApi.setResponseApi("2", "手机号已注册");
        } else {
            logger.info("手机号未注册:{}",tel);
            responseApi.setResponseApi("1", "手机号未注册");
        }
        return responseApi;
    }

    @RequestMapping("/getOpenId.action")
    public ModelAndView getOpenId(String code,String recommendCode){
        String openId = getOpenIdService.getOpenId(code);
        ModelAndView mv = new ModelAndView();
        mv.addObject("openId",openId);
//        mv.addObject("recommendCode",recommendCode);
        logger.info("recommendCode:{}",recommendCode);
        mv.setViewName("register");
        logger.info("model:{}",mv.getModel().toString());
        return mv;
    }

    @RequestMapping(value = "/resetPassword.action", method = RequestMethod.POST)
    @ResponseBody
    public ResponseApi resetPassword(String tel, String pwd, String code){
        return loginService.resetPassword(tel,pwd,code);
    }

}
