package com.library.bo.controller.Views;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Views {
	
	//책검색
	@RequestMapping("/BookSearch/search.bo")
	public ModelAndView BookSerarch(ModelAndView mv) {
		String view = "BookSearch/search.bo";
		return mv;
	}
	//이용시간 및 휴관일
	@RequestMapping("/LibraryInfo/closeDay.bo")
	public ModelAndView closeDay(ModelAndView mv) {
		String view = "LibraryInfo/closeDay.bo";
		return mv;
	}
	//시설이용안내
	@RequestMapping("/LibraryInfo/road.bo")
	public ModelAndView roda(ModelAndView mv) {
		String view = "LibraryInfo/road.bo";
		return mv;
	}
	//오시는길
	@RequestMapping("/LibraryInfo/roadFind")
	public ModelAndView roadFind(ModelAndView mv) {
		String view = "LibraryInfo/roadFind";
		return mv;
	}
}
