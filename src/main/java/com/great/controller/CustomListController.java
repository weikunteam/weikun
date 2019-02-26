package com.great.controller;

import com.great.model.ResponseApi;
import com.great.service.CustomListService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/customList")
public class CustomListController {
    @Resource
    private ResponseApi responseApi;
    @Resource
    private CustomListService customListService;

    @RequestMapping(value = "/gotoCustomList.action", method = RequestMethod.GET)
    public ModelAndView gotoCustomList(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();
        Map<String, Object> map = (Map<String, Object>) request.getSession().getAttribute("user");
        mv.addObject("customList", customListService.getList(map.get("userId").toString(), ""));
        mv.setViewName("customList");
        return mv;
    }

    @RequestMapping(value = "/searchCustomer.action", method = RequestMethod.POST)
    @ResponseBody
    public ResponseApi searchCustomer(HttpServletRequest request, String searchText) {
        String userId = ((Map<String, Object>) request.getSession().getAttribute("user")).get("userId").toString();
        List<Map<String, Object>> list = customListService.getList(userId, searchText);
        return new ResponseApi("1", "搜索成功", list);
    }

}
