package com.library.bo.dao.LibraryInfo;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.library.bo.util.PageUtil;
import com.library.bo.vo.LibraryInfo.NoticeVO;

public class NoticeDAO {
	@Autowired
	SqlSessionTemplate sqlSession;
	
	//글추가
	public int insertBar(NoticeVO  nVO) {
		return sqlSession.insert("nSQL.insertBar",nVO);
	}
	
	//공지사항 조회
	public List<NoticeVO> selectBar(PageUtil pUtil) {
		return sqlSession.selectList("nSQL.selectBar", pUtil);
	}
	
	//게시물 몇개있는지 보여줌
	public int selTotalCnt() {
		return sqlSession.selectOne("nSQL.selTotalCnt");
	}
	//공지사항 디테일
		public NoticeVO DetailMain(int rno) {
			return sqlSession.selectOne("nSQL.DetailMain",rno);
		}
		
	// 검색된 게시물 수 조회
	public int searchTotal(String word) {
		return sqlSession.selectOne("nSQL.searchTotal", word);
	}
	public List<NoticeVO> noticeSearch(){
		return sqlSession.selectList("nSQL.noticeSearch");
	}
	
	// 검색데이터 조회 전담
	public List<NoticeVO> searchList(HashMap map){
		return sqlSession.selectList("nSQL.searchList", map);
	}
	
	//검색데이터 총 갯수 조쇠 전담처리
	public int getTotal(HashMap map) {
		return sqlSession.selectOne("nSQL.searchCnt", map);
	}
	
	//검색어 조회 조원용 버전
	public List<NoticeVO> noticeSearch(String word){
		return sqlSession.selectList("nSQL.noticeSearch", word);
	}
	//클릭수 증가
	public int viewUpdate(int rno) {
		return sqlSession.update("nSQL.viewsUpdate" ,rno);
	}
}
