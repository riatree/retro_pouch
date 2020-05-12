package com.scriptwhale.pouch.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.scriptwhale.pouch.service.LoginService;
import com.scriptwhale.pouch.vo.UserVO;

@Controller
public class LoginController {
	
	@Autowired
	private LoginService loginService; 
	
	@RequestMapping(value = "/login", method=RequestMethod.GET)
	public String login() {
		return "login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(UserVO userVO, HttpSession ses, Model model) {
		
		ses.setAttribute("userConfig",  loginService.userLogin(userVO));
		//ses.setMaxInactiveInterval(180); // 세션유지시간 3분

		return "redirect:/";
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession ses, @RequestHeader String referer) {
        // 세션 제거
		ses.invalidate();
		
		 return "redirect:"+referer;
	}
}
