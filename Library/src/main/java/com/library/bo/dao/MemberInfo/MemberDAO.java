package com.library.bo.dao.MemberInfo;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.library.bo.vo.MemberInfo.MemberVO;

public class MemberDAO {
	@Autowired
	SqlSessionTemplate sqlSession;
	
	public int getLogin(MemberVO mVO) {
		System.out.println("dao - " + mVO.getMid() + " | " + mVO.getMpw());
		
		return sqlSession.selectOne("mSQL.loginCnt", mVO);
	}

	public int getLoginCnt(MemberVO mVO) {
		int cnt = 0;
		return cnt;
	}
	
	public int getIdCount(String mid) {
		return sqlSession.selectOne("mSQL.idCnt", mid);
	}
	
	public List<MemberVO> getSelMemb(MemberVO mVO) {
		return sqlSession.selectList("mSQL.selMemb", mVO);
	}
	

	public int insertMember(MemberVO mVO) {
		return sqlSession.insert("mSQL.insertMember", mVO);
	}
	
	
	public int addMember(MemberVO mVO) {
		return sqlSession.insert("mSQL.addMember", mVO);
	}
	
}
