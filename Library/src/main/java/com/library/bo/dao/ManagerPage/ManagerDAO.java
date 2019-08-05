package com.library.bo.dao.ManagerPage;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.library.bo.vo.LibraryInfo.NoticeVO;
import com.library.bo.vo.ManagerPage.ManagerVO;

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
}