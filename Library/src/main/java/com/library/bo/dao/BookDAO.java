package com.library.bo.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.library.bo.dao.ManagerPage.*;
import com.library.bo.vo.BookVO;

/**
 * 
 * @author	양희준
 * @since	2019.00.00
 * @version	1.0
 * @see
 * 			변경 이력 관리
 * 			2019.00.00		BookDAO 클래스 제작					작성자 : 양희준
 * 			2019.00.00		getTotal 함수 제작					작성자 : 양희준
 * 			2019.00.00		selectList 함수 제작				작성자 : 양희준
 * 			2019.00.00		bookInfo 함수 제작					작성자 : 양희준
 * 			2019.00.00		bookReservation 함수 제작			작성자 : 양희준
 */

public class BookDAO {
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	// 검색 데이터 총 갯수 조회 전담 처리 함수
	public int getTotal(Map map) {
		return sqlSession.selectOne("bkSQL.book_search_count", map);
	}
	
	// 검색 정보 보여주는 함수
	public List<BookVO> selectList(Map map){
		List<BookVO> list = sqlSession.selectList("bkSQL.book_search_list", map);
		return list;
	}
	
	// 검색정보 상세보기 함수
	public BookVO bookInfo(int b_no) {
		BookVO bkVO = sqlSession.selectOne("bkSQL.book_info",b_no);
		return bkVO;
	}
	
	// 도서 예약 함수
	public int bookReservation(BookVO bkVO) {
		return sqlSession.insert("bkSQL.book_reservation",bkVO);
	}
}
