package com.library.bo.controller.StudyRoom;
/**
 * 
 * @author	강찬규
 * @since	2019.07.23
 * @version	1.0
 * @see
 * 			변경 이력 관리
 * 			2019.07.23		Study 클래스 제작		작성자 : 강찬규
 * 			2019.07.23		goStudy 함수 제작		작성자 : 강찬규
 * 			2019.07.23		goSmall 함수 제작		작성자 : 강찬규
 * 			2019.07.24		dateCheck 함수 제작		작성자 : 강찬규
 */
import java.text.*;
import java.util.*;

import javax.servlet.http.*;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.*;

@Controller
@RequestMapping("/study")
public class StudyRoom {
	
	// 스터디룸 페이지 불러오는 함수
	@RequestMapping("/goStudy.bo")
	public ModelAndView goStudy(ModelAndView mv) {
		mv.setViewName("StudyRoom/studyRoom");
		return mv;
	}
}
