package com.library.bo.controller.MemberInfo;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.library.bo.dao.MemberInfo.MemberDAO;
import com.library.bo.vo.MemberInfo.MemberVO;

@Controller
@RequestMapping("/MemberInfo")
public class Member {
	@Autowired
	MemberDAO mDAO;
	
	@RequestMapping("/login.bo")
	public ModelAndView login(ModelAndView mv, HttpServletRequest req) {
		String view ="MemberInfo/login";
		mv.setViewName(view);
		return mv;
	}
	
	@RequestMapping("/loginProc.bo")
	public ModelAndView loginProc(HttpSession session, RedirectView rv, ModelAndView mv, MemberVO mVO) {
		;
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
	
	@RequestMapping("/logoutProc.bo")
	public ModelAndView logoutProc(HttpSession session, RedirectView rv, ModelAndView mv) {
		session.removeAttribute("SID");
		rv.setUrl("../");
		mv.setView(rv);
		return mv;
	}

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
	
	 @RequestMapping(value="idCheck.bo", method= RequestMethod.POST,
						produces="application/json; charset=UTF-8")
	 @ResponseBody
	 public void idCheck(PrintWriter pw, MemberVO mVO, HttpServletRequest req, HttpServletResponse res) {
		 	int cnt = 0; 
		 	String mid = req.getParameter("id"); 
		 	System.out.println(mid);
		 	cnt = mDAO.getIdCount(mid);
		 	System.out.println(cnt);
		 pw.println("{"); 
		 pw.println("\"cnt\": " + cnt); 
		 pw.println("}");
	  
		 return;
	 }
}
