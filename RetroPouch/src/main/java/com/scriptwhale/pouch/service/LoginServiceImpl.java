package com.scriptwhale.pouch.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.scriptwhale.pouch.dao.LoginDao;
import com.scriptwhale.pouch.vo.UserVO;

@Service
public class LoginServiceImpl implements LoginService {
	
	@Autowired
	private LoginDao loginDao;
	
	@Override
	public UserVO userLogin(UserVO userVO) {
		return loginDao.userLogin(userVO);
	}

}
