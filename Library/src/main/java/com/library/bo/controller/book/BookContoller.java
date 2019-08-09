package com.library.bo.controller.book;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.library.bo.controller.BookInfo.*;
import com.library.bo.dao.BookDAO;
import com.library.bo.util.Paging;
import com.library.bo.vo.BookInfo.BookVO;

/**
 * 
 * @author	양희준
 * @since	2019.00.00
 * @version	1.0
 * @see
 * 			변경 이력 관리
 * 			2019.00.00		BookContoller 클래스 제작			작성자 : 양희준
 * 			2019.00.00		searchView 함수 제작				작성자 : 양희준
 * 			2019.00.00		search 함수 제작					작성자 : 양희준
 * 			2019.00.00		bookInfo 함수 제작					작성자 : 양희준
 * 			2019.00.00		bookReservation 함수 제작			작성자 : 양희준
 */

@Controller
@RequestMapping("/book")
public class BookContoller {
	
	public static final int BLOCK_LIST = 10;
	public static final int BLOCK_PAGE = 3;
	
	@Autowired
	HttpServletRequest req;
	
	@Autowired
	HttpSession session;
	
	
	@Autowired
	BookDAO bkDAO;
	
	
	// 검색 페이지 이동
	@RequestMapping("/bookSearchView.bo")
	public ModelAndView searchView(ModelAndView mv, BookVO bkVO) {	
		String view = "BookSearch/search";
		
		mv.setViewName(view);
		return mv;
	}
	
	// 도서 검색
	@RequestMapping("/bookSearch.bo")
	public ModelAndView search(ModelAndView mv) {
	  
		// bookSearch.do?page=2&kind=b_name&search=jsp
		  
		String str_page = req.getParameter("nowPage");
		String kind 	= req.getParameter("kind");
		String search 	= req.getParameter("searched");
		  
		int nowPage = 1;
		if(str_page!=null && !str_page.isEmpty())
		    nowPage = Integer.parseInt(str_page);
		  
		//start,end
		int start = (nowPage-1)*BLOCK_LIST + 1;
		int end = start + BLOCK_LIST - 1;
		  
		Map map = new HashMap();
		map.put("start",start);
		map.put("end",end);
		  
		if(!kind.equals("all")) {
			map.put(kind,search);
		 }
		
		
		  
		int rowTotal = bkDAO.getTotal(map);
		//전체 행 System.out.println(rowTotal);
		  
		List<BookVO> list = bkDAO.selectList(map);
		//String search_filter = String.format("kind=%s&search=%s", kind,search);
		String pageMenu = Paging.getPaging( nowPage, rowTotal, BLOCK_LIST, BLOCK_PAGE);
		  
		String view = "BookSearch/search_result";
		
		mv.addObject("list", list);
		mv.addObject("pageMenu",pageMenu);
		mv.setViewName(view);
		  
		return mv;
	}
	
	// 도서 상세 페이지
	@RequestMapping("/bookInfo.bo")
	public ModelAndView bookInfo(ModelAndView mv, int b_no) {
		String view = "BookInfo/bookInfo";

		BookVO bkVO = bkDAO.bookInfo(b_no);
		
		mv.addObject("bkVO", bkVO);
		mv.setViewName(view);
		return mv;
	}
	
	// 도서 예약
	@RequestMapping("/bookReservation.bo")
	@ResponseBody
	public Map bookReservation(ModelAndView mv, BookVO bkVO) {
		int m_no = 1;
		String view = "BookInfo/bookInfo";
		bkVO.setM_no(m_no);
		
		int cnt = bkDAO.bookReservation(bkVO);
		
		Map map = new HashMap();
		if(cnt!=0)
			map.put("result", "success");
		else
			map.put("result", "fail");

		return map;
	}

}
