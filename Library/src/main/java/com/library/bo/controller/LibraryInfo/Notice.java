package com.library.bo.controller.LibraryInfo;



import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.library.bo.dao.LibraryInfo.NoticeDAO;

@Controller
@RequestMapping("/LibraryInfo")
public class Notice {

	@RequestMapping("/notice.bo")
	public ModelAndView notice(ModelAndView mv, HttpServletRequest req) {
			mv.setViewName("LibraryInfo/notice");
		return mv;
	}
	
}
