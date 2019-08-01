package com.library.bo.controller.BookInfo;

import java.util.*;

import javax.servlet.http.*;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.*;
import org.springframework.web.servlet.view.*;

import com.library.bo.dao.BookInfo.*;
import com.library.bo.service.BookInfo.*;
import com.library.bo.vo.BookInfo.*;

/**
 * 
 * @author	강찬규
 * @since	2019.07.29
 * @version	1.0
 * @see
 * 			변경 이력 관리
 * 			2019.07.29		BookInfo 클래스 제작				작성자 : 강찬규
 * 			2019.07.29		goLoans 함수 제작					작성자 : 강찬규
 * 			2019.07.31		goBookCh 함수 제작					작성자 : 강찬규
 * 			2019.07.31		cancelReserveBook 함수 제작			작성자 : 강찬규
 */

@Controller
@RequestMapping("/bookinfo")
public class BookInfo {
	@Autowired
	BookInfoDAO bifDAO;
	
	@Autowired
	BookInfoService bifService;
	
	// 대출 내역 페이지로 이동
	@RequestMapping("/goLoans.bo")
	public ModelAndView goLoans(ModelAndView mv, HttpSession session) {
		session.setAttribute("SID", "soo");
		// 아이디 가져오기
		String id = (String)session.getAttribute("SID");
		// 대출 중인 도서 목록
		List<BookRentVO> list = bifDAO.selRentList(id);
		int size = list.size();
		for(int i = 0; i < size; i++) {
			// 반납예정일
			list.get(i).setrDay(bifService.setrDay(list.get(i)));
			// 반납날짜
			list.get(i).setReturnDate(bifService.setReturnDate(list.get(i)));
		}
		// 대출 중인 도서 수
		int rentB = bifDAO.cntRent(id);
		int returnB = bifDAO.cntReturn(id);
		int books = rentB - returnB;
		// 데이터 담아 보내기
		mv.addObject("LIST", list);
		mv.addObject("BOOK", books);
		mv.setViewName("BookInfo/Loans");
		return mv;
	}
	
	// 예약 내역 페이지로 이동
	@RequestMapping("/goBookCh.bo")
	public ModelAndView goBookCh(ModelAndView mv, HttpSession session) {
		// 아이디 가져오기
		String id = (String)session.getAttribute("SID");
		// 예약한 도서 목록
		List<BookReserveVO> list = bifDAO.selReserveList(id);
		// 해당 도서의 대기 번호
		for(int i = 0; i < list.size(); i++) {
			List<String> blist = bifDAO.selReserveId(list.get(i).getBookName());
			int ord = 1;
			for(int j = 0; j < blist.size(); j++) {
				if(blist.get(j).equals(id)) {
					list.get(i).setOrder(ord);
				}
				ord++;
			}
		}
		
		// 대출 중인 도서 수
		int rentB = bifDAO.cntRent(id);
		int returnB = bifDAO.cntReturn(id);
		int books = rentB - returnB;
		// 데이터 담아 보내기
		mv.addObject("LIST", list);
		mv.addObject("BOOK", books);
		mv.setViewName("BookInfo/bookCh");
		return mv;
	}
	
	// 예약 취소
	@RequestMapping("/cancelReserveBook.bo")
	public ModelAndView cancelReserveBook(ModelAndView mv, HttpServletRequest req, RedirectView rv) {
		String num = req.getParameter("rno");
		int rno = Integer.parseInt(num);
		int cnt = bifDAO.cancelReserveBook(rno);
		if(cnt == 1) {
			rv.setUrl("goBookCh.bo");
			mv.setView(rv);
		} else {
			mv.setViewName("bookCh");
		}
		return mv;
	}
}
