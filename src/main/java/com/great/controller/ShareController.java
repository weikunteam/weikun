package com.great.controller;

import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.great.util.PasswordUtil;
import com.great.util.ShareUtil;
import com.great.util.SignUtil;
@Controller
@RequestMapping("/share")
public class ShareController {

	@RequestMapping(value="/share.action",method= RequestMethod.POST)
	@ResponseBody
    public Map<String, String> share(String url) throws Exception {
        Map<String, String> map = new HashMap<String, String>();
        String jsapi_ticket = ShareUtil.getJsapi();//jsapi_ticket
        String timestamp = Long.toString(System.currentTimeMillis() / 1000);//时间戳
        String nonceStr = PasswordUtil.getNextSalt();
        String signature = SignUtil.getSignature(
            jsapi_ticket, nonceStr, timestamp,
            url);//验证签名
        System.out.println("生成的签名"+signature);
        map.put("url", url);
        map.put("jsapi_ticket", jsapi_ticket);
        map.put("nonceStr", nonceStr);
        map.put("timestamp", timestamp);
        map.put("signature", signature);
        map.put("appid","wxa8ea59e08c089ec5");//测试时写死
        return map;
    }
	
	@RequestMapping(value="/gotoShare.action",method= RequestMethod.GET)
	public ModelAndView login(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("recommend");
		return mv;
	}
	@RequestMapping(value="/recommend.action",method= RequestMethod.GET)
	public ModelAndView recommend(HttpServletRequest request){
		ModelAndView mv = new ModelAndView();
		Map<String, Object> map = (Map<String, Object>) request.getSession().getAttribute("user");
		mv.setViewName("redirect:/share/gotoShare.action?code="+map.get("uRecommendCode"));
		return mv;
	}
	

}
