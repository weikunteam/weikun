package com.great.controller;

import com.great.dao.UserLoginDao;
import com.great.model.ResponseApi;
import com.great.service.LoginService;
import com.great.service.UserCenterService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ValueConstants;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.awt.*;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/userCenter")
public class UserCenterController {
    @Resource
    private UserCenterService userCenterService;


    @RequestMapping(value = "/gotoUserCenter.action", method = RequestMethod.GET)
    public ModelAndView gotoUserCenter(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();
        String tel = ((Map<String, Object>) request.getSession().getAttribute("user")).get("uPhone").toString();
        mv.addObject("people", userCenterService.getUser(tel));
        mv.setViewName("userCenter");
        return mv;
    }

    @RequestMapping(value = "/gotoPeople.action", method = RequestMethod.GET)
    public ModelAndView gotoPeople(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();
        String tel = ((Map<String, Object>) request.getSession().getAttribute("user")).get("uPhone").toString();
        mv.addObject("people", userCenterService.getUser(tel));
        mv.setViewName("people");
        return mv;
    }

    @RequestMapping(value = "/updateUser.action", method = RequestMethod.POST)
    @ResponseBody
    public ResponseApi updateUser(String userName, String age, String job, HttpServletRequest request) {
        String userId = ((Map<String, Object>) request.getSession().getAttribute("user")).get("userId").toString();
        userCenterService.updateUser(userName, age, job, userId);
        return new ResponseApi("1", "更改成功");
    }

    @RequestMapping(value = "/logout.action", method = RequestMethod.GET)
    public ModelAndView logout(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();
        request.getSession().invalidate();
        mv.setViewName("index");
        return mv;
    }

    @RequestMapping(value = "/gotoExit.action", method = RequestMethod.GET)
    public ModelAndView gotoExit(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();
        String tel = ((Map<String, Object>) request.getSession().getAttribute("user")).get("uPhone").toString();
        mv.addObject("people", userCenterService.getUser(tel));
        mv.setViewName("exit");
        return mv;
    }

    @RequestMapping(value = "/gotoService.action", method = RequestMethod.GET)
    public ModelAndView gotoService(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();
        String userId = ((Map<String, Object>) request.getSession().getAttribute("user")).get("userId").toString();
        List<Map<String, Object>> list = userCenterService.listService(userId);
        for (Map<String, Object> sevice : list) {

            switch (Integer.parseInt(sevice.get("type").toString())) {
                case 1:
                    sevice.put("serviceName", "平安新一贷");
                    break;
                case 2:
                    sevice.put("serviceName", "兴业消费金融");
                    break;
                case 3:
                    sevice.put("serviceName", "中行消费金融");
                    break;
                case 4:
                    sevice.put("serviceName", "海尔玖康");
                    break;
                case 5:
                    sevice.put("serviceName", "小额贷款");
                    break;
                default:
                    break;

            }

        }
        mv.addObject("listService",list );
        mv.setViewName("service");
        return mv;
    }

    @RequestMapping(value = "/gotoSuggestion.action", method = RequestMethod.GET)
    public ModelAndView gotoSuggestion(String id) {
        ModelAndView mv = new ModelAndView();
        mv.addObject("id", id);
        mv.setViewName("suggestion");
        return mv;
    }

    @RequestMapping(value = "/suggest.action", method = RequestMethod.POST)
    @ResponseBody
    public ResponseApi suggest(String id,String suggest) {
        userCenterService.suggest(id, suggest);
        return new ResponseApi("1", "更改成功");
    }


}
