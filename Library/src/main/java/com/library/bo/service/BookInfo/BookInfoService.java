package com.library.bo.service.BookInfo;

import org.springframework.beans.factory.annotation.*;

import com.library.bo.dao.BookInfo.*;
import com.library.bo.vo.BookInfo.*;

/**
 * 
 * @author	강찬규
 * @since	2019.07.30
 * @version	1.0
 * @see
 * 			변경 이력 관리
 * 			2019.07.30		BookInfoService 클래스 제작			작성자 : 강찬규
 * 			2019.07.30		setrDay 함수 제작					작성자 : 강찬규
 * 			2019.07.30		setRetrunDate 함수 제작				작성자 : 강찬규
 */

public class BookInfoService {
	@Autowired
	BookInfoDAO bifDAO;
	
	// vo에 반납예정일자 set하는 함수
	public String setrDay(BookRentVO vo) {
		// 데이터 받기 & 정리
		int year = Integer.parseInt(vo.getRentDate().substring(0, 4));
		int month = Integer.parseInt(vo.getRentDate().substring(5, 7));
		int day = Integer.parseInt(vo.getRentDate().substring(8, 10));
		char extended = vo.getExtended();
		
		// 연장 여부 점검
		if(extended == 'Y') {
			if(month == 1 | month == 3 | month == 5 | month == 7 | month == 8 | month == 10) {
				if(day > 24) {
					month += 1;
					day += 7;
					day -= 31;
				} else {
					day += 7;
				}
			} else if(month == 4 | month == 6 | month == 9 | month == 11) {
				if(day > 23) {
					month += 1;
					day += 7;
					day -= 30;
				} else {
					day += 7;
				}
			} else if(month == 12) {
				if(day > 24) {
					year += 1;
					month = 1;
					day += 7;
					day -= 31;
				} else {
					day += 7;
				}
			} else {
				if(day > 21) {
					month += 1;
					day += 7;
					day -= 28;
				} else {
					day += 7;
				}
			}
		} else {
		}
		
		// 반납 예정 일자 계산
		if(month == 1 | month == 3 | month == 5 | month == 7 | month == 8 | month == 10) {
			if(day > 24) {
				month += 1;
				day += 7;
				day -= 31;
			} else {
				day += 7;
			}
		} else if(month == 4 | month == 6 | month == 9 | month == 11) {
			if(day > 23) {
				month += 1;
				day += 7;
				day -= 30;
			} else {
				day += 7;
			}
		} else if(month == 12) {
			if(day > 24) {
				year += 1;
				month = 1;
				day += 7;
				day -= 31;
			} else {
				day += 7;
			}
		} else {
			if(day > 21) {
				month += 1;
				day += 7;
				day -= 28;
			} else {
				day += 7;
			}
		}
		// 데이터 담기
		String rDay = "";
		if(month > 9) {
			if(day > 9) {
				rDay = year+"-"+month+"-"+day;
			} else {
				rDay = year+"-"+month+"-0"+day;
			}
		} else {
			if(day > 9) {
				rDay = year+"-0"+month+"-"+day;
			} else {
				rDay = year+"-0"+month+"-0"+day;
			}
		}
		// 반환하기
		return rDay;
	}
	
	// vo에 반납날짜 set하는 함수
	public String setReturnDate(BookRentVO vo) {
		// 데이터 받기
		int rno = vo.getRno();
		// 반납여부 체크하기
		int cnt = bifDAO.selReturnOk(rno);
		// 데이터 담기
		String returnDate = "-";
		if(cnt == 1) {
			returnDate = bifDAO.selReturnDate(rno);
		} else {}
		// 반환하기
		return returnDate;
	}
}
