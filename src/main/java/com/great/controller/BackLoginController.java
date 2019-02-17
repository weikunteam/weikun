package com.great.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import com.great.model.PermissionModel;
import com.great.model.ResponseApi;
import com.great.model.UserModel;
import com.great.service.BackLoginService;

@Controller
@RequestMapping("/backLogin")
public class BackLoginController {

	@Resource
	private BackLoginService backLoginService;
	@Resource
	private ResponseApi responseApi;
	
	@RequestMapping(value = "/BackLogin.action", method = RequestMethod.POST)
	@ResponseBody
	public ModelAndView backLogin(String uBackGroundAccount, String uBackGroundPsw,HttpServletRequest request,HttpServletResponse response,HttpSession session) {
		System.out.println(uBackGroundAccount);
		System.out.println(uBackGroundPsw);
		ModelAndView mav=new ModelAndView();
		
		Boolean isLoginSuccess=backLoginService.backLoginIsSuccess(uBackGroundAccount, uBackGroundPsw);
		
		if (isLoginSuccess) {
			System.out.println("success");
			UserModel userModel=backLoginService.getUserBackGroundInfo(uBackGroundAccount);
			
			ArrayList<PermissionModel> perList = userModel.getRoleList().get(0).getPermissionList();
			
			for (int i = 0; i < perList.size(); i++) {
				if (perList.get(i).getpId() == 0) {
					perList.get(i).setOwnChild(0);
					for (int j = 0; j < perList.size(); j++) {
						if (perList.get(j).getpId() == perList.get(i).getPermissionId()) {
							perList.get(i).setOwnChild(1);
							break;
						}
					}
				}
			}
			
			session.setAttribute("backGroundUser", userModel);
			System.out.println("后台用户id"+userModel.getUserId());
			request.setAttribute("permissionList", userModel.getRoleList().get(0).getPermissionList());
			mav.setViewName("backgroundmain");
			
			//responseApi.setResponseApi("1", "登录成功");
		} else {
			System.out.println("faith");
			response.setContentType("text/html;charset=utf-8");
			 PrintWriter out = null;
			try {
				out = response.getWriter();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			    out.flush();
			    out.println("<script>");
			    out.println("alert('密码错误！');");
			    out.println("history.back();");
			    out.println("</script>"); 

			    mav.setViewName("backlogin");
//			    return mav;
			//responseApi.setResponseApi("2", "密码错误");
		}

		// ModelAndView mv = new ModelAndView();

		return mav;
	}
	
	//校验客户数据列表
	@RequestMapping(value="/checkAccount.action",method= RequestMethod.GET)
	@ResponseBody
	public Map<String,Object> checkAccount(String uBackGroundAccount) {
		System.out.println("uBackGroundAccount"+uBackGroundAccount);
		String existCode=backLoginService.checkAccount(uBackGroundAccount);
		Map<String,Object> responseMap=new HashMap<String, Object>();
		System.out.println("----"+existCode);
		responseMap.put("code", existCode);
		return responseMap;
	}
	
}
