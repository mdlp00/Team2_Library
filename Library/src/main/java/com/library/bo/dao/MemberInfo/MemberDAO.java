package com.library.bo.dao.MemberInfo;

/**
 * 
 * @author	김환진
 * @since	2019.08.01
 * @version	1.0
 * @see
 * 			변경 이력 관리
 * 			2019.08.01		MemberDAO 클래스 제작			작성자 : 김환진
 * 			2019.08.01		Login 함수 제작					작성자 : 김환진
 * 			2019.08.01		LoginCnt 함수 제작				작성자 : 김환진
 * 			2019.08.01		IdCount 함수 제작				작성자 : 김환진
 * 			2019.08.02		SelMemb 함수 제작				작성자 : 김환진
 * 			2019.08.02		insertMember 함수 제작			작성자 : 김환진
 * 			2019.08.02		addMember 함수 제작				작성자 : 김환진
 * 			2019.08.05		getMyProc 함수 제작				작성자 : 김환진
 * 			2019.08.05		upMy 함수 제작					작성자 : 김환진
 * 			
 */

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.library.bo.vo.MemberInfo.MemberVO;

public class MemberDAO {
	@Autowired
	SqlSessionTemplate sqlSession;
	
	public int getLogin(MemberVO mVO) {
		return sqlSession.selectOne("mSQL.loginCnt", mVO);
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
	
	public MemberVO getMyProc(String mid) {
		return sqlSession.selectOne("mSQL.myProc", mid);
	}

	public int upMy(MemberVO mVO) {
		return sqlSession.update("mSQL.upMy", mVO);
	}
	
}
