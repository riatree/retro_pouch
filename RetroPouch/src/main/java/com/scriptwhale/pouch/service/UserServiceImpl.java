package com.scriptwhale.pouch.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.scriptwhale.pouch.dao.UserDao;
import com.scriptwhale.pouch.vo.UserVO;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserDao userDao;
	
	@Override
	public int userJoin(UserVO userVO) {
		return userDao.userJoin(userVO);
	}

}
