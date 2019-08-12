package com.library.bo.controller.LibraryInfo;



import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.library.bo.dao.LibraryInfo.NoticeDAO;
import com.library.bo.util.PageUtil;
import com.library.bo.vo.LibraryInfo.NoticeVO;

@Controller
@RequestMapping("/LibraryInfo")
public class Notice {    

@Autowired
NoticeDAO nDAO;
	
	// 공지사항
	@RequestMapping("/notice.bo")
	public ModelAndView notice(ModelAndView mv, HttpServletRequest req) {
		String strPage = req.getParameter("nowPage");
		int nowPage = 1;

		if (strPage != null) {
			try {
				nowPage = Integer.parseInt(strPage);
			} catch (Exception e) {
				nowPage = 1;
			}
			
		}

		int totalCount = nDAO.selTotalCnt();
		
		PageUtil pUtil = new PageUtil(nowPage, totalCount);
		ArrayList<NoticeVO> list = (ArrayList<NoticeVO>) nDAO.selectBar(pUtil);


		mv.addObject("LIST", list); // LIST -> jsp에서 사용
		mv.addObject("PAGE", pUtil);
		//mv.addObject("isSearch", "Y");

		String view = "LibraryInfo/notice";
		mv.setViewName(view);
		return mv;
	}
	
	@RequestMapping("/noticeMain.bo")
	public ModelAndView notiveMain(ModelAndView mv, HttpServletRequest req) {
		NoticeVO nVO = null;
		// 할일
		// 데이터받고(글번호, 현재페이지)
		String no = req.getParameter("nno");
		String name = req.getParameter("body");
		int rno = 1;
		try {
			rno = Integer.parseInt(no);
			nDAO.viewUpdate(rno);
			nVO = nDAO.DetailMain(rno);
		} catch (Exception e) {
		}

		mv.addObject("NVO", nVO);

		String view = "LibraryInfo/noticeMain";
		mv.setViewName(view);
		return mv;
	}
	
	
	// 자주하는질문
	@RequestMapping("/qnA.bo")
	public ModelAndView qnA(ModelAndView mv) {
		String view = "LibraryInfo/qnA";
		mv.setViewName(view);
		return mv;
	}
	// 회원가입안내
	@RequestMapping("/joinGide.bo")
	public ModelAndView joinGide(ModelAndView mv) {
		String view = "LibraryInfo/joinGide";
		mv.setViewName(view);
		return mv;
	}
	
	@RequestMapping("/noticeSearch")
	@ResponseBody
	public NoticeVO noticeSearch(NoticeVO nVO, HttpServletRequest req) {
		String word = nVO.getWord(); //가져오는 코드

		List<NoticeVO> list = nDAO.noticeSearch();
		
		return nVO;
	}
	
}
