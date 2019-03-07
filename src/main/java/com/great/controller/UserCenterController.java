package com.great.controller;

import com.great.dao.UserLoginDao;
import com.great.model.ResponseApi;
import com.great.model.WithdrawModel;
import com.great.service.LoginService;
import com.great.service.UserCenterService;
import org.apache.commons.lang3.StringUtils;
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
        String userId = ((Map<String, Object>) request.getSession().getAttribute("user")).get("userId").toString();
        Map<String, Object> map = userCenterService.getUser(userId);
        mv.addObject("people", map);
        if (map.get("uRegRecommendPeople") != null) {
            mv.addObject("uRegRecommendPeople", userCenterService.getUser(map.get("uRegRecommendPeople").toString()));
        }
        mv.setViewName("userCenter");
        return mv;
    }

    @RequestMapping(value = "/gotoPeople.action", method = RequestMethod.GET)
    public ModelAndView gotoPeople(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();
        String userId = ((Map<String, Object>) request.getSession().getAttribute("user")).get("userId").toString();
        mv.addObject("people", userCenterService.getUser(userId));
        mv.setViewName("people");
        return mv;
    }

    @RequestMapping(value = "/updateUser.action", method = RequestMethod.POST)
    @ResponseBody
    public ResponseApi updateUser(String userName, String age, String job, HttpServletRequest request) {
        String userId = ((Map<String, Object>) request.getSession().getAttribute("user")).get("userId").toString();
        userCenterService.updateUser(userName, age, job, userId);
        return new ResponseApi("1", "保存成功");
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
        String userId = ((Map<String, Object>) request.getSession().getAttribute("user")).get("userId").toString();
        mv.addObject("people", userCenterService.getUser(userId));
        mv.setViewName("exit");
        return mv;
    }

    @RequestMapping(value = "/gotoService.action", method = RequestMethod.GET)
    public ModelAndView gotoService(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();
        String userId = ((Map<String, Object>) request.getSession().getAttribute("user")).get("userId").toString();
        List<Map<String, Object>> list = userCenterService.listService(userId, "", "", "");
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
        for (Map<String, Object> sevice : list) {
            switch (Integer.parseInt(sevice.get("checkState").toString())) {
                case 0:
                    sevice.put("state", "不可申请");
                    break;
                case 1:
                    sevice.put("state", "申请中");
                    break;
                case 2:
                    sevice.put("state", "成功放款");
                    break;
                case 3:
                    sevice.put("state", "申请被拒");
                    break;
                case 4:
                    sevice.put("state", "未操作");
                    break;
                case 5:
                    sevice.put("state", "未通知");
                    break;
                case 6:
                    sevice.put("state", "已通知");
                    break;
                case 7:
                    sevice.put("state", "未结清");
                    break;
                case 8:
                    sevice.put("state", "已结清");
                    break;
                default:
                    break;
            }
        }
        mv.addObject("listService", list);
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
    public ResponseApi suggest(String id, String suggest) {
        userCenterService.suggest(id, suggest);
        return new ResponseApi("1", "提交成功");
    }

    @RequestMapping(value = "/gotoMyService.action", method = RequestMethod.GET)
    public ModelAndView gotoMyService(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();
        String userId = ((Map<String, Object>) request.getSession().getAttribute("user")).get("userId").toString();
        List<Map<String, Object>> list = userCenterService.myService(userId, "", "", "");
        for (Map<String, Object> mySevice : list) {
            switch (Integer.parseInt(mySevice.get("type").toString())) {
                case 1:
                    mySevice.put("serviceName", "平安新一贷");
                    break;
                case 2:
                    mySevice.put("serviceName", "兴业消费金融");
                    break;
                case 3:
                    mySevice.put("serviceName", "中行消费金融");
                    break;
                case 4:
                    mySevice.put("serviceName", "海尔玖康");
                    break;
                case 5:
                    mySevice.put("serviceName", "小额贷款");
                    break;
                default:
                    break;
            }
        }
        for (Map<String, Object> mySevice : list) {
            switch (Integer.parseInt(mySevice.get("checkState").toString())) {
                case 0:
                    mySevice.put("state", "不可申请");
                    break;
                case 1:
                    mySevice.put("state", "申请中");
                    break;
                case 2:
                    mySevice.put("state", "成功放款");
                    break;
                case 3:
                    mySevice.put("state", "申请被拒");
                    break;
                case 4:
                    mySevice.put("state", "未操作");
                    break;
                case 5:
                    mySevice.put("state", "未通知");
                    break;
                case 6:
                    mySevice.put("state", "已通知");
                    break;
                case 7:
                    mySevice.put("state", "未结清");
                    break;
                case 8:
                    mySevice.put("state", "已结清");
                    break;
                default:
                    break;
            }
        }
        mv.addObject("listService", list);
        mv.setViewName("myService");
        return mv;
    }

    @RequestMapping(value = "/search.action", method = RequestMethod.POST)
    @ResponseBody
    public ResponseApi search(HttpServletRequest request, String searchText, String state, String type, int flag) {
        String userId = ((Map<String, Object>) request.getSession().getAttribute("user")).get("userId").toString();
        List<Map<String, Object>> list = null;
        if (flag == 1) {
            list = userCenterService.listService(userId, searchText, state, type);
        } else if (flag == 2) {
            list = userCenterService.myService(userId, searchText, state, type);
        }

        for (Map<String, Object> mySevice : list) {
            switch (Integer.parseInt(mySevice.get("type").toString())) {
                case 1:
                    mySevice.put("serviceName", "平安新一贷");
                    break;
                case 2:
                    mySevice.put("serviceName", "兴业消费金融");
                    break;
                case 3:
                    mySevice.put("serviceName", "中行消费金融");
                    break;
                case 4:
                    mySevice.put("serviceName", "海尔玖康");
                    break;
                case 5:
                    mySevice.put("serviceName", "小额贷款");
                    break;
                default:
                    break;

            }
        }
        for (Map<String, Object> sevice : list) {
            switch (Integer.parseInt(sevice.get("checkState").toString())) {
                case 0:
                    sevice.put("state", "不可申请");
                    break;
                case 1:
                    sevice.put("state", "申请中");
                    break;
                case 2:
                    sevice.put("state", "成功放款");
                    break;
                case 3:
                    sevice.put("state", "申请被拒");
                    break;
                case 4:
                    sevice.put("state", "未操作");
                    break;
                case 5:
                    sevice.put("state", "未通知");
                    break;
                case 6:
                    sevice.put("state", "已通知");
                    break;
                case 7:
                    sevice.put("state", "未结清");
                    break;
                case 8:
                    sevice.put("state", "已结清");
                    break;
                default:
                    break;
            }
        }
        return new ResponseApi("1", "搜索成功", list);
    }

    @RequestMapping(value = "/rechangeTel.action", method = RequestMethod.POST)
    @ResponseBody
    public ResponseApi rechangeTel(String tel, String code, HttpServletRequest request) {
        String userId = ((Map<String, Object>) (request.getSession().getAttribute("user"))).get("userId").toString();
        if (userCenterService.updateTel(tel, code, userId)) {
            return new ResponseApi("1", "更改成功");
        }
        return new ResponseApi("2", "验证码错误");
    }

    @RequestMapping(value = "/objection.action", method = RequestMethod.POST)
    @ResponseBody
    public ResponseApi objection(HttpServletRequest request, String objection) {
        String userId = ((Map<String, Object>) (request.getSession().getAttribute("user"))).get("userId").toString();
        userCenterService.insertObjection(userId, objection);
        return new ResponseApi("1", "提交成功");
    }

    @RequestMapping(value = "/gotoObjection.action", method = RequestMethod.GET)
    public ModelAndView gotoObjection() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("objection");
        return mv;
    }

    @RequestMapping(value = "/gotoWithdraw.action", method = RequestMethod.GET)
    public ModelAndView gotoWithdraw(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();
        String userId = ((Map<String, Object>) request.getSession().getAttribute("user")).get("userId").toString();
        mv.addObject("people", userCenterService.getUser(userId));
        mv.setViewName("withdraw");
        return mv;
    }

    @RequestMapping(value = "/withdraw.action", method = RequestMethod.POST)
    @ResponseBody
    public ResponseApi withdraw(String id, String card, String name, String amount, HttpServletRequest request) {
        int money = Integer.parseInt(((Map<String, Object>) request.getSession().getAttribute("user")).get("uRecommendAmount").toString());
        int inputMoney = Integer.parseInt(amount);
        if (inputMoney < money) {
            userCenterService.insertWithdraw(id, card, name, amount);
            return new ResponseApi("1", "提交成功");
        }else{
            return new ResponseApi("2", "超出可提现金额");
        }

    }

    @RequestMapping(value = "/gotoWithdrawList.action", method = RequestMethod.GET)
    public ModelAndView gotoWithdrawList(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();
        String userId = ((Map<String, Object>) request.getSession().getAttribute("user")).get("userId").toString();
        List<WithdrawModel> list = userCenterService.listWithdraw(userId, null);
        for (WithdrawModel withdraw : list) {
            switch (withdraw.getWithdrawState()) {
                case 0:
                    withdraw.setState("审核中");
                    break;
                case 1:
                    withdraw.setState("提现成功");
                    break;
                case 2:
                    withdraw.setState("提现失败");
                    break;
            }
        }
        mv.addObject("listWithdraw", list);
        mv.setViewName("withdrawList");
        return mv;
    }

    @RequestMapping(value = "/searchWithdraw.action", method = RequestMethod.POST)
    @ResponseBody
    public ResponseApi searchWithdraw(HttpServletRequest request, String state) {
        String userId = ((Map<String, Object>) request.getSession().getAttribute("user")).get("userId").toString();
        List<WithdrawModel> list = userCenterService.listWithdraw(userId, state);
        for (WithdrawModel withdraw : list) {
            switch (withdraw.getWithdrawState()) {
                case 0:
                    withdraw.setState("审核中");
                    break;
                case 1:
                    withdraw.setState("提现成功");
                    break;
                case 2:
                    withdraw.setState("提现失败");
                    break;
            }
        }
        return new ResponseApi("1", "搜索成功", list, null);
    }


}
