package com.library.bo.controller.LibraryInfo;



import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.*;

import com.library.bo.dao.LibraryInfo.*;

@Controller
@RequestMapping("/LibraryInfo")
public class Notice {    
	
	// 공지사항
	@RequestMapping("/notice.bo")
	public ModelAndView notice(ModelAndView mv, HttpServletRequest req) {
		mv.setViewName("LibraryInfo/notice");
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
	
}
