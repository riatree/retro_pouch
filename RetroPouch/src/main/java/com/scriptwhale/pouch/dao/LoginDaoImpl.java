package com.scriptwhale.pouch.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.scriptwhale.pouch.vo.UserVO;

@Repository("LoginDao")
public class LoginDaoImpl implements LoginDao {
	
	@Autowired
	private SqlSession ses;
	
	public void setSes(SqlSession ses) {
		this.ses = ses;
	}
	
	@Override
	public UserVO userLogin(UserVO userVO) {
		return ses.selectOne("userM.userlogin",userVO);
	}

}
