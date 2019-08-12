package com.library.bo.controller.ManagerPage;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.library.bo.dao.ManagerPage.ManagerDAO;
import com.library.bo.vo.LibraryInfo.NoticeVO;
import com.library.bo.vo.ManagerPage.ManagerReserveVO;
import com.library.bo.vo.ManagerPage.ManagerVO;

/**
 * 
 * @author	안다예
 * @since	2019.00.00
 * @version	1.0
 * @see
 * 			변경 이력 관리
 * 			2019.00.00		BookContoller 클래스 제작			작성자 : 안다예
 * 			2019.00.00		LoginForm 함수 제작					작성자 : 안다예
 * 			2019.00.00		LoginProc 함수 제작					작성자 : 안다예
 * 			2019.00.00		logoutProc 함수 제작				작성자 : 안다예
 * 			2019.00.00		nWrite 함수 제작					작성자 : 안다예
 * 			2019.00.00		noticeWrite 함수 제작				작성자 : 안다예
 * 			2019.00.00		reservation_list 함수 제작			작성자 : 양희준
 * 			2019.00.00		rentGo 함수 제작					작성자 : 양희준
 * 			2019.00.00		rentView 함수 제작					작성자 : 양희준
 * 			2019.00.00		returnBtn 함수 제작					작성자 : 양희준
 */

@Controller
@RequestMapping("/ManagerPage")
public class ManagerPage {
   
   @Autowired
   ManagerDAO manaDAO;
   
   @Autowired
   HttpServletRequest req;
   
   
   //매니저 로그인
   @RequestMapping("/loginForm.bo")
   public ModelAndView LoginForm(ModelAndView mv) {
	   mv.setViewName("ManagerPage/login");
	
	   return mv;
   }
   
   @RequestMapping("/loginProc.bo")
   public ModelAndView LoginProc(ModelAndView mv,HttpSession session, RedirectView rv, ManagerVO manaVO) {
	   
	   String id = manaVO.getMnid();
	   String pw = manaVO.getMnpw();
	   System.out.println("********* " + id);
	   System.out.println("********* " + pw);
	   
	   mv.addObject("DATA", manaVO);
	   int cnt = manaDAO.Manalogin(manaVO);
	   System.out.println(cnt);
	   
	   if(cnt == 1) {
			session.setAttribute("SID", manaVO.getMnid());
			// 로그인이 성공했으면 뷰를 리다이렉트 시켜줘야 한다. (<== 요청을 유지하면 곤란하니까...)
			rv.setUrl("../");
		} else {
			// 이 경우는 다시 로그인 과정을 거쳐야 하므로 다시 로그인 폼으로 가야 한다.
			rv.setUrl("login.bo");
		}

		// 뷰 부르고
		// mv.setViewName("member/loginResult"); // 컨트롤러가 부르를 일반 뷰를 부를 사용하는 메소드
		mv.setView(rv); // setView() ==> 리다이렉트 뷰와 같은 특수뷰를 호출할 경우 사용하는 함수
		return mv;
	}

			
   //로그아웃처리
   @RequestMapping("logoutProc.bo")
   public ModelAndView logourProc(HttpSession session, RedirectView rv, ModelAndView mv) {
	   //아이디지움
	   session.removeAttribute("SID");
	   rv.setUrl("../");
	   mv.setView(rv);
	   return mv;
   }
   
   
   	//공지사항 글 작성
   		@RequestMapping("/noticeWrite.bo")
   			public ModelAndView nWrite(ModelAndView mv, HttpServletRequest session, RedirectView rv ) {
   				String view = "ManagerPage/noticeWrite";
   				
   				mv.setViewName(view);
   				return mv;
   			}
   		
  
   // 공지글 작성 올리기
   @RequestMapping("/noticeWriteProc.bo")
   public ModelAndView noticeWrite(ModelAndView mv, HttpSession session, RedirectView rv, NoticeVO nVO) {
	   	String view = "../LibraryInfo/notice.bo";
	   	
	   	String title = nVO.getTitle();
	   	String body = nVO.getBody();
	   	
	   	int cnt = manaDAO.NoticeInsert(nVO);
	   	if(cnt ==1) {
	   		rv.setUrl("../LibraryInfo/notice.bo");
	   		mv.setView(rv);
	   	}else {
	   		rv.setUrl("../ManagerPage/notieWrite.bo");
	   		mv.setView(rv);
	   	}
	   	return mv;
   }
   
   // 사용자 예약 확인
   @RequestMapping("reservationList.bo")
   public ModelAndView reservation_list(ModelAndView mv, HttpSession session) {
	   String view = "Manager/managerReservationList";

		// 아이디 가져오기
		String id = (String)session.getAttribute("SID");
		// 예약한 도서 목록
		List<ManagerReserveVO> list = manaDAO.selReserveList();

		// 데이터 담아 보내기
		mv.addObject("LIST", list);
		mv.setViewName("Manager/managerReservationList");
		return mv;
   }
   
   // 대출 승인 버튼
   @RequestMapping("rentGo.bo")
   public ModelAndView rentGo(ModelAndView mv,RedirectView rv, ManagerReserveVO msvo) {

	   // 예약 인덱스 받기
	   int reserve_no = msvo.getReserve_no();
	   	   	   
	   // 대여 승인 동작
	   manaDAO.rentGo(reserve_no);
	   
	   // 대여 목록에 리스트 추가하는 동작
	   manaDAO.rentAdd(msvo);
	   
	   rv.setUrl("reservationList.bo");
	   mv.setView(rv);
	   return mv;
   }
   
   // 대출 리스트 조회
   @RequestMapping("rentView.bo")
   public ModelAndView rentView(ModelAndView mv) {
	   String view = "Manager/managerRentList";
	   
	   // 대여 현황 구하기
	   List<ManagerReserveVO> list = manaDAO.rentView();
	   mv.addObject("LIST",list);
	   
	   mv.setViewName(view);
	   return mv;
   }
   
   // 반납 버튼 누를시
   @RequestMapping("returnBtn.bo")
   public ModelAndView returnBtn(ModelAndView mv, RedirectView rv) {
	   String srent_no = req.getParameter("rent_no");
	   int rent_no = Integer.parseInt(srent_no);
	   
	   
	   System.out.println(rent_no);
	   // 반납 리스트 추가
	   manaDAO.returnListAdd(rent_no);
	   
	   // 대여 리스트에서 제거
	   manaDAO.returnBtn(rent_no);
	   
	   // 책 예약 활성화
	   //manaDAO
	   
	   rv.setUrl("rentView.bo");
	   mv.setView(rv);
	   
	   return mv;
   }
   
   
}