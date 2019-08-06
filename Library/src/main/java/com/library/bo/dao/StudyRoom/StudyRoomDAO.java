package com.library.bo.dao.StudyRoom;
/**
 * 
 * @author	강찬규
 * @since	2019.07.23
 * @version	1.0
 * @see
 * 			변경 이력 관리
 * 			2019.07.23		StudyRoomDAO 클래스 제작		작성자 : 강찬규
 * 			2019.07.23		selDate 함수 제작				작성자 : 강찬규
 * 			2019.07.23		reserveDate 함수 제작			작성자 : 강찬규
 * 			2019.08.06		selIdList 함수 제작				작성자 : 강찬규
 */

import java.util.*;

import org.mybatis.spring.*;
import org.springframework.beans.factory.annotation.*;

import com.library.bo.vo.StudyRoom.StudyRoomVO;


public class StudyRoomDAO {
	@Autowired
	SqlSessionTemplate sqlSession;
	
	// 날짜에 따른 예약 내역 불러오기
	public List<StudyRoomVO> selDate(HashMap map) {
		return sqlSession.selectList("studySQL.selDate", map);
	}
	
	// 스터디룸 예약하기
	public int reserveDate(StudyRoomVO vo) {
		return sqlSession.insert("studySQL.reserveDate", vo);
	}
	
	// 회원에 따른 예약 내역 불러오기
	public List<StudyRoomVO> selIdList(String id) {
		return sqlSession.selectList("studySQL.selIdList", id);
	}
	// 스터디룸 예약 취소하기
	public int cancelReserve(int roomNo) {
		return sqlSession.update("studySQL.cancelReserve", roomNo);
	}
}
