package com.great.controller;

import com.great.service.ProductionService;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.Map;

/**
 * @Author chenweiwei
 * @Date 2021-03-07 00:41
 * @Version 1.0
 */
@Controller
@RequestMapping("/production")
public class ProductionController {

    @Resource
    private ProductionService productionService;

    private static final Logger LOGGER = LoggerFactory.getLogger(ProductionController.class);

    @RequestMapping("/showQrcode")
    public ModelAndView showQrcode(String productionNo,HttpServletRequest request){
        Object object = request.getSession().getAttribute("user");
        ModelAndView mv = new ModelAndView();
        if (object != null){
            Map<String,String> map = (Map<String, String>) object;
            String userId = map.get("uRegRecommendPeople");
            LOGGER.info("productionNo:{},userId:{}",productionNo,userId);
            String img = productionService.getImg(productionNo,userId);
            if (StringUtils.isEmpty(img)){
                if("PINGAN_XINYIDAI".equals(productionNo)){
                    img = "http://www.zhongtianshangwu.top/OfficialAccounts/img/pinganQrcode.jpg";
                }else if ("PINGAN_PUHUI".equals(productionNo)){
                    img = "http://www.zhongtianshangwu.top/OfficialAccounts/img/pinganpuhui.jpg";
                }else if ("PINGAN_CHEDIDAI".equals(productionNo)){
                    img = "http://www.zhongtianshangwu.top/OfficialAccounts/img/chedidai.jpg";
                }

            }
            mv.addObject("imgPath",img);
            LOGGER.info("img:{}",img);
            mv.setViewName("product");
        }else {
            mv.setViewName("redirect:/login/login.action");
        }
        return mv;
    }


}
