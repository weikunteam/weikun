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
    public ModelAndView register() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("register");
        return mv;
    }

    @RequestMapping(value = "/login.action", method = RequestMethod.POST)
    @ResponseBody
    public ResponseApi login(String tel, String pwd, HttpServletRequest request, HttpServletResponse response) {
        logger.info("用户登录 tel={}",tel);
        return loginService.login(tel, pwd, request, response);
    }

    @RequestMapping(value = "/register.action", method = RequestMethod.POST)
    @ResponseBody
    public ResponseApi register(String tel, String pwd, String code, String recommend) {

        return loginService.register(tel, pwd, code, recommend);

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

    @RequestMapping("/getOpenId")
    @ResponseBody
    public void getOpenId(String code, HttpServletResponse response){
        getOpenIdService.dealRespRedirect(response,getOpenIdService.wxCodeUrl(code));


    }
}
