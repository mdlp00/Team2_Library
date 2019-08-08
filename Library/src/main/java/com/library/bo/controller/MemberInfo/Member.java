package com.library.bo.controller.MemberInfo;
/**
 * 
 * @author	김환진
 * @since	2019.07.28
 * @version	1.0
 * @see
 * 			변경 이력 관리
 * 			2019.07.28		Member 클래스 제작			작성자 : 김환진
 * 			2019.07.28		login 함수 제작				작성자 : 김환진
 * 			2019.07.28		join 함수 제작				작성자 : 김환진
 * 			2019.07.28		loginProc 함수 제작			작성자 : 김환진
 * 			2019.07.28		logoutProc 함수 제작		작성자 : 김환진
 * 			2019.07.28		joinProc 함수 제작			작성자 : 김환진
 * 			2019.07.28		idCheck 함수 제작			작성자 : 김환진
 * 			2019.07.28		mypage 함수 제작			작성자 : 김환진
 * 			2019.07.28		mypageEdit 함수 제작		작성자 : 김환진
 * 			2019.07.28		upmy 함수 제작				작성자 : 김환진
 * 			2019.08.07		goSRR 함수 제작				작성자 : 강찬규
 * 			2019.08.07		cancelSRR 함수 제작			작성자 : 강찬규
 */
import java.io.*;
import java.util.*;

import javax.servlet.http.*;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.*;
import org.springframework.web.servlet.view.*;

import com.library.bo.dao.MemberInfo.*;
import com.library.bo.dao.StudyRoom.*;
import com.library.bo.vo.MemberInfo.*;
import com.library.bo.vo.StudyRoom.*;

@Controller
@RequestMapping("/MemberInfo")
public class Member {
	@Autowired
	MemberDAO mDAO;
	
	@Autowired
	StudyRoomDAO studyDAO;
	
	// 로그인 페이지 열기
	@RequestMapping("/login.bo")
	public ModelAndView login(ModelAndView mv, HttpServletRequest req) {
		String view ="MemberInfo/login";
		mv.setViewName(view);
		return mv;
	}
	// 로그인 처리하기
	@RequestMapping("/loginProc.bo")
	public ModelAndView loginProc(HttpSession session, RedirectView rv, ModelAndView mv, MemberVO mVO) {
		mv.addObject("DATA", mVO);
		int cnt = mDAO.getLogin(mVO);
		if (cnt == 1) {
			session.setAttribute("SID", mVO.getMid());
			rv.setUrl("../");
		} else {
			rv.setUrl("join.bo");
		}
		mv.setView(rv);
		return mv;
	}
	// 로그아웃 처리하기
	@RequestMapping("/logoutProc.bo")
	public ModelAndView logoutProc(HttpSession session, ModelAndView mv) {
		session.removeAttribute("SID");
		mv.setViewName("redirect:../");
		return mv;
	}
	// 회원가입 페이지 열기
	@RequestMapping("/join.bo")
	public ModelAndView join(HttpSession session, RedirectView rv, ModelAndView mv) {
		String mid = (String) session.getAttribute("SID");  
		if (mid == null || mid.length() == 0) {
			mv.setViewName("MemberInfo/join");
		} else {
			rv.setUrl("../");
			mv.setView(rv);
		}
		return mv;
	}
	// 회원가입 처리하기
	@RequestMapping("/joinProc.bo")
	public ModelAndView joinProc(ModelAndView mv, MemberVO mVO, RedirectView rv, HttpServletRequest req) {	
		int cnt = mDAO.insertMember(mVO);
		if(cnt == 1) {
			rv.setUrl("login.bo");
		} else {
			rv.setUrl("join.bo");
		}		
		mv.setView(rv);
		return mv;
	}
	// 아이디 체크하기
	 @RequestMapping(value="idCheck.bo", method= RequestMethod.POST, produces="application/json; charset=UTF-8")
	 @ResponseBody
	 public void idCheck(PrintWriter pw, MemberVO mVO, HttpServletRequest req, HttpServletResponse res) {
		 int cnt = 0; 
		 String mid = req.getParameter("id");
		 cnt = mDAO.getIdCount(mid);
		 pw.println("{");
		 pw.println("\"cnt\": " + cnt);
		 pw.println("}");
	 }
	 
	// 개인정보 페이지 열기
	@RequestMapping("/mypage.bo")
	public ModelAndView mypage(ModelAndView mv, MemberVO mVO, HttpSession session) {
		String sid = (String) session.getAttribute("SID");	
		mVO = mDAO.getMyProc(sid);
		mv.addObject("DATA", mVO);
		String view ="MemberInfo/mypage";
		mv.setViewName(view);
		return mv;
	}
	// 개인정보 수정 페이지 열기
	@RequestMapping("/mypageEdit.bo")
	public ModelAndView mypageEdit(ModelAndView mv, MemberVO mVO, HttpSession session) {
		String sid = (String) session.getAttribute("SID");	
		mVO = mDAO.getMyProc(sid);
		mv.addObject("DATA", mVO);
		String view ="MemberInfo/mypageEdit";
		mv.setViewName(view);
		return mv;
	}
	// 개인정보 수정하기
	@RequestMapping("/mypageProc.bo")
	public ModelAndView upMy(ModelAndView mv, MemberVO mVO, HttpSession session) {
		String view = "MemberInfo/mypage";
		String sid = (String) session.getAttribute("SID");
		mVO.setMid(sid);
		int cnt = mDAO.upMy(mVO);
		if (cnt == 0) {
			view = "redirect:mypageEdit.bo";
		}
		mVO = mDAO.getMyProc(sid);
		mv.addObject("DATA", mVO);
		mv.setViewName(view);
		return mv;
		
	}
	
	// 회원페이지에서 스터디룸 예약내역 불러오기
	@RequestMapping("/goSRR.bo")
	public ModelAndView goSRR(ModelAndView mv, HttpSession session) {
		String id = (String)session.getAttribute("SID");
		List<StudyRoomVO> list = null;
		try {
			list = studyDAO.selIdList(id);
		} catch(Exception e) {
			
		}
		mv.addObject("LIST", list);
		mv.setViewName("MemberInfo/StudyRoomReserve");
		return mv;
	}
	// 스터디룸 예약 취소하기
	@RequestMapping("/cancelSRR.bo")
	public ModelAndView cancelSRR(ModelAndView mv, HttpServletRequest req) {
		String rno = req.getParameter("rno");
		int roomNo = Integer.parseInt(rno);
		
		int cnt = studyDAO.cancelReserve(roomNo);
		if(cnt == 1) {
			mv.setViewName("redirect:goSRR.bo");
		} else {
			System.out.println("예약 취소 java 오류");
			mv.setViewName("MemberInfo/StudyRoomReserve");
		}
		return mv;
	}
}
