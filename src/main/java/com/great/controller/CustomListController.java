package com.great.controller;

import com.great.model.ResponseApi;
import com.great.service.CustomListService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.Map;

@Controller
@RequestMapping("/customList")
public class CustomListController {
    @Resource
    private ResponseApi responseApi;
    @Resource
    private CustomListService customListService;
    @RequestMapping(value="/gotoCustomList.action",method= RequestMethod.GET)
    public ModelAndView gotoCustomList(HttpServletRequest request){
        ModelAndView mv = new ModelAndView();
        Map<String,Object> map = (Map<String,Object>)request.getSession().getAttribute("user");
        mv.addObject("customList", customListService.getList(map.get("uPhone").toString()));
        mv.setViewName("customList");
        return mv;
    }

}
