package com.scriptwhale.pouch.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.scriptwhale.pouch.service.UserService;
import com.scriptwhale.pouch.vo.UserVO;

@Controller
public class UserController {

	@Autowired
	private UserService userService;

	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String join1() {

		return "join_step1";
	}

	@RequestMapping(value = "/joinAgain", method = RequestMethod.GET)
	public String join2() {

		return "join_step2";
	}

	@RequestMapping(value = "/joinCreate", method = RequestMethod.GET)
	public String joinCreate(HttpServletRequest req) {

		UserVO userVO = new UserVO();

		System.out.println("Join");

		String idFull = req.getParameter("id") + "@" + req.getParameter("email");

		userVO.setId(idFull);
		userVO.setNickname(req.getParameter("nickname"));
		userVO.setPassword(req.getParameter("password"));
		userVO.setName("하재훈");
		userVO.setPhone("01011112222");
		userVO.setSex('M');
		
		System.out.println(userVO.getId());
		System.out.println(userVO.getPassword());
		System.out.println(userVO.getNickname());
		System.out.println(userVO.getName());
		System.out.println(userVO.getPhone());
		System.out.println(userVO.getSex());
		
		int flag = userService.userJoin(userVO);
		
		System.out.println("성공여부  : "+flag);
		

		return "header";
	}

}
