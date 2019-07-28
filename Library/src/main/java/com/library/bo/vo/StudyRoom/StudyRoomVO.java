package com.library.bo.vo.StudyRoom;
/**
 * 
 * @author	강찬규
 * @since	2019.07.23
 * @version	1.0
 * @see
 * 			변경 이력 관리
 * 			2019.07.24		StudyRoomVO 클래스 제작		작성자 : 강찬규
 */
import java.util.*;
public class StudyRoomVO {
	private int roomNo;			// 예약번호
	private int roomCode;		// 방번호
	private String rDate;		// 선택 날짜
	private String startTime;	// 시작 시간
	private String endTime;		// 종료 시간
	private String sDate;		// 선택 날짜 + ' ' + 시작 시간
	private String eDate;		// 선택 날짜 + ' ' + 종료 시간
	private List<StudyRoomVO> list;
	
	
	
	public int getRoomNo() {
		return roomNo;
	}
	public void setRoomNo(int roomNo) {
		this.roomNo = roomNo;
	}
	public int getRoomCode() {
		return roomCode;
	}
	public void setRoomCode(int roomCode) {
		this.roomCode = roomCode;
	}
	public String getrDate() {
		return rDate;
	}
	public void setrDate(String rDate) {
		this.rDate = rDate;
	}
	public String getStartTime() {
		return startTime;
	}
	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}
	public String getEndTime() {
		return endTime;
	}
	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}
	public String getsDate() {
		return sDate;
	}
	public void setsDate(String sDate) {
		this.sDate = sDate;
	}
	public void setsDate() {
		this.sDate = rDate + ' ' + startTime;
	}
	public String geteDate() {
		return eDate;
	}
	public void seteDate(String eDate) {
		this.eDate = eDate;
	}
	public void seteDate() {
		this.eDate = rDate + ' ' + endTime;
	}
	public List<StudyRoomVO> getList() {
		return list;
	}
	public void setList(List<StudyRoomVO> list) {
		this.list = list;
	}
	
}
