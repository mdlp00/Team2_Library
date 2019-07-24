package com.library.bo.dao.LibraryInfo;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.library.bo.vo.LibraryInfo.NoticeVO;

public class NoticeDAO {
	@Autowired
	SqlSessionTemplate sqlSession;
	
	//글추가
	public int insertBar(NoticeVO  noticeVO) {
		return sqlSession.insert("nSQL.insertBar",noticeVO);
	}
	
}
