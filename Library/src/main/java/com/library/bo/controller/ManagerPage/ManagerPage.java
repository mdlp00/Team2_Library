package com.library.bo.controller.ManagerPage;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.library.bo.dao.ManagerPage.ManagerDAO;
import com.library.bo.vo.ManagerPage.ManagerVO;



@Controller
@RequestMapping("/ManagerPage")
public class ManagerPage {
   
   @Autowired
   ManagerDAO manaDAO;
   
   
   //매니저 로그인
   @RequestMapping("/loginForm.bo")
   public ModelAndView LoginForm(ModelAndView mv) {
	   mv.setViewName("ManagerPage/login");
	
	   return mv;
   }
   @RequestMapping("/loginProc.bo")
	   public ModelAndView LoginProc(ModelAndView mv,HttpSession session, RedirectView rv, ManagerVO manaVO) {

	   mv.addObject("DATA", manaVO);
	   int cnt = manaDAO.Manalogin(manaVO);
	   System.out.println(cnt);
	   
	   if(cnt == 1) {
			session.setAttribute("SID", manaVO.getId());
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

   
   // 예약정보 리스트 뷰
	/*
	 * @RequestMapping("/managerReservationListView.bo") public ModelAndView
	 * managerReservationListView(ModelAndView mv) { String view =
	 * "Manager/managerReservationList";
	 * 
	 * ,,
	 * mv.setViewName(view); return mv; }
	 */
  
   			
   //로그아웃처리
   @RequestMapping("logoutProc.bo")
   public ModelAndView logourProc(HttpSession session, RedirectView rv, ModelAndView mv) {
	   //아이디지움
	   session.removeAttribute("SID");
	   rv.setUrl("../");
	   mv.setView(rv);
	   return mv;
   }
  
   
}