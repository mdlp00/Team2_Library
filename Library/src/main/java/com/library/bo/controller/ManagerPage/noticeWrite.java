package com.library.bo.controller.ManagerPage;

/*
 * 
 * @author	안다예
 * @since	2019년 07월 023일
 * @version	1.0
 * @see
 * 			유지관리 이력
 * 			2019/07/23		Notice 클래스 제작		작성자 : 안다예
 *
 */


import javax.servlet.http.HttpServletRequest;   

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

@Controller
@RequestMapping("/ManagerPage")
public class noticeWrite {
	//공지사항 글 작성
		@RequestMapping("/noticeWrite.bo")
			public ModelAndView nWrite(ModelAndView mv, HttpServletRequest session, RedirectView rv ) {
				String view = "ManagerPage/noticeWrite";
				
				//데이터받기
				String name = (String) session.getAttribute("NAME");
				if(name == null || name.length() ==0) {
					view = "MemberInfo/login";
					rv.setUrl(view);
					mv.setView(rv);
				} else {
					mv.setViewName(view);
				}
				mv.setViewName(view);
				return mv;
			}
		}
