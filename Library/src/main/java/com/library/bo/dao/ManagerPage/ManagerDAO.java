package com.library.bo.dao.ManagerPage;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.library.bo.vo.LibraryInfo.NoticeVO;
import com.library.bo.vo.ManagerPage.ManagerReserveVO;
import com.library.bo.vo.ManagerPage.ManagerVO;

/**
 * 
 * @author	안다예
 * @since	2019.00.00
 * @version	1.0
 * @see
 * 			변경 이력 관리
 * 			2019.00.00		ManagerDAO 클래스 제작				작성자 : 안다예
 * 			2019.00.00		Manalogin 함수 제작					작성자 : 안다예
 * 			2019.00.00		IdCount 함수 제작					작성자 : 안다예
 * 			2019.00.00		NoticeInsert 함수 제작				작성자 : 안다예
 * 			2019.00.00		selReserveList 함수 제작			작성자 : 양희준
 * 			2019.00.00		rentGo 함수 제작					작성자 : 양희준
 * 			2019.00.00		rentAdd 함수 제작					작성자 : 양희준
 * 			2019.00.00		rentView 함수 제작					작성자 : 양희준
 * 			2019.00.00		returnBtn 함수 제작					작성자 : 양희준
 */

public class ManagerDAO {

   @Autowired
   SqlSessionTemplate sqlSession;
   
   	public int Manalogin(ManagerVO manaVO ) {
   		return sqlSession.selectOne("manaSQL.managerLogin",manaVO);
   	}
   	public int IdCount(String id) {
   		return sqlSession.selectOne("manaSQL.Cnt",id);
   	}
   	public int NoticeInsert(NoticeVO nVO) {
   		return sqlSession.insert("manaSQL.NoticeInsert",nVO);
   	}
	// 예약 목록 가져오기
	public List<ManagerReserveVO> selReserveList() {
		return sqlSession.selectList("manaSQL.selReserveList");
	}
	
	// 대여 승인 버튼
	public int rentGo(int reserve_no) {
		return sqlSession.update("manaSQL.rentBtn",reserve_no);
	}
	
	// 대여 리스트에 추가
	public int rentAdd(ManagerReserveVO msvo) {
		return sqlSession.update("manaSQL.rentAdd",msvo);
	}
	
	// 대여 리스트 보기
	public List<ManagerReserveVO> rentView(){
		return sqlSession.selectList("manaSQL.rentView");
	}
	
	// 반납 버튼
	public int returnBtn(int rent_no) {
		return sqlSession.update("manaSQL.returnBtn",rent_no);
	}
	
	// 반납 리스트 추가
	public int returnListAdd(int rent_no) {
		return sqlSession.insert("manaSQL.returnListAdd",rent_no);
	}
}