package com.library.bo.controller.StudyRoom;
/**
 * 
 * @author	강찬규
 * @since	2019.07.23
 * @version	1.0
 * @see
 * 			변경 이력 관리
 * 			2019.07.23		StudyRoom 클래스 제작		작성자 : 강찬규
 * 			2019.07.23		goStudy 함수 제작			작성자 : 강찬규
 * 			2019.07.23		goSmall 함수 제작			작성자 : 강찬규
 * 			2019.07.24		dateCheck 함수 제작			작성자 : 강찬규
 * 			2019.07.25		reserveDate 함수 제작		작성자 : 강찬규
 * 			2019.07.26		goMain 함수 제작			작성자 : 강찬규
 * 			2019.07.23		goSmall 함수 수정			작성자 : 강찬규
 * 			2019.07.26		goMedium 함수 제작			작성자 : 강찬규
 * 			2019.07.26		goBig 함수 제작				작성자 : 강찬규
 */
import java.util.*;
import javax.servlet.http.*;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.*;

import com.library.bo.dao.StudyRoom.StudyRoomDAO;
import com.library.bo.service.StudyRoom.StudyRoomService;
import com.library.bo.vo.StudyRoom.StudyRoomVO;

@Controller
@RequestMapping("/StudyRoom")
public class StudyRoom {
	@Autowired
	StudyRoomDAO studyDAO;
	@Autowired
	StudyRoomService studyService;
	
	// 메인 페이지 불러오는 함수
	@RequestMapping("goMain.bo")
	public ModelAndView goMain(ModelAndView mv) {
		mv.setViewName("redirect:../");
		return mv;
	}
	
	// 스터디룸 페이지 불러오는 함수
	@RequestMapping("/goStudy.bo")
	public ModelAndView goStudy(ModelAndView mv) {
		mv.setViewName("StudyRoom/studyRoom");
		return mv;
	}
	// 작은방 페이지 불러오는 함수
	@RequestMapping("/goSmall.bo")
	public ModelAndView goSmall(ModelAndView mv) {
		ArrayList<String> list = studyService.getDayList();
		mv.addObject("DATE", list);
		mv.setViewName("StudyRoom/smallRoom");
		return mv;
	}
	// 중간방 페이지 불러오는 함수
	@RequestMapping("/goMedium.bo")
	public ModelAndView goMedium(ModelAndView mv) {
		ArrayList<String> list = studyService.getDayList();
		mv.addObject("DATE", list);
		mv.setViewName("StudyRoom/mediumRoom");
		return mv;
	}
	// 큰방 페이지 불러오는 함수
	@RequestMapping("/goBig.bo")
	public ModelAndView goBig(ModelAndView mv) {
		ArrayList<String> list = studyService.getDayList();
		mv.addObject("DATE", list);
		mv.setViewName("StudyRoom/bigRoom");
		return mv;
	}
		
	// 예약 처리 함수
	@RequestMapping("/reserveDate.bo")
	public ModelAndView reserveDate(ModelAndView mv, HttpServletRequest req, HttpSession session, StudyRoomVO vo) {
		// 넘겨진 데이터 받기
		String rC = req.getParameter("roomCode");
		String rDate = req.getParameter("startDate");
		String[] days = req.getParameterValues("startTime");
		String sid = (String)session.getAttribute("SID");
		
		int size = days.length;
		// 데이터 vo에 맞게 변환
		int en = Integer.parseInt(days[size-1]);
		en += 1;
		String startTime = days[0] + ":00:00";
		String endTime = (Integer.toString(en)) + ":00:00";
		int roomCode = Integer.parseInt(rC);
		// vo에 데이터 담기
		vo.setRoomCode(roomCode);
		vo.setrDate(rDate);
		vo.setStartTime(startTime);
		vo.setEndTime(endTime);
		vo.setSid(sid);
		vo.setsDate();
		vo.seteDate();
		
		// DB 작업 하기
		int cnt = studyDAO.reserveDate(vo);
		// 작업 결과 확인해서 뷰 부르기
		if(cnt == 1) {
			mv.setViewName("redirect:../MemberInfo/goSRR.bo");
		} else {
			if(roomCode == 1) {
				mv.setViewName("StudyRoom/smallRoom");
			} else if(roomCode == 2) {
				mv.setViewName("StudyRoom/mediumRoom");
			} else if(roomCode == 3) {
				mv.setViewName("StudyRoom/bigRoom");
			}
		}
		return mv;
	}
	
	// 날짜 눌렀을때 비동기처리 하는 함수
	@SuppressWarnings("unchecked")
	@RequestMapping("/dateCheck.bo")
	@ResponseBody
	public StudyRoomVO dateCheck(HttpServletRequest req, StudyRoomVO vo) {
		// 넘겨진 데이터 받기
		HashMap map = new HashMap();
		String roomCode = req.getParameter("roomCode");
		String date = req.getParameter("date");
		
		map.put("roomCode", roomCode);
		map.put("date", date);
		// DB 작업
		List<StudyRoomVO> list = studyDAO.selDate(map);
		vo.setList(list);
		
		return vo;
	}
}
