package com.library.bo.service.StudyRoom;
/**
 * 
 * @author	강찬규
 * @since	2019.07.26
 * @version	1.0
 * @see
 * 			변경 이력 관리
 * 			2019.07.26		StudyRoomService 클래스 제작			작성자 : 강찬규
 * 			2019.07.26		getDayList 함수 제작					작성자 : 강찬규
 */
import java.text.*;
import java.util.*;


public class StudyRoomService {
	
	// 스터디룸 열어줄때 날짜 정보 넣어주는 함수
	public ArrayList<String> getDayList() {
		ArrayList<String> list = new ArrayList<String>();
		
		// 오늘 날짜를 꺼냄
		SimpleDateFormat mSimpleDateFormat = new SimpleDateFormat("yyyy / MM / dd", Locale.KOREA);
		Date currentTime = new Date();
		String mTime = mSimpleDateFormat.format(currentTime);
		// 날짜를 년, 월, 일 로 구분
		String mYear = mTime.substring(0, 4);
		String mMonth = mTime.substring(7, 9);
		String mDay = mTime.substring(12);
		
		int year = Integer.parseInt(mYear);
		int month = Integer.parseInt(mMonth);
		int day = Integer.parseInt(mDay);
		
		int days[] = new int[7];
		String[] date = new String[7];
		
		// 날짜 + 일주일을 만들어서 list에 집어넣는다
		for(int i = 0; i < 7; i++) {
			days[i] = day + 1;
			if(month == 1||month == 3||month == 5||month == 7||month == 8||month == 10) {
				if(days[i] > 31) {
					month += 1;
					days[i] = 1;
				}
			} else if(month == 2) {
				if(days[i] > 28) {
					month += 1;
					days[i] = 1;
				}
			} else if(month == 12) {
				if(days[i] > 31) {
					year += 1;
					month = 1;
					days[i] = 1;
				}
			} else {
				if(days[i] > 30) {
					month += 1;
					days[i] = 1;
				}
			}
			day = days[i];
			
			
			// 날짜를 String으로 변화시키는 과정
			if(month < 10) {
				if(days[i] < 10) {
					date[i] = year+"/0"+month+"/0"+days[i];
				} else {
					date[i] = year+"/0"+month+"/"+days[i];
				}
			} else {
				if(days[i] < 10) {
					date[i] = year+"/"+month+"/0"+days[i];
				} else {
					date[i] = year+"/"+month+"/"+days[i];
				}
			}
			
			list.add(date[i]);
		}
		
		return list;
	}
}
