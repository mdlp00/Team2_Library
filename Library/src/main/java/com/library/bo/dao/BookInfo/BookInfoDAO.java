package com.library.bo.dao.BookInfo;

import java.util.List;

import org.mybatis.spring.*;
import org.springframework.beans.factory.annotation.*;

import com.library.bo.vo.BookInfo.*;

/**
 * 
 * @author	강찬규
 * @since	2019.07.30
 * @version	1.0
 * @see
 * 			변경 이력 관리
 * 			2019.07.30		BookInfoDAO 클래스 제작		작성자 : 강찬규
 * 			2019.07.30		cntRent 함수 제작			작성자 : 강찬규
 * 			2019.07.30		cntReturn 함수 제작			작성자 : 강찬규
 * 			2019.07.30		selRentList 함수 제작		작성자 : 강찬규
 * 			2019.07.30		selReturnOk 함수 제작		작성자 : 강찬규
 * 			2019.07.30		selReturnDate 함수 제작		작성자 : 강찬규
 * 			2019.07.31		selReserveList 함수 제작	작성자 : 강찬규
 * 			2019.07.31		selReserveId 함수 제작		작성자 : 강찬규
 * 			2019.07.31		cancelReserveBook 함수 제작	작성자 : 강찬규
 */
public class BookInfoDAO {
	@Autowired
	SqlSessionTemplate sqlSession;
	
	// 대출 권수 확인하기
		public int cntRent(String id) {
			return sqlSession.selectOne("bifSQL.cntRent", id);
		}
		// 반납 권수 확인하기
		public int cntReturn(String id) {
			return sqlSession.selectOne("bifSQL.cntReturn", id);
		}
		// 대출 목록 가져오기
		public List<BookRentVO> selRentList(String id) {
			return sqlSession.selectList("bifSQL.selRentList", id);
		}
		// 반납 여부 확인하기
		public int selReturnOk(int rno) {
			return sqlSession.selectOne("bifSQL.selReturnOk", rno);
		}
		// 반납 날짜 가져오기
		public String selReturnDate(int rno) {
			return sqlSession.selectOne("bifSQL.selReturnDate", rno);
		}
		// 예약 목록 가져오기
		public List<BookReserveVO> selReserveList(String id) {
			return sqlSession.selectList("bifSQL.selReserveList", id);
		}
		// 책 예약명단 가져오기
		public List<String> selReserveId(String bookName) {
			return sqlSession.selectList("bifSQL.selReserveId", bookName);
		}
		// 책 예약 취소하기
		public int cancelReserveBook(int rno) {
			return sqlSession.update("bifSQL.cancelReserveBook", rno);
		}
}
