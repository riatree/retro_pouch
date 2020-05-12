package com.scriptwhale.pouch.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.scriptwhale.pouch.vo.UserVO;

@Repository("UserDao")
public class UserDaoImpl implements UserDao {
	
	@Autowired
	private SqlSession ses;
	
	@Override
	public int userJoin(UserVO userVO) {
		return ses.insert("userM.userJoinGo", userVO);
	}

}
